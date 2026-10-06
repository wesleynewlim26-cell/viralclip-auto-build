.class public Lcom/arthenica/ffmpegkit/FFmpegKit;
.super Ljava/lang/Object;
.source "FFmpegKit.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/arthenica/ffmpegkit/AbiDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    const-class v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static cancel()V
    .locals 2

    .line 274
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFmpegCancel(J)V

    .line 275
    return-void
.end method

.method public static cancel(J)V
    .locals 0
    .param p0, "sessionId"    # J

    .line 285
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFmpegCancel(J)V

    .line 286
    return-void
.end method

.method public static execute(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 167
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKit;->executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 185
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKit;->executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 207
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/arthenica/ffmpegkit/FFmpegKit;->executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 255
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    .line 257
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-static {v0, p4}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;Ljava/util/concurrent/ExecutorService;)V

    .line 259
    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 227
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    .line 229
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-static {v0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;Ljava/util/concurrent/ExecutorService;)V

    .line 231
    return-object v0
.end method

.method public static executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    .line 60
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 62
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 78
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    .line 80
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 82
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    .line 104
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 106
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 151
    invoke-static {p0, p1, p2, p3}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    .line 153
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-static {v0, p4}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;Ljava/util/concurrent/ExecutorService;)V

    .line 155
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 124
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v0

    .line 126
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-static {v0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;Ljava/util/concurrent/ExecutorService;)V

    .line 128
    return-object v0
.end method

.method public static listSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/FFmpegSession;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getFFmpegSessions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
