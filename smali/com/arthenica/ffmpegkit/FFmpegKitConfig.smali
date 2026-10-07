.class public Lcom/arthenica/ffmpegkit/FFmpegKitConfig;
.super Ljava/lang/Object;
.source "FFmpegKitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
    }
.end annotation


# static fields
.field static final FFMPEG_KIT_NAMED_PIPE_PREFIX:Ljava/lang/String; = "fk_pipe_"

.field static final TAG:Ljava/lang/String; = "ffmpeg-kit"

.field private static activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

.field private static asyncConcurrencyLimit:I

.field private static asyncExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

.field private static globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

.field private static globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

.field private static globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field private static globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

.field private static globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

.field private static final safFileDescriptorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final safIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessionHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessionHistoryLock:Ljava/lang/Object;

.field private static final sessionHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation
.end field

.field private static sessionHistorySize:I

.field private static final uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsessionHistorySize()I
    .locals 1

    sget v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 134
    const-string v0, "com.arthenica"

    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->registerRootPackage(Ljava/lang/String;)V

    .line 136
    const-string v0, "Loading ffmpeg-kit."

    const-string v1, "ffmpeg-kit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpeg()Z

    move-result v0

    .line 141
    .local v0, "nativeFFmpegTriedAndFailed":Z
    const-class v2, Lcom/arthenica/ffmpegkit/Abi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    const-class v2, Lcom/arthenica/ffmpegkit/FFmpegKit;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 143
    const-class v2, Lcom/arthenica/ffmpegkit/FFprobeKit;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 145
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpegKit(Z)V

    .line 147
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 150
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLogLevel()I

    move-result v2

    invoke-static {v2}, Lcom/arthenica/ffmpegkit/Level;->from(I)Lcom/arthenica/ffmpegkit/Level;

    move-result-object v2

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    .line 152
    const/16 v2, 0xa

    sput v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    .line 153
    sget v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 155
    sput v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    .line 156
    new-instance v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;

    invoke-direct {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;-><init>()V

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    .line 163
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 164
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 166
    const/4 v2, 0x0

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 167
    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 168
    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 169
    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 170
    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 172
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    .line 173
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    .line 174
    sget-object v2, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 176
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadAbi()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadBuildDate()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Loaded ffmpeg-kit-%s-%s-%s-%s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "nativeFFmpegTriedAndFailed":Z
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method static addSession(Lcom/arthenica/ffmpegkit/Session;)V
    .locals 5
    .param p0, "session"    # Lcom/arthenica/ffmpegkit/Session;

    .line 1120
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1127
    .local v1, "sessionAlreadyAdded":Z
    if-nez v1, :cond_0

    .line 1128
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->deleteExpiredSessions()V

    .line 1132
    .end local v1    # "sessionAlreadyAdded":Z
    :cond_0
    monitor-exit v0

    .line 1133
    return-void

    .line 1132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static argumentsToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "arguments"    # [Ljava/lang/String;

    .line 1373
    if-nez p0, :cond_0

    .line 1374
    const-string v0, "null"

    return-object v0

    .line 1377
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1378
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1379
    if-lez v1, :cond_1

    .line 1380
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1385
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    .locals 2
    .param p0, "ffmpegSession"    # Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 724
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 725
    .local v0, "asyncFFmpegExecuteTask":Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 726
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->setFuture(Ljava/util/concurrent/Future;)V

    .line 727
    return-void
.end method

.method public static asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p0, "ffmpegSession"    # Lcom/arthenica/ffmpegkit/FFmpegSession;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 740
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 741
    .local v0, "asyncFFmpegExecuteTask":Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 742
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->setFuture(Ljava/util/concurrent/Future;)V

    .line 743
    return-void
.end method

.method public static asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V
    .locals 2
    .param p0, "ffprobeSession"    # Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 755
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 756
    .local v0, "asyncFFmpegExecuteTask":Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 757
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->setFuture(Ljava/util/concurrent/Future;)V

    .line 758
    return-void
.end method

.method public static asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p0, "ffprobeSession"    # Lcom/arthenica/ffmpegkit/FFprobeSession;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 771
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 772
    .local v0, "asyncFFmpegExecuteTask":Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 773
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->setFuture(Ljava/util/concurrent/Future;)V

    .line 774
    return-void
.end method

.method public static asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V
    .locals 2
    .param p0, "mediaInformationSession"    # Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .param p1, "waitTimeout"    # I

    .line 788
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;-><init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/lang/Integer;)V

    .line 789
    .local v0, "asyncGetMediaInformationTask":Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 790
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->setFuture(Ljava/util/concurrent/Future;)V

    .line 791
    return-void
.end method

.method public static asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/util/concurrent/ExecutorService;I)V
    .locals 2
    .param p0, "mediaInformationSession"    # Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "waitTimeout"    # I

    .line 807
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;-><init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/lang/Integer;)V

    .line 808
    .local v0, "asyncGetMediaInformationTask":Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 809
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->setFuture(Ljava/util/concurrent/Future;)V

    .line 810
    return-void
.end method

.method public static clearSessions()V
    .locals 2

    .line 1197
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1199
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1200
    monitor-exit v0

    .line 1201
    return-void

    .line 1200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static closeFFmpegPipe(Ljava/lang/String;)V
    .locals 2
    .param p0, "ffmpegPipePath"    # Ljava/lang/String;

    .line 529
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 533
    :cond_0
    return-void
.end method

.method private static deleteExpiredSessions()V
    .locals 4

    .line 1103
    nop

    :goto_0
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    if-le v0, v1, :cond_1

    .line 1105
    :try_start_0
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arthenica/ffmpegkit/Session;

    .line 1106
    .local v0, "expiredSession":Lcom/arthenica/ffmpegkit/Session;
    if-eqz v0, :cond_0

    .line 1107
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1109
    .end local v0    # "expiredSession":Lcom/arthenica/ffmpegkit/Session;
    :catch_0
    move-exception v0

    .line 1110
    :cond_0
    :goto_1
    goto :goto_0

    .line 1112
    :cond_1
    return-void
.end method

.method private static native disableNativeRedirection()V
.end method

.method public static disableRedirection()V
    .locals 0

    .line 207
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->disableNativeRedirection()V

    .line 208
    return-void
.end method

.method public static enableFFmpegSessionCompleteCallback(Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)V
    .locals 0
    .param p0, "ffmpegSessionCompleteCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 870
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 871
    return-void
.end method

.method public static enableFFprobeSessionCompleteCallback(Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)V
    .locals 0
    .param p0, "ffprobeSessionCompleteCallback"    # Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 890
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 891
    return-void
.end method

.method public static enableLogCallback(Lcom/arthenica/ffmpegkit/LogCallback;)V
    .locals 0
    .param p0, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;

    .line 849
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 850
    return-void
.end method

.method public static enableMediaInformationSessionCompleteCallback(Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)V
    .locals 0
    .param p0, "mediaInformationSessionCompleteCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 910
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 911
    return-void
.end method

.method private static native enableNativeRedirection()V
.end method

.method public static enableRedirection()V
    .locals 0

    .line 196
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableNativeRedirection()V

    .line 197
    return-void
.end method

.method public static enableStatisticsCallback(Lcom/arthenica/ffmpegkit/StatisticsCallback;)V
    .locals 0
    .param p0, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 859
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 860
    return-void
.end method

.method static extractExtensionFromSafDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "safDisplayName"    # Ljava/lang/String;

    .line 944
    move-object v0, p0

    .line 945
    .local v0, "rawExtension":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 946
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 950
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " ."

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 951
    :catch_0
    move-exception v1

    .line 952
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to extract extension from saf display name: %s.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ffmpeg-kit"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string v2, "raw"

    return-object v2
.end method

.method public static ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    .locals 3
    .param p0, "ffmpegSession"    # Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 655
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->startRunning()V

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFmpegExecute(J[Ljava/lang/String;)I

    move-result v0

    .line 659
    .local v0, "returnCode":I
    new-instance v1, Lcom/arthenica/ffmpegkit/ReturnCode;

    invoke-direct {v1, v0}, Lcom/arthenica/ffmpegkit/ReturnCode;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v0    # "returnCode":I
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->fail(Ljava/lang/Exception;)V

    .line 662
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FFmpeg execute failed: %s.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ffmpeg-kit"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static ffprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V
    .locals 3
    .param p0, "ffprobeSession"    # Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 672
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFprobeSession;->startRunning()V

    .line 675
    :try_start_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFprobeSession;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFprobeSession;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFprobeExecute(J[Ljava/lang/String;)I

    move-result v0

    .line 676
    .local v0, "returnCode":I
    new-instance v1, Lcom/arthenica/ffmpegkit/ReturnCode;

    invoke-direct {v1, v0}, Lcom/arthenica/ffmpegkit/ReturnCode;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v0    # "returnCode":I
    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/FFprobeSession;->fail(Ljava/lang/Exception;)V

    .line 679
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFprobeSession;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FFprobe execute failed: %s.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ffmpeg-kit"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getAsyncConcurrencyLimit()I
    .locals 1

    .line 818
    sget v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    return v0
.end method

.method public static getBuildDate()Ljava/lang/String;
    .locals 1

    .line 592
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeBuildDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFFmpegSessionCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .locals 1

    .line 879
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    return-object v0
.end method

.method public static getFFmpegSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/FFmpegSession;",
            ">;"
        }
    .end annotation

    .line 1209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1211
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/arthenica/ffmpegkit/FFmpegSession;>;"
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1212
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 1213
    .local v3, "session":Lcom/arthenica/ffmpegkit/Session;
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1214
    move-object v4, v3

    check-cast v4, Lcom/arthenica/ffmpegkit/FFmpegSession;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1216
    .end local v3    # "session":Lcom/arthenica/ffmpegkit/Session;
    :cond_0
    goto :goto_0

    .line 1217
    :cond_1
    monitor-exit v1

    .line 1219
    return-object v0

    .line 1217
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getFFmpegVersion()Ljava/lang/String;
    .locals 1

    .line 561
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeFFmpegVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFFprobeSessionCompleteCallback()Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .locals 1

    .line 899
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    return-object v0
.end method

.method public static getFFprobeSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/FFprobeSession;",
            ">;"
        }
    .end annotation

    .line 1228
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1230
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/arthenica/ffmpegkit/FFprobeSession;>;"
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1231
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 1232
    .local v3, "session":Lcom/arthenica/ffmpegkit/Session;
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->isFFprobe()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1233
    move-object v4, v3

    check-cast v4, Lcom/arthenica/ffmpegkit/FFprobeSession;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1235
    .end local v3    # "session":Lcom/arthenica/ffmpegkit/Session;
    :cond_0
    goto :goto_0

    .line 1236
    :cond_1
    monitor-exit v1

    .line 1238
    return-object v0

    .line 1236
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getLastCompletedSession()Lcom/arthenica/ffmpegkit/Session;
    .locals 5

    .line 1169
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1171
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arthenica/ffmpegkit/Session;

    .line 1172
    .local v2, "session":Lcom/arthenica/ffmpegkit/Session;
    invoke-interface {v2}, Lcom/arthenica/ffmpegkit/Session;->getState()Lcom/arthenica/ffmpegkit/SessionState;

    move-result-object v3

    sget-object v4, Lcom/arthenica/ffmpegkit/SessionState;->COMPLETED:Lcom/arthenica/ffmpegkit/SessionState;

    if-ne v3, v4, :cond_0

    .line 1173
    monitor-exit v0

    return-object v2

    .line 1170
    .end local v2    # "session":Lcom/arthenica/ffmpegkit/Session;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1176
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 1178
    const/4 v0, 0x0

    return-object v0

    .line 1176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLastSession()Lcom/arthenica/ffmpegkit/Session;
    .locals 3

    .line 1153
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1155
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arthenica/ffmpegkit/Session;

    monitor-exit v0

    return-object v1

    .line 1157
    :cond_0
    monitor-exit v0

    .line 1159
    const/4 v0, 0x0

    return-object v0

    .line 1157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLogLevel()Lcom/arthenica/ffmpegkit/Level;
    .locals 1

    .line 928
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    return-object v0
.end method

.method public static getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .locals 1

    .line 1286
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    return-object v0
.end method

.method public static getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V
    .locals 9
    .param p0, "mediaInformationSession"    # Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .param p1, "waitTimeout"    # I

    .line 690
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->startRunning()V

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFprobeExecute(J[Ljava/lang/String;)I

    move-result v0

    .line 694
    .local v0, "returnCodeValue":I
    new-instance v1, Lcom/arthenica/ffmpegkit/ReturnCode;

    invoke-direct {v1, v0}, Lcom/arthenica/ffmpegkit/ReturnCode;-><init>(I)V

    .line 695
    .local v1, "returnCode":Lcom/arthenica/ffmpegkit/ReturnCode;
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V

    .line 696
    invoke-virtual {v1}, Lcom/arthenica/ffmpegkit/ReturnCode;->isValueSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getAllLogs(I)Ljava/util/List;

    move-result-object v2

    .line 698
    .local v2, "allLogs":Ljava/util/List;, "Ljava/util/List<Lcom/arthenica/ffmpegkit/Log;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v3, "ffprobeJsonOutput":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "allLogsSize":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 700
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arthenica/ffmpegkit/Log;

    .line 701
    .local v6, "log":Lcom/arthenica/ffmpegkit/Log;
    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/Log;->getLevel()Lcom/arthenica/ffmpegkit/Level;

    move-result-object v7

    sget-object v8, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    if-ne v7, v8, :cond_0

    .line 702
    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .end local v6    # "log":Lcom/arthenica/ffmpegkit/Log;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 705
    .end local v4    # "i":I
    .end local v5    # "allLogsSize":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/arthenica/ffmpegkit/MediaInformationJsonParser;->fromWithError(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformation;

    move-result-object v4

    .line 706
    .local v4, "mediaInformation":Lcom/arthenica/ffmpegkit/MediaInformation;
    invoke-virtual {p0, v4}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->setMediaInformation(Lcom/arthenica/ffmpegkit/MediaInformation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v0    # "returnCodeValue":I
    .end local v1    # "returnCode":Lcom/arthenica/ffmpegkit/ReturnCode;
    .end local v2    # "allLogs":Ljava/util/List;, "Ljava/util/List<Lcom/arthenica/ffmpegkit/Log;>;"
    .end local v3    # "ffprobeJsonOutput":Ljava/lang/StringBuilder;
    .end local v4    # "mediaInformation":Lcom/arthenica/ffmpegkit/MediaInformation;
    :cond_2
    goto :goto_1

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->fail(Ljava/lang/Exception;)V

    .line 710
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Get media information execute failed: %s.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ffmpeg-kit"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static getMediaInformationSessionCompleteCallback()Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .locals 1

    .line 919
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    return-object v0
.end method

.method public static getMediaInformationSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/MediaInformationSession;",
            ">;"
        }
    .end annotation

    .line 1247
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1249
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/arthenica/ffmpegkit/MediaInformationSession;>;"
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1250
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 1251
    .local v3, "session":Lcom/arthenica/ffmpegkit/Session;
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->isMediaInformation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1252
    move-object v4, v3

    check-cast v4, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1254
    .end local v3    # "session":Lcom/arthenica/ffmpegkit/Session;
    :cond_0
    goto :goto_0

    .line 1255
    :cond_1
    monitor-exit v1

    .line 1257
    return-object v0

    .line 1255
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native getNativeBuildDate()Ljava/lang/String;
.end method

.method private static native getNativeFFmpegVersion()Ljava/lang/String;
.end method

.method static native getNativeLogLevel()I
.end method

.method private static native getNativeVersion()Ljava/lang/String;
.end method

.method public static getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "openMode"    # Ljava/lang/String;

    .line 969
    const-string v1, "_display_name"

    .line 974
    const-string v2, "unknown"

    .line 975
    .local v2, "displayName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v4, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 976
    .local p1, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_1

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    goto :goto_1

    .line 975
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz p1, :cond_0

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "displayName":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "openMode":Ljava/lang/String;
    :cond_0
    :goto_0
    throw v3

    .line 979
    .restart local v2    # "displayName":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "openMode":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 982
    .end local p1    # "cursor":Landroid/database/Cursor;
    :cond_2
    nop

    .line 984
    sget-object p1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 985
    .local p1, "safId":I
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v1, v3, v4, p2, v5}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;-><init>(Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->extractExtensionFromSafDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 979
    .end local p1    # "safId":I
    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .end local v4    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :catchall_3
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .line 980
    .restart local v4    # "uri":Landroid/net/Uri;
    .local p1, "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to get %s column for %s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffmpeg-kit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    throw p1
.end method

.method public static getSafParameterForRead(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1001
    const-string v0, "r"

    invoke-static {p0, p1, v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafParameterForWrite(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1015
    const-string v0, "w"

    invoke-static {p0, p1, v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSession(J)Lcom/arthenica/ffmpegkit/Session;
    .locals 3
    .param p0, "sessionId"    # J

    .line 1142
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arthenica/ffmpegkit/Session;

    monitor-exit v0

    return-object v1

    .line 1144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSessionHistorySize()I
    .locals 1

    .line 1078
    sget v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    return v0
.end method

.method public static getSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation

    .line 1187
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSessionsByState(Lcom/arthenica/ffmpegkit/SessionState;)Ljava/util/List;
    .locals 5
    .param p0, "state"    # Lcom/arthenica/ffmpegkit/SessionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/ffmpegkit/SessionState;",
            ")",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation

    .line 1267
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1269
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/arthenica/ffmpegkit/Session;>;"
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1270
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 1271
    .local v3, "session":Lcom/arthenica/ffmpegkit/Session;
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->getState()Lcom/arthenica/ffmpegkit/SessionState;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 1272
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1274
    .end local v3    # "session":Lcom/arthenica/ffmpegkit/Session;
    :cond_0
    goto :goto_0

    .line 1275
    :cond_1
    monitor-exit v1

    .line 1277
    return-object v0

    .line 1275
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getSupportedCameraIds(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v0, "detectedCameraIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 549
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/CameraSupport;->extractSupportedCameraIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 552
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .line 570
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->isLTSBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeVersion()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s-lts"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :cond_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native ignoreNativeSignal(I)V
.end method

.method public static ignoreSignal(Lcom/arthenica/ffmpegkit/Signal;)V
    .locals 1
    .param p0, "signal"    # Lcom/arthenica/ffmpegkit/Signal;

    .line 646
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Signal;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ignoreNativeSignal(I)V

    .line 647
    return-void
.end method

.method public static isLTSBuild()Z
    .locals 1

    .line 583
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->isNativeLTSBuild()Z

    move-result v0

    return v0
.end method

.method private static log(JI[B)V
    .locals 12
    .param p0, "sessionId"    # J
    .param p2, "levelValue"    # I
    .param p3, "logMessage"    # [B

    .line 219
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/Level;->from(I)Lcom/arthenica/ffmpegkit/Level;

    move-result-object v0

    .line 220
    .local v0, "level":Lcom/arthenica/ffmpegkit/Level;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 221
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Lcom/arthenica/ffmpegkit/Log;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/arthenica/ffmpegkit/Log;-><init>(JLcom/arthenica/ffmpegkit/Level;Ljava/lang/String;)V

    .line 222
    .local v2, "log":Lcom/arthenica/ffmpegkit/Log;
    const/4 v3, 0x0

    .line 223
    .local v3, "globalCallbackDefined":Z
    const/4 v4, 0x0

    .line 224
    .local v4, "sessionCallbackDefined":Z
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 227
    .local v5, "activeLogRedirectionStrategy":Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    sget-object v6, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    sget-object v7, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    if-ne v6, v7, :cond_0

    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v6

    if-ne p2, v6, :cond_1

    :cond_0
    sget-object v6, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v6

    if-le p2, v6, :cond_2

    .line 229
    :cond_1
    return-void

    .line 232
    :cond_2
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    move-result-object v6

    .line 233
    .local v6, "session":Lcom/arthenica/ffmpegkit/Session;
    const-string v7, "ffmpeg-kit"

    if-eqz v6, :cond_3

    .line 234
    invoke-interface {v6}, Lcom/arthenica/ffmpegkit/Session;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    .line 235
    invoke-interface {v6, v2}, Lcom/arthenica/ffmpegkit/Session;->addLog(Lcom/arthenica/ffmpegkit/Log;)V

    .line 237
    invoke-interface {v6}, Lcom/arthenica/ffmpegkit/Session;->getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 238
    const/4 v4, 0x1

    .line 242
    :try_start_0
    invoke-interface {v6}, Lcom/arthenica/ffmpegkit/Session;->getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/arthenica/ffmpegkit/LogCallback;->apply(Lcom/arthenica/ffmpegkit/Log;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v8

    .line 244
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Exception thrown inside session log callback.%s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    sget-object v8, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 250
    .local v8, "globalLogCallbackFunction":Lcom/arthenica/ffmpegkit/LogCallback;
    if-eqz v8, :cond_4

    .line 251
    const/4 v3, 0x1

    .line 255
    :try_start_1
    invoke-interface {v8, v2}, Lcom/arthenica/ffmpegkit/LogCallback;->apply(Lcom/arthenica/ffmpegkit/Log;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    goto :goto_1

    .line 256
    :catch_1
    move-exception v9

    .line 257
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Exception thrown inside global log callback.%s"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    sget-object v9, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    invoke-virtual {v5}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_2

    .line 279
    :pswitch_0
    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    .line 280
    :cond_5
    return-void

    .line 273
    :pswitch_1
    if-eqz v4, :cond_6

    .line 274
    return-void

    .line 267
    :pswitch_2
    if-eqz v3, :cond_6

    .line 268
    return-void

    .line 264
    :pswitch_3
    return-void

    .line 290
    :cond_6
    :goto_2
    sget-object v9, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 317
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 311
    :pswitch_4
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    goto :goto_3

    .line 305
    :pswitch_5
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    goto :goto_3

    .line 301
    :pswitch_6
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    goto :goto_3

    .line 297
    :pswitch_7
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    goto :goto_3

    .line 294
    :pswitch_8
    nop

    .line 321
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static native messagesInTransmit(J)I
.end method

.method static native nativeFFmpegCancel(J)V
.end method

.method private static native nativeFFmpegExecute(J[Ljava/lang/String;)I
.end method

.method static native nativeFFprobeExecute(J[Ljava/lang/String;)I
.end method

.method public static parseArguments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "command"    # Ljava/lang/String;

    .line 1316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v0, "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1319
    .local v1, "currentArgument":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1320
    .local v2, "singleQuoteStarted":Z
    const/4 v3, 0x0

    .line 1322
    .local v3, "doubleQuoteStarted":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 1324
    if-lez v4, :cond_0

    .line 1325
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .local v5, "previousChar":Ljava/lang/Character;
    goto :goto_1

    .line 1327
    .end local v5    # "previousChar":Ljava/lang/Character;
    :cond_0
    const/4 v5, 0x0

    .line 1329
    .restart local v5    # "previousChar":Ljava/lang/Character;
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1331
    .local v6, "currentChar":C
    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 1332
    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_2

    .line 1334
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 1335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .end local v1    # "currentArgument":Ljava/lang/StringBuilder;
    .local v7, "currentArgument":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 1333
    .end local v7    # "currentArgument":Ljava/lang/StringBuilder;
    .restart local v1    # "currentArgument":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1338
    :cond_3
    const/16 v7, 0x27

    const/16 v8, 0x5c

    if-ne v6, v7, :cond_7

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-eq v7, v8, :cond_7

    .line 1339
    :cond_4
    if-eqz v2, :cond_5

    .line 1340
    const/4 v2, 0x0

    goto :goto_3

    .line 1341
    :cond_5
    if-eqz v3, :cond_6

    .line 1342
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1344
    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    .line 1346
    :cond_7
    const/16 v7, 0x22

    if-ne v6, v7, :cond_b

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-eq v7, v8, :cond_b

    .line 1347
    :cond_8
    if-eqz v3, :cond_9

    .line 1348
    const/4 v3, 0x0

    goto :goto_3

    .line 1349
    :cond_9
    if-eqz v2, :cond_a

    .line 1350
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1352
    :cond_a
    const/4 v3, 0x1

    goto :goto_3

    .line 1355
    :cond_b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1322
    .end local v5    # "previousChar":Ljava/lang/Character;
    .end local v6    # "currentChar":C
    :cond_c
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1359
    .end local v4    # "i":I
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 1360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_e
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static printToLogcat(ILjava/lang/String;)V
    .locals 7
    .param p0, "logPriority"    # I
    .param p1, "string"    # Ljava/lang/String;

    .line 608
    const/16 v0, 0xfa0

    .line 610
    .local v0, "LOGGER_ENTRY_MAX_LEN":I
    move-object v1, p1

    .line 612
    .local v1, "remainingString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "ffmpeg-kit"

    const/16 v4, 0xfa0

    if-gt v2, v4, :cond_1

    .line 613
    invoke-static {p0, v3, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v1, ""

    goto :goto_0

    .line 616
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 617
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 618
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 621
    :cond_2
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 625
    .end local v5    # "index":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 626
    return-void
.end method

.method public static registerNewFFmpegPipe(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 499
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "pipes"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    .local v1, "pipesDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ffmpeg-kit"

    if-nez v2, :cond_0

    .line 502
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 503
    .local v2, "pipesDirCreated":Z
    if-nez v2, :cond_0

    .line 504
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Failed to create pipes directory: %s."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-object v3

    .line 509
    .end local v2    # "pipesDirCreated":Z
    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "fk_pipe_"

    filled-new-array {v1, v2, v6, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "{0}{1}{2}{3}"

    invoke-static {v5, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "newFFmpegPipePath":Ljava/lang/String;
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->closeFFmpegPipe(Ljava/lang/String;)V

    .line 514
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->registerNewNativeFFmpegPipe(Ljava/lang/String;)I

    move-result v5

    .line 515
    .local v5, "rc":I
    if-nez v5, :cond_1

    .line 516
    return-object v2

    .line 518
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Failed to register new FFmpeg pipe %s. Operation failed with rc=%d."

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-object v3
.end method

.method private static native registerNewNativeFFmpegPipe(Ljava/lang/String;)I
.end method

.method private static safClose(I)I
    .locals 5
    .param p0, "fileDescriptor"    # I

    .line 1051
    const-string v0, "ffmpeg-kit"

    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    .line 1052
    .local v1, "safProtocolUrl":Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
    if-eqz v1, :cond_1

    .line 1053
    invoke-virtual {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1054
    .local v2, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 1055
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 1056
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getSafId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1057
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1058
    const/4 v0, 0x1

    return v0

    .line 1060
    :cond_0
    const-string v3, "ParcelFileDescriptor for SAF fd %d not found."

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    nop

    .end local v2    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1063
    :cond_1
    const-string v2, "SAF fd %d not found."

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    .end local v1    # "safProtocolUrl":Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
    :goto_0
    goto :goto_1

    .line 1065
    :catchall_0
    move-exception v1

    .line 1066
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to close SAF fd: %d.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static safOpen(I)I
    .locals 5
    .param p0, "safId"    # I

    .line 1026
    const-string v0, "ffmpeg-kit"

    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    .line 1027
    .local v1, "safUrl":Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getOpenMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1029
    .local v2, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 1030
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    .line 1031
    .local v3, "fd":I
    sget-object v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1032
    return v3

    .line 1034
    .end local v2    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fd":I
    :cond_0
    const-string v2, "SAF id %d not found."

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    nop

    .end local v1    # "safUrl":Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
    goto :goto_0

    .line 1036
    :catchall_0
    move-exception v1

    .line 1037
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to open SAF id: %d.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static sessionStateToString(Lcom/arthenica/ffmpegkit/SessionState;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Lcom/arthenica/ffmpegkit/SessionState;

    .line 1305
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/SessionState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAsyncConcurrencyLimit(I)V
    .locals 2
    .param p0, "asyncConcurrencyLimit"    # I

    .line 829
    if-lez p0, :cond_0

    .line 832
    sput p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    .line 833
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 836
    .local v0, "oldAsyncExecutorService":Ljava/util/concurrent/ExecutorService;
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 839
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 841
    .end local v0    # "oldAsyncExecutorService":Ljava/util/concurrent/ExecutorService;
    :cond_0
    return-void
.end method

.method public static setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "variableValue"    # Ljava/lang/String;

    .line 636
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setNativeEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setFontDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p2, "fontNameMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setFontDirectoryList(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    .line 391
    return-void
.end method

.method public static setFontDirectoryList(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p1, "fontDirectoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "fontNameMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 408
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 410
    .local v1, "validFontNameMappingCount":I
    new-instance v2, Ljava/io/File;

    const-string v3, "fontconfig"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .local v2, "tempConfigurationDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "ffmpeg-kit"

    if-nez v3, :cond_0

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 413
    .local v3, "tempFontConfDirectoryCreated":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Created temporary font conf directory: %s."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v3    # "tempFontConfDirectoryCreated":Z
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v5, "fonts.conf"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    .local v3, "fontConfiguration":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 418
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    .line 419
    .local v5, "fontConfigurationDeleted":Z
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Deleted old temporary font configuration: %s."

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v5    # "fontConfigurationDeleted":Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .local v5, "fontNameMappingBlock":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 425
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 426
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 427
    .local v7, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 428
    .local v8, "fontName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 430
    .local v9, "mappedFontName":Ljava/lang/String;
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 431
    const-string v10, "    <match target=\"pattern\">\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v10, "        <test qual=\"any\" name=\"family\">\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "            <string>%s</string>\n"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v10, "        </test>\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v10, "        <edit name=\"family\" mode=\"assign\" binding=\"same\">\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v10, "        </edit>\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v10, "    </match>\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v1, v1, 0x1

    .line 442
    .end local v7    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "fontName":Ljava/lang/String;
    .end local v9    # "mappedFontName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 445
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v6, "fontConfigBuilder":Ljava/lang/StringBuilder;
    const-string v7, "<?xml version=\"1.0\"?>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v7, "<!DOCTYPE fontconfig SYSTEM \"fonts.dtd\">\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v7, "<fontconfig>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v7, "    <dir prefix=\"cwd\">.</dir>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 451
    .local v8, "fontDirectoryPath":Ljava/lang/String;
    const-string v9, "    <dir>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v9, "</dir>\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .end local v8    # "fontDirectoryPath":Ljava/lang/String;
    goto :goto_1

    .line 455
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 456
    const-string v7, "</fontconfig>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 460
    .local v7, "reference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/io/FileOutputStream;>;"
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 461
    .local v8, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 463
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 464
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 466
    const-string v9, "Saved new temporary font configuration with %d font name mappings."

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setFontconfigConfigurationPath(Ljava/lang/String;)I

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 471
    .local v10, "fontDirectoryPath":Ljava/lang/String;
    const-string v11, "Font directory %s registered successfully."

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    nop

    .end local v10    # "fontDirectoryPath":Ljava/lang/String;
    goto :goto_2

    .line 477
    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 479
    :try_start_1
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/FileOutputStream;

    :goto_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 477
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 474
    :catch_0
    move-exception v8

    .line 475
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    const-string v9, "Failed to set font directory: %s.%s"

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    nop

    .end local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 479
    :try_start_3
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 480
    :catch_1
    move-exception v4

    .line 482
    :goto_4
    nop

    .line 485
    :cond_6
    return-void

    .line 477
    :goto_5
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 479
    :try_start_4
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 482
    goto :goto_6

    .line 480
    :catch_2
    move-exception v8

    .line 484
    :cond_7
    :goto_6
    throw v4
.end method

.method public static setFontconfigConfigurationPath(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 373
    const-string v0, "FONTCONFIG_PATH"

    invoke-static {v0, p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setNativeEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setLogLevel(Lcom/arthenica/ffmpegkit/Level;)V
    .locals 1
    .param p0, "level"    # Lcom/arthenica/ffmpegkit/Level;

    .line 937
    if-eqz p0, :cond_0

    .line 938
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    .line 939
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setNativeLogLevel(I)V

    .line 941
    :cond_0
    return-void
.end method

.method public static setLogRedirectionStrategy(Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V
    .locals 0
    .param p0, "logRedirectionStrategy"    # Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 1295
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 1296
    return-void
.end method

.method private static native setNativeEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native setNativeLogLevel(I)V
.end method

.method public static setSessionHistorySize(I)V
    .locals 2
    .param p0, "sessionHistorySize"    # I

    .line 1087
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_1

    .line 1093
    if-lez p0, :cond_0

    .line 1094
    sput p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    .line 1095
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->deleteExpiredSessions()V

    .line 1097
    :cond_0
    return-void

    .line 1092
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session history size must not exceed the hard limit!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static statistics(JIFFJDDD)V
    .locals 14
    .param p0, "sessionId"    # J
    .param p2, "videoFrameNumber"    # I
    .param p3, "videoFps"    # F
    .param p4, "videoQuality"    # F
    .param p5, "size"    # J
    .param p7, "time"    # D
    .param p9, "bitrate"    # D
    .param p11, "speed"    # D

    .line 338
    new-instance v0, Lcom/arthenica/ffmpegkit/Statistics;

    move-wide v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/arthenica/ffmpegkit/Statistics;-><init>(JIFFJDDD)V

    move-object v1, v0

    .line 340
    .local v1, "statistics":Lcom/arthenica/ffmpegkit/Statistics;
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    move-result-object v2

    .line 341
    .local v2, "session":Lcom/arthenica/ffmpegkit/Session;
    const-string v3, "ffmpeg-kit"

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    move-object v4, v2

    check-cast v4, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 343
    .local v4, "ffmpegSession":Lcom/arthenica/ffmpegkit/FFmpegSession;
    invoke-virtual {v4, v1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->addStatistics(Lcom/arthenica/ffmpegkit/Statistics;)V

    .line 345
    invoke-virtual {v4}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    invoke-virtual {v4}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/arthenica/ffmpegkit/StatisticsCallback;->apply(Lcom/arthenica/ffmpegkit/Statistics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Exception thrown inside session statistics callback.%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "ffmpegSession":Lcom/arthenica/ffmpegkit/FFmpegSession;
    :cond_0
    :goto_0
    sget-object v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 356
    .local v4, "globalStatisticsCallbackFunction":Lcom/arthenica/ffmpegkit/StatisticsCallback;
    if-eqz v4, :cond_1

    .line 359
    :try_start_1
    invoke-interface {v4, v1}, Lcom/arthenica/ffmpegkit/StatisticsCallback;->apply(Lcom/arthenica/ffmpegkit/Statistics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    goto :goto_1

    .line 360
    :catch_1
    move-exception v0

    .line 361
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Exception thrown inside global statistics callback.%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
