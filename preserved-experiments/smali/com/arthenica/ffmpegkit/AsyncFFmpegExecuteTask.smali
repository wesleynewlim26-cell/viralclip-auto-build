.class public Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;
.super Ljava/lang/Object;
.source "AsyncFFmpegExecuteTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

.field private final ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;


# direct methods
.method public constructor <init>(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    .locals 1
    .param p1, "ffmpegSession"    # Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 33
    invoke-virtual {p1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 40
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    const-string v1, "ffmpeg-kit"

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    invoke-interface {v0, v2}, Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;->apply(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Exception thrown inside session complete callback.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getFFmpegSessionCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    move-result-object v0

    .line 50
    .local v0, "globalFFmpegSessionCompleteCallback":Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    if-eqz v0, :cond_1

    .line 53
    :try_start_1
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    invoke-interface {v0, v2}, Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;->apply(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    goto :goto_1

    .line 54
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Exception thrown inside global complete callback.%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
