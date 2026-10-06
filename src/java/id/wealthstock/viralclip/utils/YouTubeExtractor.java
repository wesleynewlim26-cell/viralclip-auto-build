package id.wealthstock.viralclip.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONArray;
import org.json.JSONObject;

public class YouTubeExtractor {
    /**
     * Extract a direct media URL from a YouTube video ID using the Innertube API.
     * Uses native HttpURLConnection and org.json for parsing.
     */
    public static String extract(String videoId) {
        HttpURLConnection conn = null;
        try {
            String urlStr = "https://www.youtube.com/youtubei/v1/player?key=YOUR_API_KEY&videoId=" + videoId;
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36");
            conn.setConnectTimeout(8000);
            conn.setReadTimeout(8000);
            int code = conn.getResponseCode();
            if (code != HttpURLConnection.HTTP_OK) return null;
            InputStream is = conn.getInputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            br.close();
            String body = sb.toString();
            JSONObject json = new JSONObject(body);
            if (!json.has("streamingData")) return null;
            JSONObject streaming = json.getJSONObject("streamingData");
            if (!streaming.has("formats")) return null;
            JSONArray formats = streaming.getJSONArray("formats");
            if (formats.length() == 0) return null;
            return formats.getJSONObject(0).getString("url");
        } catch (Exception e) {
            return null;
        } finally {
            if (conn != null) conn.disconnect();
        }
    }
}
