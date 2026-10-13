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

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
.field public static sCtx:Landroid/content/Context;



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

    const-string v2, "WRAPPER"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V

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
    new-instance v8, Lid/wealthstock/viralclip/MediaDownloader$Probe;
    const/4 v2, 0x0
    invoke-direct {v8, v2}, Lid/wealthstock/viralclip/MediaDownloader$Probe;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V
    const/4 v2, 0x1
    iput-boolean v2, v8, Lid/wealthstock/viralclip/MediaDownloader$Probe;->reachable:Z

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
    goto :cond_9
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

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    sput-object p0, Lid/wealthstock/viralclip/MediaDownloader;->sCtx:Landroid/content/Context;
    return-void
.end method

.method static logLine(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    :try_start_log
    sget-object v0, Lid/wealthstock/viralclip/MediaDownloader;->sCtx:Landroid/content/Context;
    if-eqz v0, :try_end_log

    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    move-result-object v0
    if-eqz v0, :try_end_log

    new-instance v1, Ljava/io/File;
    const-string v2, "vc.log"
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ": "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, " -> "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "\n"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2

    new-instance v3, Ljava/io/FileWriter;
    const/4 v4, 0x1
    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    :try_end_log
    .catch Ljava/lang/Throwable; {:try_start_log .. :try_end_log} :catch_log
    :catch_log
    return-void
.end method
.method static dump403(Ljava/net/HttpURLConnection;I)V
    .locals 7
    :try_start_dump
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    move-result-object v0
    if-nez v0, :have_stream_dump
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v0
    :have_stream_dump
    if-eqz v0, :after_body_dump
    new-instance v1, Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :loop_body_dump
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :end_loop_body_dump
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "\n"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
    move-result v3
    const/16 v4, 0x190
    if-le v3, v4, :loop_body_dump
    :end_loop_body_dump
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    move-result v3
    const/16 v4, 0x190
    if-le v3, v4, :no_trim_body_dump
    const/4 v3, 0x0
    const/16 v4, 0x190
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    :no_trim_body_dump
    const-string v3, "BODY"
    invoke-static {v3, v1, p1}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    :after_body_dump
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    move-result-object v0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v1
    const/16 v2, 0x190
    if-le v1, v2, :no_trim_hdr_dump
    const/4 v1, 0x0
    const/16 v2, 0x190
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    :no_trim_hdr_dump
    const-string v1, "HDRS"
    invoke-static {v1, v0, p1}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_dump
    .catch Ljava/lang/Throwable; {:try_start_dump .. :try_end_dump} :catch_dump
    :catch_dump
    return-void
.end method



.method private static fetchRange(Ljava/lang/String;Ljava/io/File;JJ)J
    .locals 7
    .line 456
    const-wide/16 v0, 0x0
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
    const/4 v0, 0x0
    const/4 v1, 0x0
    new-instance v2, Ljava/util/HashMap;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    const-string v3, "Range"
    const-string v4, "bytes=0-1"
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 v3, 0x2710
    invoke-static {p0, v2, v3}, Lid/wealthstock/viralclip/MediaDownloader;->okHttpGet(Ljava/lang/String;Ljava/util/Map;I)[Ljava/lang/Object;
    move-result-object v2
    const/4 v3, 0x0
    aget-object v3, v2, v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    const-string v4, "PROBE-OKHTTP"
    invoke-static {v4, p0, v3}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    const/16 v4, 0xc8
    const/16 v5, 0xce
    if-eq v3, v4, :cond_probe_ok
    if-eq v3, v5, :cond_probe_ok
    new-instance v4, Lid/wealthstock/viralclip/MediaDownloader$Probe;
    invoke-direct {v4, v1}, Lid/wealthstock/viralclip/MediaDownloader$Probe;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V
    iput-boolean v0, v4, Lid/wealthstock/viralclip/MediaDownloader$Probe;->reachable:Z
    return-object v4
    :cond_probe_ok
    new-instance v4, Lid/wealthstock/viralclip/MediaDownloader$Probe;
    invoke-direct {v4, v1}, Lid/wealthstock/viralclip/MediaDownloader$Probe;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V
    const/4 v5, 0x1
    iput-boolean v5, v4, Lid/wealthstock/viralclip/MediaDownloader$Probe;->reachable:Z
    const/4 v5, 0x0
    iput-boolean v5, v4, Lid/wealthstock/viralclip/MediaDownloader$Probe;->ranges:Z
    if-ne v3, v5, :cond_not206
    :cond_not206
    const/16 v5, 0xce
    if-ne v3, v5, :cond_not_range
    const/4 v5, 0x1
    iput-boolean v5, v4, Lid/wealthstock/viralclip/MediaDownloader$Probe;->ranges:Z
    :cond_not_range
    return-object v4
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
    .locals 29
    .line 526
    new-instance v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;
    const/4 v2, 0x0
    invoke-direct {v1, v2}, Lid/wealthstock/viralclip/MediaDownloader$Fetch;-><init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V
    const-wide/16 v3, 0x0
    move-object/from16 v0, p2
    iget-wide v5, v0, Lid/wealthstock/viralclip/MediaDownloader$Probe;->total:J
    new-instance v7, Ljava/util/HashMap;
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    const-string v8, "Range"
    const-string v9, "bytes=0-"
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const v8, 0x7530
    invoke-static {p0, v7, v8}, Lid/wealthstock/viralclip/MediaDownloader;->downloadWithOkHttp(Ljava/lang/String;Ljava/util/Map;I)[Ljava/lang/Object;
    move-result-object v7
    const/4 v8, 0x0
    aget-object v8, v7, v8
    check-cast v8, Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    move-result v8
    const/4 v9, 0x1
    aget-object v7, v7, v9
    check-cast v7, Ljava/io/InputStream;
    const-string v9, "FETCH-OKHTTP"
    invoke-static {v9, p0, v8}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    const-string v9, "VC-DOWNLOAD"
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v10
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const/16 v9, 0xc8
    const/16 v10, 0xce
    if-eq v8, v9, :cond_resume_continue
    if-eq v8, v10, :cond_resume_continue
    const-wide/16 v11, -0x1
    int-to-long v13, v8
    move-object/from16 v10, p3
    move/from16 v15, p4
    :try_start_err
    invoke-interface/range {v10 .. v15}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V
    :try_end_err
    .catch Ljava/lang/Exception; {:try_start_err .. :try_end_err} :catch_err_progress
    :catch_err_progress
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :cond_no_file_err
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    move-result-wide v5
    goto :goto_err_bytes
    :cond_no_file_err
    move-wide v5, v3
    :goto_err_bytes
    iput-wide v5, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->bytes:J
    if-eqz v7, :cond_ret_err
    :try_start_close_err
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_close_err
    .catch Ljava/io/IOException; {:try_start_close_err .. :try_end_close_err} :catch_close_err
    :catch_close_err
    :cond_ret_err
    return-object v1
    :cond_resume_continue
    if-ne v8, v9, :cond_not200
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :cond_not200
    move-wide v11, v5
    if-eqz v7, :cond_no_stream
    new-instance v6, Ljava/io/RandomAccessFile;
    const-string v9, "rw"
    invoke-direct {v6, p1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v6, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    invoke-virtual {v6, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    const/high16 v9, 0x40000
    new-array v0, v9, [B
    move-wide v8, v3
    move-wide v15, v3
    :goto_resume_loop
    const/4 v10, 0x0
    :try_start_read
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I
    move-result v13
    :try_end_read
    .catch Ljava/io/IOException; {:try_start_read .. :try_end_read} :catch_io_resume
    if-gtz v13, :cond_write_resume
    const/4 v2, 0x1
    goto :goto_resume_done
    :cond_write_resume
    invoke-virtual {v6, v0, v10, v13}, Ljava/io/RandomAccessFile;->write([BII)V
    int-to-long v9, v13
    add-long/2addr v8, v9
    const-wide v9, 0x100000000L
    cmp-long v9, v8, v9
    if-lez v9, :cond_check_progress
    const/4 v2, 0x1
    goto :goto_resume_done
    :cond_check_progress
    :try_start_progress
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v9
    sub-long v12, v8, v15
    const-wide/32 v18, 0x200000
    cmp-long v12, v12, v18
    if-gez v12, :cond_do_progress
    sub-long v12, v9, v15
    const-wide/16 v18, 0x7d0
    cmp-long v12, v12, v18
    if-lez v12, :cond_no_progress
    :cond_do_progress
    move/from16 v13, p4
    move-wide v9, v8
    move-object/from16 v10, p3
    invoke-interface/range {v10 .. v13}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V
    move-wide v15, v9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v15
    :cond_no_progress
    :try_end_progress
    .catch Ljava/lang/Exception; {:try_start_progress .. :try_end_progress} :catch_progress
    :catch_progress
    goto :goto_resume_loop
    :catch_io_resume
    move-exception v0
    move v2, v10
    :goto_resume_done
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V
    iput-wide v8, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->bytes:J
    if-eqz v2, :cond_not_complete
    cmp-long v0, v8, v3
    if-lez v0, :cond_not_complete
    cmp-long v0, v11, v3
    if-lez v0, :cond_complete_true
    cmp-long v0, v8, v11
    if-ltz v0, :cond_not_complete
    :cond_complete_true
    const/4 v2, 0x1
    goto :goto_complete
    :cond_not_complete
    const/4 v2, 0x0
    :goto_complete
    iput-boolean v2, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->complete:Z
    move/from16 v13, p4
    move-wide v9, v8
    move-object/from16 v10, p3
    :try_start_final_progress
    invoke-interface/range {v10 .. v13}, Lid/wealthstock/viralclip/MediaDownloader$Progress;->onProgress(JJI)V
    :try_end_final_progress
    .catch Ljava/lang/Exception; {:try_start_final_progress .. :try_end_final_progress} :catch_final_progress
    :catch_final_progress
    if-eqz v7, :cond_close_stream
    :try_start_close
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_close
    .catch Ljava/io/IOException; {:try_start_close .. :try_end_close} :catch_close_stream
    :catch_close_stream
    :cond_close_stream
    invoke-static {v6}, Lid/wealthstock/viralclip/MediaDownloader;->close(Ljava/io/RandomAccessFile;)V
    return-object v1
    :cond_no_stream
    const-wide/16 v5, 0x0
    iput-wide v5, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->bytes:J
    const/4 v2, 0x0
    iput-boolean v2, v1, Lid/wealthstock/viralclip/MediaDownloader$Fetch;->complete:Z
    if-eqz v7, :cond_ret_no_stream
    :try_start_close2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_close2
    .catch Ljava/io/IOException; {:try_start_close2 .. :try_end_close2} :catch_close2
    :catch_close2
    :cond_ret_no_stream
    return-object v1
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


.method private static okHttpGet(Ljava/lang/String;Ljava/util/Map;I)[Ljava/lang/Object;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # Ljava/util/Map;
    .param p2, "timeoutMs"    # I
    .line 9000
    const-string v0, "OKHTTP-HELPER"
    const/4 v1, 0x0
    invoke-static {v0, p0, v1}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V
    int-to-long v1, p2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    move-result-object v0
    int-to-long v1, p2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    move-result-object v0
    int-to-long v1, p2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;
    move-result-object v0
    new-instance v1, Lokhttp3/Request$Builder;
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    if-eqz p1, :cond_headers_done
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
    :loop_headers
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_headers_done
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    goto :loop_headers
    :cond_headers_done
    const-string v2, "User-Agent"
    const-string v3, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    const-string v2, "Accept-Encoding"
    const-string v3, "gzip"
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v1
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object v0
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I
    move-result v1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v2
    const-string v3, ""
    if-eqz v2, :cond_no_body
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    move-result-object v3
    if-nez v3, :cond_got_body
    const-string v3, ""
    goto :cond_got_body
    :cond_no_body
    const-string v3, ""
    :cond_got_body
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    move-result v2
    const/16 v4, 0x190
    if-le v2, v4, :cond_no_trim
    const/4 v2, 0x0
    const/16 v4, 0x190
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    :cond_no_trim
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    const/4 v0, 0x2
    new-array v0, v0, [Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 0x0
    aput-object v1, v0, v2
    const/4 v1, 0x1
    aput-object v3, v0, v1
    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all
    :catch_all
    move-exception v0
    const/4 v1, 0x2
    new-array v0, v1, [Ljava/lang/Object;
    const/4 v1, -0x1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 0x0
    aput-object v1, v0, v2
    const-string v1, "error"
    const/4 v2, 0x1
    aput-object v1, v0, v2
    return-object v0
.end method


.method private static downloadWithOkHttp(Ljava/lang/String;Ljava/util/Map;I)[Ljava/lang/Object;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "headers"    # Ljava/util/Map;
    .param p2, "timeoutMs"    # I
    .line 9100
    const-string v0, "OKHTTP-DL"
    const/4 v1, 0x0
    invoke-static {v0, p0, v1}, Lid/wealthstock/viralclip/MediaDownloader;->logLine(Ljava/lang/String;Ljava/lang/String;I)V
    :try_start_dl
    new-instance v0, Lokhttp3/OkHttpClient$Builder;
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V
    int-to-long v1, p2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    move-result-object v0
    int-to-long v1, p2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    move-result-object v0
    int-to-long v1, p2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;
    move-result-object v0
    new-instance v1, Lokhttp3/Request$Builder;
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    if-eqz p1, :cond_dl_headers_done
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
    :loop_dl_headers
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_dl_headers_done
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    goto :loop_dl_headers
    :cond_dl_headers_done
    const-string v2, "User-Agent"
    const-string v3, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    const-string v2, "Accept-Encoding"
    const-string v3, "gzip"
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v1
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object v0
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object v0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I
    move-result v1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v2
    if-eqz v2, :cond_dl_null_body
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    move-result-object v3
    goto :cond_dl_got_stream
    :cond_dl_null_body
    const/4 v3, 0x0
    :cond_dl_got_stream
    const/4 v2, 0x2
    new-array v2, v2, [Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v4, 0x0
    aput-object v1, v2, v4
    const/4 v1, 0x1
    aput-object v3, v2, v1
    return-object v2
    :try_end_dl
    .catch Ljava/lang/Throwable; {:try_start_dl .. :try_end_dl} :catch_dl
    :catch_dl
    move-exception v0
    const/4 v1, 0x2
    new-array v0, v1, [Ljava/lang/Object;
    const/4 v1, -0x1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 0x0
    aput-object v1, v0, v2
    const/4 v1, 0x1
    const/4 v2, 0x0
    aput-object v2, v0, v1
    return-object v0
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
