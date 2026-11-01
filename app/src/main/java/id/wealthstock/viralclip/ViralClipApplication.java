package id.wealthstock.viralclip;

import android.app.Application;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;

public class ViralClipApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        if (!Python.isStarted()) {
            Python.start(new AndroidPlatform(this));
        }
    }
}
