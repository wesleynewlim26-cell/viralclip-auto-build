package id.wealthstock.viralclip;

import android.Manifest;
import android.content.pm.PackageManager;
import android.media.MediaScannerConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.google.android.material.slider.RangeSlider;
import com.yausername.youtubedl_android.YoutubeDL;
import com.yausername.youtubedl_android.YoutubeDLRequest;
import com.yausername.youtubedl_android.YoutubeDLResponse;
import com.arthenica.ffmpegkit.FFmpegKit;
import com.arthenica.ffmpegkit.ReturnCode;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = "ViralClip";
    private static final int PERMISSION_REQUEST_CODE = 1001;

    private EditText etUrl;
    private Spinner spinnerAspectRatio;
    private Button btnProcess;
    private ProgressBar progressBar;
    private RangeSlider rangeSlider;
    private TextView tvTimeRange, tvStatus;
    private ExecutorService executor = Executors.newSingleThreadExecutor();
    private File cacheDir;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Log.d(TAG, "BUILD: ViralClip v2.0.0 - STABLE");

        cacheDir = new File(getCacheDir(), "viralclip");
        if (!cacheDir.exists()) cacheDir.mkdirs();

        try {
            YoutubeDL.getInstance().init(getApplication());
            Log.d(TAG, "[v2.0] YoutubeDL initialized");
        } catch (Exception e) {
            Log.e(TAG, "YoutubeDL init error", e);
        }

        etUrl = findViewById(R.id.etUrl);
        spinnerAspectRatio = findViewById(R.id.spinnerAspectRatio);
        btnProcess = findViewById(R.id.btnProcess);
        progressBar = findViewById(R.id.progressBar);
        rangeSlider = findViewById(R.id.rangeSlider);
        tvTimeRange = findViewById(R.id.tvTimeRange);
        tvStatus = findViewById(R.id.tvStatus);

        setupAspectRatioSpinner();
        setupRangeSlider();
        checkPermissions();

        btnProcess.setOnClickListener(v -> { if (checkInputs()) startProcess(); });
    }

    private void setupAspectRatioSpinner() {
        String[] ratios = {"9:16 TikTok", "16:9 YouTube", "1:1 Square", "3:4 Portrait"};
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, ratios);
        spinnerAspectRatio.setAdapter(adapter);
    }

    private void setupRangeSlider() {
        if (rangeSlider != null && tvTimeRange != null) {
            rangeSlider.addOnChangeListener((slider, value, fromUser) -> {
                List<Float> values = slider.getValues();
                int startSec = values.get(0).intValue();
                int endSec = values.get(1).intValue();
                tvTimeRange.setText("Durasi: " + formatTime(startSec) + " - " + formatTime(endSec));
            });
        }
    }

    private String formatTime(int sec) {
        return String.format(Locale.getDefault(), "%02d:%02d:%02d", sec / 3600, (sec % 3600) / 60, sec % 60);
    }

    private void checkPermissions() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_MEDIA_VIDEO) != PackageManager.PERMISSION_GRANTED) {
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.READ_MEDIA_VIDEO}, PERMISSION_REQUEST_CODE);
            }
        } else {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED ||
                ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE}, PERMISSION_REQUEST_CODE);
            }
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            if (!Environment.isExternalStorageManager()) {
                try { startActivity(new android.content.Intent(android.provider.Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION)); } catch (Exception ignored) {}
            }
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    private boolean checkInputs() {
        String url = etUrl.getText().toString().trim();
        if (url.isEmpty() || (!url.contains("youtube.com") && !url.contains("youtu.be"))) {
            etUrl.setError("Masukkan URL YouTube yang valid");
            return false;
        }
        return true;
    }

    private void startProcess() {
        if (rangeSlider == null) {
            Toast.makeText(this, "RangeSlider tidak ditemukan", Toast.LENGTH_SHORT).show();
            return;
        }

        List<Float> vals = rangeSlider.getValues();
        String startTime = formatTime(vals.get(0).intValue());
        String endTime = formatTime(vals.get(1).intValue());

        setUiProcessing(true);

        executor.execute(() -> {
            try {
                runOnUiThread(() -> updateProgress(10, "Mengunduh sumber (720p max - Anonymous Safe Mode)..."));
                File downloadedFile = downloadVideo(etUrl.getText().toString().trim());
                if (downloadedFile == null || !downloadedFile.exists()) throw new IOException("Gagal mengunduh video");
                runOnUiThread(() -> updateProgress(50, "Memproses & Meningkatkan ke 1080p..."));
                String outputPath = processVideo(downloadedFile, startTime, endTime);
                if (outputPath == null) throw new IOException("Gagal memproses video");
                runOnUiThread(() -> updateProgress(90, "Menyimpan ke Galeri..."));
                File inputCache = new File(getCacheDir(), "viralclip");
                deleteRecursive(inputCache);
                MediaScannerConnection.scanFile(MainActivity.this, new String[]{outputPath}, null, (path, uri) -> Log.d(TAG, "Scanned: " + path));
                runOnUiThread(() -> { updateProgress(100, "Selesai! Video 1080p tersimpan"); Toast.makeText(MainActivity.this, "Video 1080p selesai diproses!", Toast.LENGTH_LONG).show(); setUiProcessing(false); });
            } catch (Exception e) {
                Log.e(TAG, "Process error", e);
                runOnUiThread(() -> { Toast.makeText(MainActivity.this, "Error: " + e.getMessage(), Toast.LENGTH_LONG).show(); setUiProcessing(false); });
            }
        });
    }

    // RULE 2: Gunakan YoutubeDLRequest API (TIDAK ada ProcessBuilder)
    private File downloadVideo(String url) throws IOException {
        File outputDir = new File(getCacheDir(), "viralclip");
        if (!outputDir.exists()) outputDir.mkdirs();
        File outputFile = new File(outputDir, "source_video.mp4");

        String fmt = "bv*[height<=720]+ba/b";
        Log.d(TAG, "[v2.0] Downloading max 720p (Anonymous Safe Mode)");

        YoutubeDLRequest request = new YoutubeDLRequest(url);
        request.addOption("-f", fmt);
        request.addOption("--merge-output-format", "mp4");
        request.addOption("-o", outputFile.getAbsolutePath());
        request.addOption("--no-playlist");
        request.addOption("--no-warnings");
        request.addOption("--socket-timeout", "30");
        request.addOption("--retries", "3");

        File cookieFile = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "cookies.txt");
        if (cookieFile.exists() && cookieFile.length() > 0) {
            request.addOption("--cookies", cookieFile.getAbsolutePath());
            Log.d(TAG, "Using cookies: " + cookieFile.getAbsolutePath());
        } else {
            Log.w(TAG, "No cookies file found at: " + cookieFile.getAbsolutePath());
        }

        YoutubeDLResponse result = YoutubeDL.getInstance().execute(request);
        if (result.getExitCode() == 0) {
            if (outputFile.exists() && outputFile.length() > 0) {
                Log.d(TAG, "[v2.0] Download success (720p max): " + outputFile.getAbsolutePath());
                return outputFile;
            }
        }
        throw new IOException("yt-dlp failed with exit code: " + result.getExitCode());
    }

    // RULE 3: Gunakan FFmpegKit.executeAsync (TIDAK ada ProcessBuilder)
    private String processVideo(File inputFile, String startTime, String endTime) throws IOException {
        File outputDir;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            outputDir = new File(getExternalFilesDir(Environment.DIRECTORY_MOVIES), "Klip_Video");
        } else {
            outputDir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "Klip_Video");
        }
        if (!outputDir.exists()) outputDir.mkdirs();
        File outputFile = new File(outputDir, "Klip_" + System.currentTimeMillis() + ".mp4");
        String outputPath = outputFile.getAbsolutePath();

        Log.d(TAG, "[v2.0] Upscaling source to 1080p via Lanczos");

        String filterComplex = "scale=1080:1920:flags=lanczos,unsharp=5:5:0.5:5:5:0.0";

        String cmd = "-y -ss " + startTime + " -i " + inputFile.getAbsolutePath() +
            " -t " + endTime +
            " -vf \"" + filterComplex + "\"" +
            " -c:v libx264 -preset ultrafast -crf 23 -c:a aac " +
            outputFile.getAbsolutePath();

        Log.d(TAG, "[v2.0] Upscaling source to 1080p via Lanczos");

        FFmpegKit.executeAsync(cmd, session -> {
            ReturnCode rc = session.getReturnCode();
            if (ReturnCode.isSuccess(rc)) {
                Log.d(TAG, "FFmpeg success: " + outputFile.getAbsolutePath());
            } else {
                Log.e(TAG, "FFmpeg failed: " + rc);
            }
        });

        File out = new File(outputPath);
        if (out.exists() && out.length() > 0) {
            Log.d(TAG, "FFmpeg success: " + outputPath);
            return outputFile.getAbsolutePath();
        }
        return null;
    }

    private void updateProgress(int progress, String message) {
        progressBar.setProgress(progress);
        progressBar.setVisibility(View.VISIBLE);
        tvStatus.setText(message);
        btnProcess.setText(message);
    }

    private void setUiProcessing(boolean processing) {
        btnProcess.setEnabled(!processing);
        etUrl.setEnabled(!processing);
        spinnerAspectRatio.setEnabled(!processing);
        if (rangeSlider != null) rangeSlider.setEnabled(!processing);
        if (!processing) {
            btnProcess.setText("Mulai Ekstraksi v2.0");
            progressBar.setVisibility(View.GONE);
            progressBar.setProgress(0);
            tvStatus.setText("Siap");
        }
    }

    private void deleteRecursive(File file) {
        if (file.isDirectory()) {
            for (File child : file.listFiles()) deleteRecursive(child);
        }
        file.delete();
    }

    @Override
    protected void onDestroy() {
        FFmpegKit.cancel();
        if (executor != null) executor.shutdownNow();
        deleteRecursive(new File(getCacheDir(), "viralclip"));
        super.onDestroy();
    }
}