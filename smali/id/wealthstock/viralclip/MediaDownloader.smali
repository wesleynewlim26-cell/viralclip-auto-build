.class final Lid/wealthstock/viralclip/MediaDownloader;
.super Ljava/lang/Object;
.source "MediaDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/wealthstock/viralclip/MediaDownloader$Progress;,
        Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;,
        Lid/wealthstock/viralclip/MediaDownloader$Probe;,
        Lid/wealthstock/viralclip/MediaDownloader$RangeResult;,
        Lid/wealthstock/viralclip/MediaDownloader$Fetch;
    }
.end annotation


# static fields
.field private static final ATTEMPTS:I = 0x5

.field private static final BACKOFF_MS:J = 0x7d0L

.field private static final BUFFER:I = 0x40000

.field private static final MAX_BYTES:J = 0x100000000L

.field private static final MIN_PARALLEL_BYTES:J = 0x200000L

.field private static final PARALLEL_TIMEOUT_MS:J = 0x124f80L

.field private static final RANGE_ATTEMPTS:I = 0x3

.field private static final SEGMENTS:I = 0x1

.field private static final SILENT:Lid/wealthstock/viralclip/MediaDownloader$Progress;

.field private static final USER_AGENT:Ljava/lang/String; = "com.google.android.youtube/20.10.38 (Linux; U; Android 14) gzip"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lid/wealthstock/viralclip/MediaDownloader$1;

    invoke-direct {v0}, Lid/wealthstock/viralclip/MediaDownloader$1;-><init>()V

    sput-object v0, Lid/wealthstock/viralclip/MediaDownloader;->SILENT:Lid/wealthstock/viralclip/MediaDownloader$Progress;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/io/File;JJ)J
    .locals 0

    .line 41
    invoke-static/range {p0 .. p5}, Lid/wealthstock/viralclip/MediaDownloader;->fetchRangeWithRetries(Ljava/lang/String;Ljava/io/File;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Ljava/io/File;[Z)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lid/wealthstock/viralclip/MediaDownloader;->saveCompleted(Ljava/io/File;[Z)V

    return-void
.end method

.method static synthetic access$400(Lid/wealthstock/viralclip/MediaDownloader$Progress;JJILjava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 41
    invoke-static/range {p0 .. p6}, Lid/wealthstock/viralclip/MediaDownloader;->report(Lid/wealthstock/viralclip/MediaDownloader$Progress;JJILjava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method private static close(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 778
    if-eqz p0, :cond_0

    .line 780
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    goto :goto_0

    .line 781
    :catch_0
    move-exception p0

    .line 784
    :cond_0
    :goto_0
    return-void
.end method

.method static discard(Ljava/io/File;)V
    .locals 1

    .line 772
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 775
    :cond_0
    return-void
.end method

.method static fetch(Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;Ljava/io/File;)Z
    .locals 1

    .line 131
    sget-object v0, Lid/wealthstock/viralclip/MediaDownloader;->SILENT:Lid/wealthstock/viralclip/MediaDownloader$Progress;

    invoke-static {p0, p1, v0}, Lid/wealthstock/viralclip/MediaDownloader;->fetch(Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;Ljava/io/File;Lid/wealthstock/viralclip/MediaDownloader$Progress;)Z

    move-result p0

    return p0
.end method

.method static fetch(Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;Ljava/io/File;Lid/wealthstock/viralclip/MediaDownloader$Progress;)Z
    .locals 15

    .line 135
    move-object/from16 v1, p1

    const/4 v6, 0x0

    if-eqz p0, :cond_e

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 138
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    return v6

    .line 145
    :cond_1
    nop

    .line 147
    const/4 v7, 0x1

    move v13, v7

    move v14, v13

    :goto_0
    const/4 v0, 0x5

    if-gt v13, v0, :cond_d

    .line 148
    if-le v13, v7, :cond_2

    const-wide/16 v2, 0x7d0

    int-to-long v4, v13

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Lid/wealthstock/viralclip/MediaDownloader;->sleep(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    return v6

    .line 151
    :cond_2
    invoke-interface {p0}, Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;->get()Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    move-object/from16 v4, p2

    goto/16 :goto_2

    .line 163
    :cond_3
    invoke-static {v0}, Lid/wealthstock/viralclip/MediaDownloader;->probe(Ljava/lang/String;)Lid/wealthstock/viralclip/MediaDownloader$Probe;

    move-result-object v8

    .line 164
    iget-boolean v2, v8, Lid/wealthstock/viralclip/MediaDownloader$Probe;->reachable:Z

    if-nez v2, :cond_4

    .line 166
    const-wide/16 v9, -0x1

    const-wide/16 v11, 0x193

    move-object/from16 v8, p2

    invoke-interface/range {v8 .. v13}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V

    .line 167
    move-object/from16 v4, p2

    goto/16 :goto_2

    .line 169
    :cond_4
    iget-wide v2, v8, Lid/wealthstock/viralclip/MediaDownloader$Probe;->total:J

    .line 170
    const-wide v4, 0x100000000L

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 171
    return v6

    .line 173
    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v4, v2, v9

    if-lez v4, :cond_6

    xor-int/lit8 v4, v14, 0x1

    invoke-static {v1, v2, v3, v4}, Lid/wealthstock/viralclip/MediaDownloader;->isComplete(Ljava/io/File;JZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 174
    return v7

    .line 177
    :cond_6
    if-eqz v14, :cond_9

    const-wide/32 v4, 0x200000

    cmp-long v4, v2, v4

    if-ltz v4, :cond_9

    .line 178
    move-object/from16 v4, p2

    move v5, v13

    invoke-static/range {v0 .. v5}, Lid/wealthstock/viralclip/MediaDownloader;->fetchRanges(Ljava/lang/String;Ljava/io/File;JLid/wealthstock/viralclip/MediaDownloader$Progress;I)Lid/wealthstock/viralclip/MediaDownloader$RangeResult;

    move-result-object v2

    .line 179
    iget-boolean v3, v2, Lid/wealthstock/viralclip/MediaDownloader$RangeResult;->complete:Z

    if-eqz v3, :cond_7

    .line 180
    return v7

    .line 182
    :cond_7
    iget-boolean v3, v8, Lid/wealthstock/viralclip/MediaDownloader$Probe;->ranges:Z

    if-nez v3, :cond_8

    .line 185
    nop

    .line 186
    invoke-static {v1}, Lid/wealthstock/viralclip/MediaDownloader;->discard(Ljava/io/File;)V

    .line 187
    invoke-static {v1}, Lid/wealthstock/viralclip/MediaDownloader;->sidecar(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lid/wealthstock/viralclip/MediaDownloader;->discard(Ljava/io/File;)V

    move v14, v6

    goto :goto_1

    .line 188
    :cond_8
    iget-boolean v2, v2, Lid/wealthstock/viralclip/MediaDownloader$RangeResult;->anyProgress:Z

    if-eqz v2, :cond_9

    .line 195
    move-object/from16 v4, p2

    goto :goto_2

    .line 203
    :cond_9
    :goto_1
    move-object/from16 v4, p2

    invoke-static {v0, v1, v8, v4, v13}, Lid/wealthstock/viralclip/MediaDownloader;->resumeOnce(Ljava/lang/String;Ljava/io/File;Lid/wealthstock/viralclip/MediaDownloader$Probe;Lid/wealthstock/viralclip/MediaDownloader$Progress;I)Lid/wealthstock/viralclip/MediaDownloader$Fetch;

    move-result-object v0

    .line 204
    iget-boolean v2, v0, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->complete:Z

    if-eqz v2, :cond_a

    .line 205
    return v7

    .line 207
    :cond_a
    iget-wide v2, v0, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->bytes:J

    cmp-long v0, v2, v9

    if-gtz v0, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-nez v0, :cond_c

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 152
    :cond_b
    move-object/from16 v4, p2

    .line 147
    :cond_c
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 211
    :cond_d
    return v6

    .line 136
    :cond_e
    :goto_3
    return v6
.end method

.method static fetch(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 216
    new-instance v0, Lid/wealthstock/viralclip/MediaDownloader$2;

    invoke-direct {v0, p0}, Lid/wealthstock/viralclip/MediaDownloader$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lid/wealthstock/viralclip/MediaDownloader;->fetch(Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static logLine(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    :try_start_log
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/id.wealthstock.viralclip/files/vc.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sdcard/Android/data/id.wealthstock.viralclip/files/vc.log"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_log
    .catch Ljava/lang/Throwable; {:try_start_log .. :try_end_log} :catch_log
    :catch_log
    return-void
.end method

.method private static fetchRange(Ljava/lang/String;Ljava/io/File;JJ)J
    .locals 7

    .line 456
    nop

    .line 457
    nop

    .line 458
    nop

    .line 460
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 461
    const/16 v3, 0x4e20

    :try_start_1
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 462
    const v3, 0xea60

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 463
    const-string v3, "User-Agent"

    const-string v4, "com.google.android.youtube/20.10.38 (Linux; U; Android 14) gzip"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, v3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p4

    const-string v3, "VC-FETCHRANGE"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "FETCHRANGE"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, p4}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 468
    const/16 p5, 0xc8

    if-ne p4, p5, :cond_1

    .line 469
    nop

    .line 488
    nop

    .line 494
    invoke-static {v2}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 495
    if-eqz p0, :cond_0

    .line 496
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 469
    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0

    .line 471
    :cond_1
    const/16 p5, 0xce

    if-eq p4, p5, :cond_3

    .line 472
    nop

    .line 488
    nop

    .line 494
    invoke-static {v2}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 495
    if-eqz p0, :cond_2

    .line 496
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 472
    :cond_2
    return-wide v0

    .line 474
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 475
    :try_start_3
    new-instance p5, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {p5, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 476
    :try_start_4
    invoke-virtual {p5, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 477
    const/high16 p1, 0x40000

    new-array p1, p1, [B

    .line 479
    move-wide p2, v0

    .line 480
    :goto_0
    invoke-virtual {p4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    .line 481
    const/4 v3, 0x0

    invoke-virtual {p5, p1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    int-to-long v2, v2

    add-long/2addr p2, v2

    goto :goto_0

    .line 484
    :cond_4
    nop

    .line 488
    if-eqz p4, :cond_5

    .line 490
    :try_start_5
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 492
    goto :goto_1

    .line 491
    :catch_0
    move-exception p1

    .line 494
    :cond_5
    :goto_1
    invoke-static {p5}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 495
    if-eqz p0, :cond_6

    .line 496
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 484
    :cond_6
    return-wide p2

    .line 488
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 485
    :catch_1
    move-exception p1

    goto :goto_3

    .line 488
    :catchall_1
    move-exception p1

    move-object p5, v2

    :goto_2
    move-object v2, p4

    goto :goto_4

    .line 485
    :catch_2
    move-exception p1

    move-object p5, v2

    :goto_3
    move-object v2, p4

    goto :goto_6

    .line 488
    :catchall_2
    move-exception p1

    move-object p5, v2

    goto :goto_4

    .line 485
    :catch_3
    move-exception p1

    move-object p5, v2

    goto :goto_6

    .line 488
    :catchall_3
    move-exception p1

    move-object p0, v2

    move-object p5, p0

    :goto_4
    if-eqz v2, :cond_7

    .line 490
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 492
    goto :goto_5

    .line 491
    :catch_4
    move-exception p2

    .line 494
    :cond_7
    :goto_5
    invoke-static {p5}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 495
    if-eqz p0, :cond_8

    .line 496
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 498
    :cond_8
    throw p1

    .line 485
    :catch_5
    move-exception p0

    move-object p0, v2

    move-object p5, p0

    .line 486
    :goto_6
    nop

    .line 488
    if-eqz v2, :cond_9

    .line 490
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 492
    goto :goto_7

    .line 491
    :catch_6
    move-exception p1

    .line 494
    :cond_9
    :goto_7
    invoke-static {p5}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 495
    if-eqz p0, :cond_a

    .line 496
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_a
    return-wide v0
.end method

.method private static fetchRangeWithRetries(Ljava/lang/String;Ljava/io/File;JJ)J
    .locals 12

    .line 429
    nop

    .line 430
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    move-wide v4, v0

    move v3, v2

    :goto_0
    const/4 v6, 0x3

    if-gt v3, v6, :cond_4

    .line 431
    if-le v3, v2, :cond_0

    const-wide/16 v6, 0x7d0

    int-to-long v8, v3

    mul-long/2addr v8, v6

    invoke-static {v8, v9}, Lid/wealthstock/viralclip/MediaDownloader;->sleep(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 432
    goto :goto_1

    .line 434
    :cond_0
    invoke-static/range {p0 .. p5}, Lid/wealthstock/viralclip/MediaDownloader;->fetchRange(Ljava/lang/String;Ljava/io/File;JJ)J

    move-result-wide v6

    .line 435
    sub-long v8, p4, p2

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    .line 436
    return-wide v6

    .line 438
    :cond_1
    cmp-long v8, v6, v0

    if-gez v8, :cond_2

    .line 440
    return-wide v6

    .line 442
    :cond_2
    cmp-long v8, v6, v4

    if-lez v8, :cond_3

    .line 443
    move-wide v4, v6

    .line 430
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    :cond_4
    :goto_1
    return-wide v4
.end method

.method private static fetchRanges(Ljava/lang/String;Ljava/io/File;JLid/wealthstock/viralclip/MediaDownloader$Progress;I)Lid/wealthstock/viralclip/MediaDownloader$RangeResult;
    .locals 26

    .line 330
    move-object/from16 v6, p1

    move-wide/from16 v12, p2

    new-instance v10, Lid/wealthstock/viralclip/MediaDownloader$RangeResult;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lid/wealthstock/viralclip/MediaDownloader$RangeResult;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V

    .line 331
    const-wide/32 v2, 0x400000

    div-long v2, v12, v2

    const-wide/16 v4, 0x2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 332
    int-to-long v2, v0

    div-long v2, v12, v2

    .line 342
    nop

    .line 344
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 345
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    cmp-long v1, v8, v12

    if-gez v1, :cond_0

    .line 346
    invoke-virtual {v7, v12, v13}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 351
    :cond_0
    nop

    .line 352
    invoke-static {v7}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 354
    invoke-static {v6, v12, v13, v0}, Lid/wealthstock/viralclip/MediaDownloader;->loadCompleted(Ljava/io/File;JI)[Z

    move-result-object v7

    .line 355
    new-instance v9, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v14, 0x0

    invoke-direct {v9, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 356
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 357
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 359
    const/16 v17, 0x0

    move-object/from16 v16, v8

    move/from16 v8, v17

    :goto_0
    const/4 v11, 0x1

    if-ge v8, v0, :cond_3

    .line 360
    aget-boolean v14, v7, v8

    if-eqz v14, :cond_1

    .line 361
    invoke-static {v8, v2, v3, v12, v13}, Lid/wealthstock/viralclip/MediaDownloader;->spanOf(IJJ)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 362
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 363
    move/from16 v22, v0

    move-object v15, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-object/from16 v0, v16

    goto :goto_2

    .line 365
    :cond_1
    nop

    .line 366
    int-to-long v14, v8

    mul-long/2addr v14, v2

    .line 367
    move-wide/from16 v18, v4

    add-int/lit8 v4, v0, -0x1

    if-ne v8, v4, :cond_2

    sub-long v4, v12, v18

    goto :goto_1

    :cond_2
    add-long v4, v14, v2

    sub-long v4, v4, v18

    .line 368
    :goto_1
    move/from16 v20, v0

    new-instance v0, Ljava/lang/Thread;

    move-object/from16 v21, v0

    new-instance v0, Lid/wealthstock/viralclip/MediaDownloader$3;

    move-object/from16 v11, p4

    move/from16 v22, v20

    move-object/from16 v23, v21

    move-wide/from16 v20, v18

    move-wide/from16 v18, v2

    move-wide/from16 v24, v4

    move-object/from16 v5, p0

    move-wide v3, v14

    move/from16 v14, p5

    move-object v15, v1

    move-wide/from16 v1, v24

    invoke-direct/range {v0 .. v16}, Lid/wealthstock/viralclip/MediaDownloader$3;-><init>(JJLjava/lang/String;Ljava/io/File;[ZILjava/util/concurrent/atomic/AtomicLong;Lid/wealthstock/viralclip/MediaDownloader$RangeResult;Lid/wealthstock/viralclip/MediaDownloader$Progress;JILjava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/CountDownLatch;)V

    move-object v1, v0

    move-object/from16 v0, v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vc-dl-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v23

    invoke-direct {v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 385
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 386
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 359
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p1

    move-wide/from16 v12, p2

    move-object/from16 v16, v0

    move-object v1, v15

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move/from16 v0, v22

    goto :goto_0

    .line 389
    :cond_3
    move/from16 v22, v0

    move-object v15, v1

    move-object/from16 v0, v16

    .line 391
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 392
    nop

    .line 393
    move/from16 v0, v17

    :goto_3
    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 394
    :try_start_3
    aget-boolean v2, v7, v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v2, :cond_4

    .line 395
    nop

    .line 396
    move/from16 v0, v17

    goto :goto_4

    .line 393
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v22, v1

    goto :goto_3

    .line 399
    :catch_0
    move-exception v0

    move v0, v11

    goto :goto_5

    .line 393
    :cond_5
    move v0, v11

    .line 401
    :goto_4
    goto :goto_6

    .line 399
    :catch_1
    move-exception v0

    move/from16 v0, v17

    .line 400
    :goto_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 402
    :goto_6
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    move-wide/from16 v4, p2

    move-object/from16 v1, p4

    move/from16 v6, p5

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Lid/wealthstock/viralclip/MediaDownloader;->report(Lid/wealthstock/viralclip/MediaDownloader$Progress;JJILjava/util/concurrent/atomic/AtomicLong;)V

    .line 407
    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    move/from16 v11, v17

    :goto_7
    iput-boolean v11, v10, Lid/wealthstock/viralclip/MediaDownloader$RangeResult;->complete:Z

    .line 408
    iget-boolean v0, v10, Lid/wealthstock/viralclip/MediaDownloader$RangeResult;->complete:Z

    if-eqz v0, :cond_7

    .line 411
    invoke-static/range {p1 .. p1}, Lid/wealthstock/viralclip/MediaDownloader;->sidecar(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lid/wealthstock/viralclip/MediaDownloader;->discard(Ljava/io/File;)V

    .line 413
    :cond_7
    return-object v10

    .line 348
    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_8

    :catch_3
    move-exception v0

    .line 349
    :goto_8
    invoke-static {v1}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 350
    return-object v10
.end method

.method private static isComplete(Ljava/io/File;JZ)Z
    .locals 4

    .line 642
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-eqz p1, :cond_0

    goto/16 :goto_a

    .line 645
    :cond_0
    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 646
    return p1

    .line 648
    :cond_1
    invoke-static {p0}, Lid/wealthstock/viralclip/MediaDownloader;->sidecar(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 649
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_2

    .line 650
    return v1

    .line 652
    :cond_2
    nop

    .line 654
    const/4 p2, 0x0

    :try_start_0
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    invoke-direct {v0, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 656
    :try_start_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 657
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_4

    .line 663
    :cond_3
    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_6

    aget-object v2, p0, v0

    .line 664
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 666
    goto :goto_2

    .line 668
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    if-gez v2, :cond_5

    .line 670
    nop

    .line 677
    nop

    .line 679
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 681
    goto :goto_1

    .line 680
    :catch_0
    move-exception p0

    .line 670
    :goto_1
    return v1

    .line 663
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_6
    nop

    .line 677
    nop

    .line 679
    :try_start_3
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 681
    goto :goto_3

    .line 680
    :catch_1
    move-exception p0

    .line 673
    :goto_3
    return p1

    .line 658
    :cond_7
    :goto_4
    nop

    .line 677
    nop

    .line 679
    :try_start_4
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 681
    goto :goto_5

    .line 680
    :catch_2
    move-exception p0

    .line 658
    :goto_5
    return v1

    .line 677
    :catchall_0
    move-exception p0

    move-object p2, p3

    goto :goto_6

    .line 674
    :catch_3
    move-exception p0

    move-object p2, p3

    goto :goto_8

    .line 677
    :catchall_1
    move-exception p0

    :goto_6
    if-eqz p2, :cond_8

    .line 679
    :try_start_5
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 681
    goto :goto_7

    .line 680
    :catch_4
    move-exception p1

    .line 683
    :cond_8
    :goto_7
    throw p0

    .line 674
    :catch_5
    move-exception p0

    .line 675
    :goto_8
    nop

    .line 677
    if-eqz p2, :cond_9

    .line 679
    :try_start_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 681
    goto :goto_9

    .line 680
    :catch_6
    move-exception p0

    .line 675
    :cond_9
    :goto_9
    return v1

    .line 643
    :cond_a
    :goto_a
    return v1
.end method

.method private static loadCompleted(Ljava/io/File;JI)[Z
    .locals 4

    .line 694
    new-array v0, p3, [Z

    .line 695
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long p1, v1, p1

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 698
    :cond_0
    invoke-static {p0}, Lid/wealthstock/viralclip/MediaDownloader;->sidecar(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 699
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_1

    .line 700
    return-object v0

    .line 702
    :cond_1
    nop

    .line 704
    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 706
    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 707
    if-eqz p0, :cond_3

    .line 708
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    .line 709
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 710
    if-ltz v2, :cond_2

    if-ge v2, p3, :cond_2

    .line 711
    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :cond_3
    nop

    .line 720
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 722
    :goto_1
    goto :goto_2

    .line 721
    :catch_0
    move-exception p0

    goto :goto_1

    .line 725
    :goto_2
    return-object v0

    .line 718
    :catchall_0
    move-exception p0

    move-object p1, p2

    goto :goto_5

    .line 715
    :catch_1
    move-exception p0

    move-object p1, p2

    goto :goto_3

    .line 718
    :catchall_1
    move-exception p0

    goto :goto_5

    .line 715
    :catch_2
    move-exception p0

    .line 716
    :goto_3
    :try_start_3
    new-array p0, p3, [Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 718
    if-eqz p1, :cond_4

    .line 720
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 722
    goto :goto_4

    .line 721
    :catch_3
    move-exception p1

    .line 716
    :cond_4
    :goto_4
    return-object p0

    .line 718
    :goto_5
    if-eqz p1, :cond_5

    .line 720
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 722
    goto :goto_6

    .line 721
    :catch_4
    move-exception p1

    .line 724
    :cond_5
    :goto_6
    throw p0

    .line 696
    :cond_6
    :goto_7
    return-object v0
.end method

.method private static parseLong(Ljava/lang/String;)J
    .locals 6

    .line 307
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0

    .line 309
    :catch_0
    move-exception p0

    .line 310
    return-wide v0
.end method

.method private static probe(Ljava/lang/String;)Lid/wealthstock/viralclip/MediaDownloader$Probe;
    .locals 9

    .line 244
    nop

    .line 246
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const/16 v2, 0x3a98

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 248
    const/16 v2, 0x4e20

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 249
    const-string v2, "User-Agent"

    const-string v3, "com.google.android.youtube/20.10.38 (Linux; U; Android 14) gzip"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "Accept"

    const-string v3, "*/*"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "Range"

    const-string v3, "bytes=0-1"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v7, "VC-PROBE"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "PROBE"

    invoke-static {v8, v5, v2}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    const/16 v3, 0xc8

    const/16 v4, 0xce

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    .line 254
    new-instance v2, Lid/wealthstock/viralclip/MediaDownloader$Probe;

    invoke-direct {v2, v1}, Lid/wealthstock/viralclip/MediaDownloader$Probe;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V

    .line 255
    iput-boolean v0, v2, Lid/wealthstock/viralclip/MediaDownloader$Probe;->reachable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    nop

    .line 299
    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_0
    return-object v2

    .line 258
    :cond_1
    :try_start_2
    new-instance v5, Lid/wealthstock/viralclip/MediaDownloader$Probe;

    invoke-direct {v5, v1}, Lid/wealthstock/viralclip/MediaDownloader$Probe;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V

    .line 259
    const/4 v6, 0x1

    iput-boolean v6, v5, Lid/wealthstock/viralclip/MediaDownloader$Probe;->reachable:Z

    .line 260
    if-ne v2, v4, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    iput-boolean v7, v5, Lid/wealthstock/viralclip/MediaDownloader$Probe;->ranges:Z

    .line 261
    if-ne v2, v4, :cond_3

    .line 263
    const-string v4, "Content-Range"

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    if-eqz v4, :cond_3

    .line 265
    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 266
    if-ltz v7, :cond_3

    add-int/2addr v7, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v7, v6, :cond_3

    .line 267
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 268
    const-string v6, "*"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 269
    invoke-static {v4}, Lid/wealthstock/viralclip/MediaDownloader;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lid/wealthstock/viralclip/MediaDownloader$Probe;->total:J

    .line 274
    :cond_3
    if-ne v2, v3, :cond_4

    .line 278
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_4

    .line 280
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lid/wealthstock/viralclip/MediaDownloader;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v5, Lid/wealthstock/viralclip/MediaDownloader$Probe;->total:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    :cond_4
    nop

    .line 299
    if-eqz p0, :cond_5

    .line 300
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 293
    :cond_5
    return-object v5

    .line 294
    :catch_0
    move-exception v2

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 294
    :catch_1
    move-exception p0

    move-object p0, v1

    .line 295
    :goto_1
    :try_start_3
    new-instance v2, Lid/wealthstock/viralclip/MediaDownloader$Probe;

    invoke-direct {v2, v1}, Lid/wealthstock/viralclip/MediaDownloader$Probe;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V

    .line 296
    iput-boolean v0, v2, Lid/wealthstock/viralclip/MediaDownloader$Probe;->reachable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    nop

    .line 299
    if-eqz p0, :cond_6

    .line 300
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 297
    :cond_6
    return-object v2

    .line 299
    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_7

    .line 300
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    :cond_7
    throw v0
.end method

.method private static report(Lid/wealthstock/viralclip/MediaDownloader$Progress;JJILjava/util/concurrent/atomic/AtomicLong;)V
    .locals 6

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 757
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 758
    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 759
    return-void

    .line 761
    :cond_0
    invoke-virtual {p6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 762
    invoke-interface/range {p0 .. p5}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V

    .line 763
    return-void
.end method

.method private static resumeOnce(Ljava/lang/String;Ljava/io/File;Lid/wealthstock/viralclip/MediaDownloader$Probe;Lid/wealthstock/viralclip/MediaDownloader$Progress;I)Lid/wealthstock/viralclip/MediaDownloader$Fetch;
    .locals 28

    .line 526
    new-instance v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lid/wealthstock/viralclip/MediaDownloader$Fetch;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V

    .line 527
    nop

    .line 528
    nop

    .line 529
    nop

    .line 531
    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    :try_start_0
    iget-wide v5, v0, Lid/wealthstock/viralclip/MediaDownloader$Probe;->total:J

    .line 533
    new-instance v0, Ljava/net/URL;

    move-object/from16 v7, p0

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 534
    const/16 v0, 0x4e20

    :try_start_1
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 535
    const v0, 0xea60

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 536
    const-string v0, "User-Agent"

    const-string v8, "com.google.android.youtube/20.10.38 (Linux; U; Android 14) gzip"

    invoke-virtual {v7, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "Accept"

    const-string v8, "*/*"

    invoke-virtual {v7, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Range"

    const-string v8, "bytes=0-"

    invoke-virtual {v7, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v23, "VC-DOWNLOAD"

    move-object/from16 v24, p0

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "FETCH"

    move-object/from16 v15, p0

    invoke-static {v8, v15, v0}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 540
    const/16 v8, 0xc8

    if-eq v0, v8, :cond_2

    const/16 v9, 0xce

    if-eq v0, v9, :cond_2

    .line 541
    const-wide/16 v11, -0x1

    int-to-long v13, v0

    move-object/from16 v10, p3

    move/from16 v15, p4

    :try_start_2
    invoke-interface/range {v10 .. v15}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    iput-wide v5, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->bytes:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 543
    nop

    .line 605
    nop

    .line 611
    invoke-static {v2}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 612
    if-eqz v7, :cond_1

    .line 613
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 543
    :cond_1
    return-object v1

    .line 545
    :cond_2
    const-wide/16 v9, -0x1

    if-ne v0, v8, :cond_4

    .line 549
    :try_start_3
    const-string v0, "Content-Length"

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    if-nez v0, :cond_3

    move-wide v5, v9

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/wealthstock/viralclip/MediaDownloader;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 551
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 601
    :catch_0
    move-exception v0

    move-object/from16 v14, p1

    move-object v6, v2

    move-wide/from16 v17, v3

    goto/16 :goto_d

    .line 552
    :cond_4
    cmp-long v0, v5, v3

    if-gtz v0, :cond_5

    .line 557
    move-wide v11, v9

    goto :goto_3

    .line 552
    :cond_5
    :goto_2
    move-wide v11, v5

    .line 560
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 561
    :try_start_5
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "rw"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v14, p1

    :try_start_6
    invoke-direct {v6, v14, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 562
    :try_start_7
    invoke-virtual {v6, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 563
    invoke-virtual {v6, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 564
    const/high16 v0, 0x40000

    new-array v0, v0, [B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 566
    nop

    .line 567
    nop

    .line 568
    move-wide v8, v3

    move-wide v15, v8

    .line 571
    :goto_4
    const/4 v10, 0x0

    :try_start_8
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 578
    nop

    .line 579
    if-gtz v13, :cond_6

    .line 580
    move-wide/from16 v17, v3

    const/4 v2, 0x1

    goto :goto_7

    .line 582
    :cond_6
    :try_start_9
    invoke-virtual {v6, v0, v10, v13}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 583
    move-wide/from16 v17, v3

    int-to-long v2, v13

    add-long/2addr v8, v2

    .line 584
    const-wide v2, 0x100000000L

    cmp-long v2, v8, v2

    if-lez v2, :cond_7

    .line 585
    const/4 v2, 0x1

    goto :goto_7

    .line 590
    :cond_7
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 591
    sub-long v19, v8, v15

    const-wide/32 v21, 0x200000

    cmp-long v4, v19, v21

    if-gez v4, :cond_9

    sub-long v19, v2, v15

    const-wide/16 v21, 0x7d0

    cmp-long v4, v19, v21

    if-lez v4, :cond_8

    goto :goto_5

    :cond_8
    move-wide v9, v8

    goto :goto_6

    .line 592
    :cond_9
    :goto_5
    nop

    .line 593
    move/from16 v13, p4

    move-wide v9, v8

    move-object/from16 v8, p3

    invoke-interface/range {v8 .. v13}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V

    move-wide v15, v2

    .line 595
    :goto_6
    move-wide v8, v9

    move-wide/from16 v3, v17

    goto :goto_4

    .line 572
    :catch_1
    move-exception v0

    move-wide/from16 v17, v3

    .line 576
    nop

    .line 577
    move v2, v10

    .line 596
    :goto_7
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 597
    iput-wide v8, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->bytes:J

    .line 598
    if-eqz v2, :cond_b

    cmp-long v0, v8, v17

    if-lez v0, :cond_b

    cmp-long v0, v11, v17

    if-lez v0, :cond_a

    cmp-long v0, v8, v11

    if-ltz v0, :cond_b

    :cond_a
    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    move v2, v10

    :goto_8
    iput-boolean v2, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->complete:Z

    .line 599
    move/from16 v13, p4

    move-wide v9, v8

    move-object/from16 v8, p3

    invoke-interface/range {v8 .. v13}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 600
    nop

    .line 605
    if-eqz v5, :cond_c

    .line 607
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 609
    goto :goto_9

    .line 608
    :catch_2
    move-exception v0

    .line 611
    :cond_c
    :goto_9
    invoke-static {v6}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 612
    if-eqz v7, :cond_d

    .line 613
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 600
    :cond_d
    return-object v1

    .line 601
    :catch_3
    move-exception v0

    goto :goto_c

    .line 605
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_a

    .line 601
    :catch_4
    move-exception v0

    move-wide/from16 v17, v3

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_b

    .line 605
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    :goto_a
    move-object v2, v5

    goto :goto_10

    .line 601
    :catch_6
    move-exception v0

    move-object/from16 v14, p1

    :goto_b
    move-wide/from16 v17, v3

    move-object v6, v2

    :goto_c
    move-object v2, v5

    goto :goto_d

    .line 605
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    goto :goto_10

    .line 601
    :catch_7
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v17, v3

    move-object v6, v2

    goto :goto_d

    .line 605
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    move-object v7, v6

    goto :goto_10

    .line 601
    :catch_8
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v17, v3

    move-object v6, v2

    move-object v7, v6

    .line 602
    :goto_d
    :try_start_c
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_e

    :cond_e
    move-wide/from16 v3, v17

    :goto_e
    iput-wide v3, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->bytes:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 603
    nop

    .line 605
    if-eqz v2, :cond_f

    .line 607
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 609
    goto :goto_f

    .line 608
    :catch_9
    move-exception v0

    .line 611
    :cond_f
    :goto_f
    invoke-static {v6}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 612
    if-eqz v7, :cond_10

    .line 613
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 603
    :cond_10
    return-object v1

    .line 605
    :catchall_4
    move-exception v0

    move-object v1, v0

    :goto_10
    if-eqz v2, :cond_11

    .line 607
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 609
    goto :goto_11

    .line 608
    :catch_a
    move-exception v0

    .line 611
    :cond_11
    :goto_11
    invoke-static {v6}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V

    .line 612
    if-eqz v7, :cond_12

    .line 613
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 615
    :cond_12
    throw v1
.end method

.method private static saveCompleted(Ljava/io/File;[Z)V
    .locals 3

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 731
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_1

    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 733
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    :cond_2
    nop

    .line 740
    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p0}, Lid/wealthstock/viralclip/MediaDownloader;->sidecar(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 741
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    nop

    .line 747
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 745
    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_1

    .line 742
    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_3

    .line 745
    :catchall_1
    move-exception p0

    :goto_1
    if-eqz p1, :cond_3

    .line 747
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 749
    goto :goto_2

    .line 748
    :catch_1
    move-exception p1

    .line 751
    :cond_3
    :goto_2
    throw p0

    .line 742
    :catch_2
    move-exception p0

    .line 745
    :goto_3
    if-eqz p1, :cond_4

    .line 747
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 749
    :goto_4
    goto :goto_5

    .line 748
    :catch_3
    move-exception p0

    goto :goto_4

    .line 752
    :cond_4
    :goto_5
    return-void
.end method

.method private static sidecar(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 619
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 620
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ".parts"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static sleep(J)Z
    .locals 0

    .line 788
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    const/4 p0, 0x1

    return p0

    .line 790
    :catch_0
    move-exception p0

    .line 791
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 792
    const/4 p0, 0x0

    return p0
.end method

.method private static spanOf(IJJ)J
    .locals 2

    .line 502
    int-to-long v0, p0

    mul-long/2addr v0, p1

    .line 503
    add-long/2addr p1, v0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 504
    const-wide/16 p2, 0x0

    sub-long/2addr p0, v0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method
