#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$HOME/viralclip_src"
APP_PY="$REPO_ROOT/app.py"
NGROK_BIN="$HOME/ngrok"
NGROK_REGION="us"
FLASK_PORT=5000
MAX_WAIT=30

log() { echo "[$(date +%H:%M:%S)] $*"; }

log "[*] Menghentikan proses lama..."
pkill -f "python3 $APP_PY" 2>/dev/null || true
pkill -f "$NGROK_BIN" 2>/dev/null || true

log "[*] Menjalankan Flask server..."
nohup python3 "$APP_PY" >/dev/null 2>&1 &
FLASK_PID=$!
sleep 2

export NGROK_DISABLE_IPV6=1
log "[*] Menjalankan Ngrok tunnel..."
nohup "$NGROK_BIN" http "$FLASK_PORT" --region "$NGROK_REGION" >/dev/null 2>&1 &
NGROK_PID=$!

log "[*] Menunggu tunnel siap melalui API 4040..."
elapsed=0
PUBLIC_URL=""
while (( elapsed < MAX_WAIT )); do
    resp=$(curl -s http://127.0.0.1:4040/api/tunnels || true)
    PUBLIC_URL=$(echo "$resp" | jq -r '.tunnels[0].public_url' 2>/dev/null || echo "")
    if [[ "$PUBLIC_URL" == https* ]]; then
        break
    fi
    sleep 1
    ((elapsed++))
done

if [[ -z "$PUBLIC_URL" ]]; then
    log "⚠️ Gagal mendapatkan URL ngrok setelah $MAX_WAIT detik."
    exit 1
fi

log "✅ Ngrok public URL: $PUBLIC_URL"

SMALI_FILE="$REPO_ROOT/smali/id/wealthstock/viralclip/InnertubeResolver.smali"
if [[ -f "$SMALI_FILE" ]]; then
    sed -i "s|http://[^/]*:5000|$PUBLIC_URL|g" "$SMALI_FILE"
    sed -i "s|http://YOUR_SERVER_HOST:5000|$PUBLIC_URL|g" "$SMALI_FILE"
    log "Smali patched dengan URL ngrok."
fi

read -p "[?] Commit & push ke remote sekarang? (y/N) " ans
if [[ "$ans" =~ ^[Yy]$ ]]; then
    cd "$REPO_ROOT"
    git add app.py smali/id/wealthstock/viralclip/InnertubeResolver.smali smali/id/wealthstock/viralclip/ClipPipeline.smali
    git commit -m "Deploy Flask-proxy & ngrok $PUBLIC_URL"
    git push origin master
    log "Push selesai."
fi

if command -v termux-notification >/dev/null 2>&1; then
    termux-notification \
        --title "ViralClip backend" \
        --content "Ngrok URL: $PUBLIC_URL\nFlask PID=$FLASK_PID" \
        --button1 "Buka" \
        --action1 "android.intent.action.VIEW" \
        --uri "$PUBLIC_URL"
fi

log "Semua siap. Tekan Ctrl-C untuk menghentikan Flask + ngrok."
trap 'log "Stopping..."; kill $FLASK_PID $NGROK_PID 2>/dev/null; exit 0' SIGINT SIGTERM
while true; do sleep 60; done
