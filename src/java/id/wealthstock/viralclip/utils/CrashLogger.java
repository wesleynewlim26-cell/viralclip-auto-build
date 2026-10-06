package id.wealthstock.viralclip.utils;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

public class CrashLogger {
    public static void init(final Context context) {
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
            @Override
            public void uncaughtException(Thread thread, Throwable e) {
                try {
                    File file = new File(context.getFilesDir(), "crash.txt");
                    PrintWriter pw = new PrintWriter(new FileWriter(file, true));
                    pw.println("Thread: " + thread.getName());
                    pw.println(e.toString());
                    for (StackTraceElement el : e.getStackTrace()) {
                        pw.println("    at " + el.toString());
                    }
                    pw.println("---");
                    pw.flush();
                    pw.close();
                } catch (Exception ex) {
                    Log.e("CrashLogger", "Failed to write crash log", ex);
                }
            }
        });
    }
}
