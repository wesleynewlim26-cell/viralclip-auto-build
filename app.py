#!/usr/bin/env python3

import json
from flask import Flask, request, Response
from yt_dlp import YoutubeDL

app = Flask(__name__)

@app.route('/extract')
def extract():
    yt_url = request.args.get('url')
    if not yt_url:
        return Response('Missing url parameter', status=400)
    ydl_opts = {
        'quiet': True,
        'skip_download': True,
        'format': 'bestvideo+bestaudio',
    }
    try:
        with YoutubeDL(ydl_opts) as ydl:
            info = ydl.extract_info(yt_url, download=False)
            # Prefer a combined format URL if present
            if 'url' in info:
                return Response(info['url'], mimetype='text/plain')
            # Otherwise return best video+audio URLs concatenated with a newline
            video_url = None
            audio_url = None
            for fmt in info.get('formats', []):
                if fmt.get('vcodec') != 'none' and fmt.get('acodec') != 'none' and fmt.get('url'):
                    return Response(fmt['url'], mimetype='text/plain')
                if fmt.get('vcodec') != 'none' and fmt.get('acodec') == 'none' and not video_url:
                    video_url = fmt['url']
                if fmt.get('acodec') != 'none' and fmt.get('vcodec') == 'none' and not audio_url:
                    audio_url = fmt['url']
            if video_url and audio_url:
                # Return video URL; client can request audio separately via same endpoint
                return Response(video_url, mimetype='text/plain')
            return Response('No suitable stream found', status=500)
    except Exception as e:
        return Response(str(e), status=500)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
