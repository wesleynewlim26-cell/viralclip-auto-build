# VIRALCLIP v1.0 - PUBLIC ONLY - BUILD INSTRUCTIONS

## 📱 DI TERMUX APP (DI HP ANDROID KAMU)

```bash
# 1. Masuk ke project
cd ~/viralclip_v2

# 2. Install dependency sistem (sekali saja)
pkg update && pkg install -y python ffmpeg
pip install yt-dlp==2026.10.21

# 3. Izinkan akses storage (WAJIB - tap "Allow" di dialog)
termux-setup-storage

# 4. BERSIHKAN & BUILD
rm -rf app/build build .gradle
./gradlew clean assembleDebug --no-daemon

# 5. SALIN APK KE DOWNLOAD
cp app/build/outputs/apk/debug/app-debug.apk /sdcard/Download/ViralClip-v1.0-PUBLIC.apk

# 6. INSTALL APK
# Buka file manager → Download → ViralClip-v1.0-PUBLIC.apk → Install
```

---

## ✅ FITUR v1.0 PUBLIC ONLY

| Fitur | Status |
|-------|--------|
| Download video publik 720p/1080p/4k | ✅ |
| Merge video + audio via FFmpeg | ✅ |
| Progress real-time (analyzing → downloading → merging) | ✅ |
| Trim duration (RangeSlider 0-100%) | ✅ |
| MediaScanner - auto appear di Gallery | ✅ |
| Error handling: Age-restricted, Private, Geo-blocked, Network, Live | ✅ |
| Dialog error yang jelas + retry untuk yang retryable | ✅ |
| Zero cookies, zero login, zero auth | ✅ |
| Lifecycle: onCreate→server start, onDestroy→cleanup | ✅ |

---

## ❌ TIDAK DIDUKUNG (BY DESIGN)

- Age-restricted (18+) video
- Private / Members-only video
- Geo-blocked video
- Live streaming (sedang berlangsung)
- Playlist / Channel (single URL only)

---

## 📂 OUTPUT LOCATION

```
/sdcard/Download/ViralClip/{job_id}.mp4
```

File otomatis muncul di Gallery/Google Photos berkat MediaScanner.

---

## 🔧 TROUBLESHOOTING

| Masalah | Solusi |
|---------|--------|
| Build gagal "grsecurity" | **Jalankan di Termux app HP, bukan di sini** |
| "Storage permission" | `termux-setup-storage` + tap Allow |
| "yt-dlp not found" | `pip install yt-dlp==2026.10.21` |
| Download stuck | Cek koneksi, tap Batal → coba lagi |
| Age-restricted error | **Normal** - video 18+ memang tidak didukung |

---

## 📦 UNTUK PLAY STORE (AAB)

```bash
# Generate keystore (sekali saja)
keytool -genkey -v -keystore viralclip-release.keystore \
    -alias viralclip -keyalg RSA -keysize 2048 -validity 10000

# Tambah ke gradle.properties:
# storeFile=viralclip-release.keystore
# storePassword=your_password
# keyAlias=viralclip
# keyPassword=your_password

# Build AAB
./gradlew bundleRelease

# Output: app/build/outputs/bundle/release/app-release.aab
# Upload ke Play Console
```

---

## ⚖️ LEGAL COMPLIANCE

- ✅ No user data collected
- ✅ No authentication required
- ✅ No cookies stored
- ✅ Only public video download
- ✅ Personal use only (disclaimer di UI)
- ✅ Data Safety Form: "No data collected"

---

## 🎯 SUCCESS METRICS TARGET

- Download success rate (public video): > 95%
- Crash-free users: > 99.5%
- Median download time (1080p): < 60s
- Age-restricted errors: ~40% of errors (expected, by design)

---

**VERSION:** 1.0-public-only  
**BUILD DATE:** 2026-10-30  
**MIN SDK:** 24 (Android 7.0)  
**TARGET SDK:** 34 (Android 14)
