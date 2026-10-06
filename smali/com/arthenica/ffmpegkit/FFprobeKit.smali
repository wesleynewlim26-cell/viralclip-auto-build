.class public Lcom/arthenica/ffmpegkit/FFprobeKit;
.super Ljava/lang/Object;
.source "FFprobeKit.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/arthenica/ffmpegkit/AbiDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    const-class v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .line 62
    const-string v7, "-show_chapters"

    const-string v8, "-i"

    const-string v0, "-v"

    const-string v1, "error"

    const-string v2, "-hide_banner"

    const-string v3, "-print_format"

    const-string v4, "json"

    const-string v5, "-show_format"

    const-string v6, "-show_streams"

    move-object v9, p0

    .end local p0    # "path":Ljava/lang/String;
    .local v9, "path":Ljava/lang/String;
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 176
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 194
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arthenica/ffmpegkit/FFprobeKit;->executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;

    .line 214
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeKit;->executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 260
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    .line 262
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFprobeSession;
    invoke-static {v0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    .line 264
    return-object v0
.end method

.method public static executeAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 234
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    .line 236
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFprobeSession;
    invoke-static {v0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    .line 238
    return-object v0
.end method

.method public static executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;

    .line 72
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    .line 74
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFprobeSession;
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ffprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 76
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 92
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    .line 94
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFprobeSession;
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 96
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;

    .line 114
    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    .line 116
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFprobeSession;
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 118
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 160
    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    .line 162
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFprobeSession;
    invoke-static {v0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    .line 164
    return-object v0
.end method

.method public static executeWithArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/FFprobeSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 136
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    move-result-object v0

    .line 138
    .local v0, "session":Lcom/arthenica/ffmpegkit/FFprobeSession;
    invoke-static {v0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V

    .line 140
    return-object v0
.end method

.method public static getMediaInformation(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 274
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 276
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 278
    return-object v0
.end method

.method public static getMediaInformation(Ljava/lang/String;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "waitTimeout"    # I

    .line 290
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 292
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    invoke-static {v0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 294
    return-object v0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 311
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 313
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 315
    return-object v0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "waitTimeout"    # I

    .line 336
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 338
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    invoke-static {v0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 340
    return-object v0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Ljava/util/concurrent/ExecutorService;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "waitTimeout"    # I

    .line 386
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 388
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    invoke-static {v0, p3, p4}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/util/concurrent/ExecutorService;I)V

    .line 390
    return-object v0
.end method

.method public static getMediaInformationAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Ljava/util/concurrent/ExecutorService;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 359
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFprobeKit;->defaultGetMediaInformationCommandArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 361
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    const/16 v1, 0x1388

    invoke-static {v0, p2, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/util/concurrent/ExecutorService;I)V

    .line 363
    return-object v0
.end method

.method public static getMediaInformationFromCommand(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;

    .line 400
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 402
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 404
    return-object v0
.end method

.method private static getMediaInformationFromCommandArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "waitTimeout"    # I

    .line 450
    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    .line 452
    .local v0, "session":Lcom/arthenica/ffmpegkit/MediaInformationSession;
    invoke-static {v0, p3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 454
    return-object v0
.end method

.method public static getMediaInformationFromCommandAsync(Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "waitTimeout"    # I

    .line 427
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->parseArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/arthenica/ffmpegkit/FFprobeKit;->getMediaInformationFromCommandArgumentsAsync([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;I)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    move-result-object v0

    return-object v0
.end method

.method public static listFFprobeSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/FFprobeSession;",
            ">;"
        }
    .end annotation

    .line 463
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getFFprobeSessions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listMediaInformationSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/MediaInformationSession;",
            ">;"
        }
    .end annotation

    .line 472
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationSessions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
