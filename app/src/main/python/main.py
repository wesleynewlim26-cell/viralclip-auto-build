import os
import json
import subprocess
import threading
import uuid
from pathlib import Path
from flask import Flask, request, jsonify
from yt_dlp import YoutubeDL
from werkzeug.serving import make_server

app = Flask(__name__)

DOWNLOAD_DIR = Path("/sdcard/Download/ViralClip")
DOWNLOAD_DIR.mkdir(parents=True, exist_ok=True)

# Quality formats
QUALITY_FORMATS = {
    "720p": "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/best[height<=720]",
    "1080p": "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080]",
    "4k": "bestvideo[height<=2160][ext=mp4]+bestaudio[ext=m4a]/best[height<=2160]",
}

jobs = {}
jobs_lock = threading.Lock()

def classify_error(stderr: str) -> dict:
    """Classify yt-dlp error to user-friendly message."""
    stderr_lower = stderr.lower()
    
    if "sign in to confirm your age" in stderr_lower or "age-restricted" in stderr_lower:
        return {
            "code": "AGE_RESTRICTED",
            "title": "Video Dibatasi Usia (18+)",
            "message": "Video ini dibatasi usia oleh YouTube. Aplikasi ini hanya mendownload video publik non-age-restricted untuk kepatuhan kebijakan dan keamanan akun Anda.",
            "retryable": False
        }
    if "private video" in stderr_lower or "video unavailable" in stderr_lower:
        return {
            "code": "PRIVATE_UNAVAILABLE",
            "title": "Video Privat/Tidak Tersedia",
            "message": "Video ini privat, dihapus, atau tidak tersedia. Hanya video publik yang bisa diunduh.",
            "retryable": False
        }
    if "geo" in stderr_lower and "block" in stderr_lower:
        return {
            "code": "GEO_BLOCKED",
            "title": "Diblokir di Negara Anda",
            "message": "Video ini tidak tersedia di wilayah Anda. Coba gunakan VPN atau pilih video lain.",
            "retryable": False
        }
    if "requested format not available" in stderr_lower or "format not available" in stderr_lower:
        return {
            "code": "FORMAT_UNAVAILABLE",
            "title": "Kualitas Tidak Tersedia",
            "message": "Kualitas yang dipilih tidak tersedia untuk video ini. Aplikasi akan mencoba kualitas lebih rendah secara otomatis.",
            "retryable": True
        }
    if "timeout" in stderr_lower or "connection" in stderr_lower or "network" in stderr_lower:
        return {
            "code": "NETWORK_ERROR",
            "title": "Koneksi Bermasalah",
            "message": "Gagal terhubung ke YouTube. Periksa koneksi internet dan coba lagi.",
            "retryable": True
        }
    if "live" in stderr_lower and "stream" in stderr_lower:
        return {
            "code": "LIVE_STREAM",
            "title": "Live Streaming Tidak Didukung",
            "message": "Live streaming sedang berlangsung tidak bisa diunduh. Tunggu hingga selesai dan jadi replay.",
            "retryable": False
        }
    
    return {
        "code": "UNKNOWN_ERROR",
        "title": "Gagal Mengunduh",
        "message": f"Terjadi kesalahan: {stderr[:200]}",
        "retryable": True
    }

def run_download(job_id: str, url: str, quality: str):
    """Run yt-dlp download with progress tracking."""
    fmt = QUALITY_FORMATS.get(quality, QUALITY_FORMATS["1080p"])
    output_path = DOWNLOAD_DIR / f"{job_id}.mp4"
    
    with jobs_lock:
        jobs[job_id]["status"] = "analyzing"
        jobs[job_id]["progress"] = 0.0
    
    # yt-dlp options - NO COOKIES, anonymous mode
    ydl_opts = {
        'format': fmt,
        'merge_output_format': 'mp4',
        'outtmpl': str(output_path),
        'quiet': True,
        'no_warnings': True,
        'nocheckcertificate': True,
        'cookiefile': None,  # NO COOKIES
        'extractor_args': {
            'youtube': {
                'player_client': ['mweb', 'ios', 'web'],  # Fallback chain
                'skip': ['hls', 'dash']  # Avoid problematic formats
            }
        },
        'progress_hooks': [lambda d: update_progress(job_id, d)],
        'retries': 3,
        'fragment_retries': 3,
        'skip_unavailable_fragments': True,
    }
    
    try:
        with jobs_lock:
            jobs[job_id]["status"] = "downloading"
        
        with YoutubeDL(ydl_opts) as ydl:
            ydl.download([url])
        
        # Trigger MediaScanner so file appears in Gallery
        trigger_media_scan(str(output_path))
        
        with jobs_lock:
            jobs[job_id]["status"] = "done"
            jobs[job_id]["progress"] = 100.0
            jobs[job_id]["output_path"] = str(output_path)
            jobs[job_id]["filename"] = output_path.name
        
    except Exception as e:
        error_info = classify_error(str(e))
        with jobs_lock:
            jobs[job_id]["status"] = "failed"
            jobs[job_id]["error"] = error_info

def update_progress(job_id: str, d: dict):
    """Update download progress from yt-dlp hook."""
    if d['status'] == 'downloading':
        try:
            pct_str = d.get('_percent_str', '0%').strip().replace('%', '')
            pct = float(pct_str)
            with jobs_lock:
                jobs[job_id]["progress"] = pct
                jobs[job_id]["status"] = "downloading"
        except:
            pass
    elif d['status'] == 'finished':
        with jobs_lock:
            jobs[job_id]["status"] = "merging"
            jobs[job_id]["progress"] = 95.0

def trigger_media_scan(file_path: str):
    """Trigger Android MediaScanner to index the file."""
    try:
        subprocess.run([
            "am", "broadcast",
            "-a", "android.intent.action.MEDIA_SCANNER_SCAN_FILE",
            "-d", f"file://{file_path}"
        ], capture_output=True, timeout=5)
    except:
        pass  # Best effort

@app.route('/health', methods=['GET'])
def health():
    return jsonify({
        'status': 'ok',
        'version': '1.0-public-only',
        'storage_writable': os.access(DOWNLOAD_DIR, os.W_OK),
        'download_dir': str(DOWNLOAD_DIR),
        'cookies_required': False
    })

@app.route('/download', methods=['POST'])
def download_video():
    data = request.get_json() or {}
    url = data.get('url', '').strip()
    quality = data.get('quality', '1080p')
    
    if not url:
        return jsonify({'status': 'error', 'code': 'INVALID_URL', 'message': 'URL diperlukan'}), 400
    
    # Basic YouTube URL validation
    if 'youtube.com' not in url and 'youtu.be' not in url:
        return jsonify({'status': 'error', 'code': 'INVALID_URL', 'message': 'URL YouTube tidak valid'}), 400
    
    job_id = uuid.uuid4().hex[:8]
    
    with jobs_lock:
        jobs[job_id] = {
            "status": "queued",
            "url": url,
            "quality": quality,
            "progress": 0.0
        }
    
    thread = threading.Thread(target=run_download, args=(job_id, url, quality), daemon=True)
    thread.start()
    
    return jsonify({'status': 'success', 'job_id': job_id, 'message': 'Download dimulai'}), 200

@app.route('/job/<job_id>', methods=['GET'])
def job_status(job_id):
    with jobs_lock:
        job = jobs.get(job_id)
    if not job:
        return jsonify({'status': 'error', 'code': 'NOT_FOUND', 'message': 'Job tidak ditemukan'}), 404
    return jsonify({'status': 'success', **job})

@app.route('/shutdown', methods=['POST'])
def shutdown():
    os._exit(0)
    return jsonify({'status': 'success'})

def start_flask_server():
    server = make_server('127.0.0.1', 5000, app, threaded=True)
    server.serve_forever()
