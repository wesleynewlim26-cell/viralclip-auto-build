#!/usr/bin/env bash
set -e

# 1. Buat folder workflow dan file build.yml
mkdir -p .github/workflows
cat > .github/workflows/build.yml <<'YAML'
name: Build & Sign APK
on:
  push:
    branches: [ main ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - name: Set up JDK 11
        uses: actions/setup-java@v4
        with:
          java-version: '11'
          distribution: 'temurin'
      - name: Install utilities
        run: sudo apt-get update && sudo -S -p '' apt-get install -y wget unzip openjdk-11-jdk
      - name: Download apktool
        run: |
          wget -q https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O apktool
          wget -q https://github.com/iBotPeaches/Apktool/releases/download/v2.11.1/apktool_2.11.1.jar -O apktool.jar
          chmod +x apktool
      - name: Download Android build‑tools (aapt2 & apksigner)
        run: |
          BUILD_TOOLS_ZIP="build-tools_r33.0.2-linux.zip"
          wget -q https://dl.google.com/android/repository/${BUILD_TOOLS_ZIP}
          unzip -q ${BUILD_TOOLS_ZIP} -d build-tools
          chmod +x build-tools/build-tools-33.0.2/aapt2
          chmod +x build-tools/build-tools-33.0.2/apksigner
      - name: Re‑build APK
        run: |
          ./apktool b . -o viralclip_fixed.apk
      - name: Create debug keystore
        run: |
          keytool -genkeypair -alias debug -keyalg RSA -keysize 2048 -validity 10000 \
            -keystore debug.keystore -storepass android -keypass android \
            -dname "CN=Android Debug,O=Android,C=US"
      - name: Sign APK
        run: |
          build-tools/build-tools-33.0.2/apksigner sign \
            --ks debug.keystore \
            --ks-key-alias debug \
            --ks-pass pass:android \
            --key-pass pass:android \
            --out viralclip_fixed_signed.apk \
            viralclip_fixed.apk
      - name: Upload artifact
        uses: actions/upload-artifact@v4
        with:
          name: viralclip_fixed_signed.apk
          path: viralclip_fixed_signed.apk
YAML

# 2. Inisialisasi repository git
if [ ! -d ".git" ]; then
  git init
fi

git add .
# Buat commit pertama (jika belum ada commit)
if ! git rev-parse HEAD >/dev/null 2>&1; then
  git commit -m "Auto deploy build script"
else
  # Jika sudah ada commit, buat commit baru untuk perubahan script
  git commit -m "Add deploy script and workflow"
fi

# 3. Buat repository di GitHub dan push
# Pastikan gh sudah login; asumsi sudah terautentikasi.
# Gunakan default branch main.

gh repo create viralclip-auto-build --public --source=. --remote=origin --push || true
