.class public Lid/wealthstock/viralclip/ClipPipeline;
.super Ljava/lang/Object;
.source "ClipPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/wealthstock/viralclip/ClipPipeline$Callback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lid/wealthstock/viralclip/ClipPipeline;->execute(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-static {p0}, Lid/wealthstock/viralclip/ClipPipeline;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static audioExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 413
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 414
    :goto_0
    const-string v0, "mp4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".m4a"

    if-nez v0, :cond_4

    const-string v0, "aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 417
    :cond_1
    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vorbis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 422
    :cond_2
    return-object v1

    .line 418
    :cond_3
    :goto_1
    const-string p0, ".webm"

    return-object p0

    .line 415
    :cond_4
    :goto_2
    return-object v1
.end method

.method private static audioSource(Ljava/lang/String;ILjava/lang/String;)Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;
    .locals 1

    .line 310
    new-instance v0, Lid/wealthstock/viralclip/ClipPipeline$3;

    invoke-direct {v0, p2, p0, p1}, Lid/wealthstock/viralclip/ClipPipeline$3;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static bytesOf(Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;)J
    .locals 4

    .line 250
    invoke-interface {p0}, Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;->get()Ljava/lang/String;

    move-result-object p0

    .line 251
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 252
    return-wide v0

    .line 255
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    const/16 v2, 0x3a98

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 259
    const-string v2, "HEAD"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 260
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 263
    nop

    .line 268
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    return-wide v0

    .line 265
    :cond_1
    :try_start_3
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    if-nez v2, :cond_2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 266
    return-wide v2

    .line 268
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 270
    :catch_0
    move-exception v1
    # Show error via Toast
    const/4 v2, 0x1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v3
    const-string v4, "Clip error: "
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v4
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    const/4 p0, 0x0
    return-wide v0
.end method

.method private static cacheDir(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 426
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 427
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v1, "cache"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private static describe(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 441
    if-nez p0, :cond_0

    .line 442
    const-string p0, "Gagal tanpa keterangan."

    return-object p0

    .line 444
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 446
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_2
    return-object v0
.end method

.method private static downloadProgress(Ljava/lang/String;Lid/wealthstock/viralclip/ClipPipeline$Callback;)Lid/wealthstock/viralclip/MediaDownloader$Progress;
    .locals 1

    .line 285
    new-instance v0, Lid/wealthstock/viralclip/ClipPipeline$2;

    invoke-direct {v0, p1, p0}, Lid/wealthstock/viralclip/ClipPipeline$2;-><init>(Lid/wealthstock/viralclip/ClipPipeline$Callback;Ljava/lang/String;)V

    return-object v0
.end method

.method private static execute(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "Mengambil metadata"

    invoke-interface {v3, v4}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onStage(Ljava/lang/String;)V

    .line 80
    nop

    .line 81
    const-string v4, "id,en"

    invoke-static {v0, v4, v2}, Lid/wealthstock/viralclip/InnertubeResolver;->resolve(Ljava/lang/String;Ljava/lang/String;I)Lid/wealthstock/viralclip/InnertubeResolver$Source;

    move-result-object v4

    .line 82
    if-eqz v4, :cond_f

    iget-object v5, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 86
    :cond_0
    invoke-interface {v3, v4}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onResolved(Lid/wealthstock/viralclip/InnertubeResolver$Source;)V

    .line 87
    iget-object v5, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->title:Ljava/lang/String;

    invoke-interface {v3, v5}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 94
    iget-boolean v5, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->live:Z

    if-eqz v5, :cond_1

    .line 95
    const-string v0, "Video ini adalah live streaming, dan live stream tidak bisa dipotong. Aplikasi butuh video yang sudah selesai. Pilih video biasa."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 98
    return-void

    .line 101
    :cond_1
    iget-wide v5, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->durationSeconds:D

    .line 102
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_2

    .line 103
    const-string v0, "Video terlalu pendek. Butuh minimal 50 detik."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 105
    return-void

    .line 107
    :cond_2
    iget-object v7, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioUrl:Ljava/lang/String;
    if-eqz v7, :audio_null
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    move-result v7
    if-eqz v7, :cond_3
    const-string v0, "Audio URL kosong"
    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V
    return-void
    :audio_null
    const-string v0, "Audio URL null"
    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V
    return-void




    .line 120
    :cond_3
    invoke-static {v0}, Lid/wealthstock/viralclip/InnertubeResolver;->parseVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 121
    nop

    .line 122
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    const-string v10, "media"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioCodec:Ljava/lang/String;

    .line 126
    invoke-static {v11}, Lid/wealthstock/viralclip/ClipPipeline;->audioExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ".mp4"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    iget-object v7, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioUrl:Ljava/lang/String;


    .line 130
    iget-object v8, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoUrl:Ljava/lang/String;
    if-eqz v8, :video_null
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :continue_video
    const-string v0, "Video URL kosong"
    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V
    return-void
    :video_null
    const-string v0, "Video URL null"
    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V
    return-void
    :continue_video



    .line 132
    iget-wide v11, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioBytes:J

    const-wide/16 v13, 0x0

    cmp-long v2, v11, v13

    if-lez v2, :cond_4

    iget-wide v11, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioBytes:J

    goto :goto_0

    :cond_4
    iget-wide v11, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->durationSeconds:D

    const-wide v15, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v11, v15

    double-to-long v11, v11

    .line 133
    :goto_0
    move-wide v15, v13

    iget-wide v13, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoBytes:J

    cmp-long v2, v13, v15

    if-lez v2, :cond_5

    iget-wide v13, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoBytes:J

    goto :goto_1

    :cond_5
    iget-wide v13, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->durationSeconds:D

    const-wide v15, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v13, v15

    double-to-long v13, v13

    .line 134
    :goto_1
    move-wide v15, v11

    add-long v11, v15, v13

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Akan mengunduh "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double v11, v11

    const-wide/high16 v17, 0x4130000000000000L    # 1048576.0

    div-double v11, v11, v17

    .line 136
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v11, "%.0f MB"

    invoke-static {v4, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (audio "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v17, 0x100000

    div-long v11, v15, v17

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " MB, video "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v13, v13, v17

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " MB). Di koneksi lambat ini bisa beberapa menit."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-interface {v3, v2}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 140
    const-string v2, "Mengunduh audio"

    invoke-interface {v3, v2}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onStage(Ljava/lang/String;)V

    .line 141
    nop

    .line 142
    const-string v2, "audio"

    invoke-static {v2, v3}, Lid/wealthstock/viralclip/ClipPipeline;->downloadProgress(Ljava/lang/String;Lid/wealthstock/viralclip/ClipPipeline$Callback;)Lid/wealthstock/viralclip/MediaDownloader$Progress;

    move-result-object v2

    .line 141
    invoke-static {v7, v9, v2}, Lid/wealthstock/viralclip/MediaDownloader;->fetch(Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;Ljava/io/File;Lid/wealthstock/viralclip/MediaDownloader$Progress;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 143
    const-string v0, "Gagal mengunduh audio setelah 5 percobaan. Umumnya YouTube menolak permintaan dari jaringan ini sementara. Tunggu sebentar, atau coba di WiFi."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 146
    return-void

    .line 148
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio diunduh: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v11, 0x400

    div-long/2addr v7, v11

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " KB"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 151
    const-string v2, "Menganalisis suara"

    invoke-interface {v3, v2}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onStage(Ljava/lang/String;)V

    .line 152
    nop

    .line 153
    invoke-static/range {p3 .. p3}, Lid/wealthstock/viralclip/ClipPipeline;->cacheDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-static {v9, v2}, Lid/wealthstock/viralclip/AudioMomentPicker;->analyse(Ljava/io/File;Ljava/io/File;)Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;

    move-result-object v2

    .line 155
    if-nez v2, :cond_7

    .line 160
    const-string v0, "Suara tidak bisa dibaca dari file yang diunduh. Ini kadang terjadi kalau YouTube membatasi unduhan. Tunggu satu menit lalu coba lagi."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 163
    return-void

    .line 165
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Suara dianalisis: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v2, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->totalSeconds:D

    double-to-int v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " detik"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 168
    const-string v4, "Mencari momen terbaik"

    invoke-interface {v3, v4}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onStage(Ljava/lang/String;)V

    .line 169
    new-instance v4, Lid/wealthstock/viralclip/AudioMomentPicker;

    invoke-direct {v4, v1}, Lid/wealthstock/viralclip/AudioMomentPicker;-><init>(I)V

    .line 170
    invoke-virtual {v4, v2}, Lid/wealthstock/viralclip/AudioMomentPicker;->pick(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;)Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 172
    const-string v0, "Tidak ada momen yang cocok. Video ini mungkin hanya musik tanpa bicara."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 174
    return-void

    .line 176
    :cond_8
    invoke-interface {v3, v2}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onPicked(Ljava/util/List;)V

    .line 178
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v1, :cond_9

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " dari "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " klip: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " detik hanya muat "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-static {v5, v6}, Lid/wealthstock/viralclip/AudioMomentPicker;->maxFeasible(D)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " klip 45 detik tanpa saling tumpang tindih."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-interface {v3, v1}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 186
    :cond_9
    const-string v1, "Mengunduh video"

    invoke-interface {v3, v1}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onStage(Ljava/lang/String;)V

    .line 187
    nop

    .line 188
    const-string v1, "video"

    invoke-static {v1, v3}, Lid/wealthstock/viralclip/ClipPipeline;->downloadProgress(Ljava/lang/String;Lid/wealthstock/viralclip/ClipPipeline$Callback;)Lid/wealthstock/viralclip/MediaDownloader$Progress;

    move-result-object v1

    .line 187
    invoke-static {v0, v10, v1}, Lid/wealthstock/viralclip/MediaDownloader;->fetch(Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;Ljava/io/File;Lid/wealthstock/viralclip/MediaDownloader$Progress;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 189
    const-string v0, "Gagal mengunduh video setelah 5 percobaan. Umumnya YouTube menolak permintaan dari jaringan ini sementara. Tunggu sebentar, atau coba di WiFi."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 192
    return-void

    .line 194
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video diunduh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    div-long/2addr v4, v11

    div-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB, mulai memotong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 201
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lid/wealthstock/viralclip/AudioMomentPicker$Window;

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Klip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onStage(Ljava/lang/String;)V

    .line 203
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v11, v5, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    .line 205
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-wide v11, v5, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->end:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v5}, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->duration()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-object v13, v5, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->reason:Ljava/lang/String;

    filled-new-array {v8, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v8

    .line 203
    const-string v11, "%.1f-%.1f  (%.1f detik)  %s"

    invoke-static {v6, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 207
    new-instance v6, Ljava/io/File;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "clip%02d.mp4"

    invoke-static {v8, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v11, p3

    invoke-direct {v6, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-static {v10, v9, v6, v5, v3}, Lid/wealthstock/viralclip/ClipPipeline;->render(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lid/wealthstock/viralclip/AudioMomentPicker$Window;Lid/wealthstock/viralclip/ClipPipeline$Callback;)Ljava/io/File;

    move-result-object v5

    .line 210
    if-nez v5, :cond_b

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "klip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gagal, lanjut ke sisanya."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 218
    goto :goto_3

    .line 220
    :cond_b
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_3
    goto/16 :goto_2

    .line 226
    :cond_c
    invoke-static {v9}, Lid/wealthstock/viralclip/MediaDownloader;->discard(Ljava/io/File;)V

    .line 227
    invoke-static {v10}, Lid/wealthstock/viralclip/MediaDownloader;->discard(Ljava/io/File;)V

    .line 229
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 230
    const-string v0, "Tidak ada klip yang berhasil dirender. Server YouTube menolak permintaan unduhan."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 232
    return-void

    .line 234
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " klip gagal, sisanya berhasil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " klip siap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-interface {v3, v1}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 238
    :cond_e
    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onClipReady(Ljava/util/List;)V

    .line 239
    return-void

    .line 83
    :cond_f
    :goto_4
    const-string v0, "Metadata tidak bisa diambil. Cek koneksi dan URL."

    invoke-interface {v3, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private static render(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lid/wealthstock/viralclip/AudioMomentPicker$Window;Lid/wealthstock/viralclip/ClipPipeline$Callback;)Ljava/io/File;
    .locals 10

    .line 363
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 364
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    return-object v1

    .line 372
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p3, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    iget-wide p0, p3, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->end:D

    iget-wide v0, p3, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    sub-double v7, p0, v0

    new-instance v9, Lid/wealthstock/viralclip/ClipPipeline$5;

    invoke-direct {v9, p4}, Lid/wealthstock/viralclip/ClipPipeline$5;-><init>(Lid/wealthstock/viralclip/ClipPipeline$Callback;)V

    .line 372
    move-object v4, p2

    invoke-static/range {v2 .. v9}, Lid/wealthstock/viralclip/ClipRenderer;->run(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;DDLid/wealthstock/viralclip/ClipRenderer$Listener;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 365
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static run(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V
    .locals 7

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 63
    new-instance v1, Lid/wealthstock/viralclip/ClipPipeline$1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lid/wealthstock/viralclip/ClipPipeline$1;-><init>(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method private static videoSource(Ljava/lang/String;ILjava/lang/String;)Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;
    .locals 1

    .line 332
    new-instance v0, Lid/wealthstock/viralclip/ClipPipeline$4;

    invoke-direct {v0, p2, p0, p1}, Lid/wealthstock/viralclip/ClipPipeline$4;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static write(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 433
    :try_start_0
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 434
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 437
    throw p0
.end method
