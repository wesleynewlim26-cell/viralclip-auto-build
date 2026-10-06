.class public Lcom/arthenica/ffmpegkit/FFmpegSession;
.super Lcom/arthenica/ffmpegkit/AbstractSession;
.source "FFmpegSession.java"

# interfaces
.implements Lcom/arthenica/ffmpegkit/Session;


# instance fields
.field private final completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

.field private final statistics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

.field private final statisticsLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V
    .locals 1
    .param p1, "arguments"    # [Ljava/lang/String;
    .param p2, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p3, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p4, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .param p5, "logRedirectionStrategy"    # Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 119
    invoke-direct {p0, p1, p3, p5}, Lcom/arthenica/ffmpegkit/AbstractSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    .line 121
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 122
    iput-object p4, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public static create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 6
    .param p0, "arguments"    # [Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/arthenica/ffmpegkit/FFmpegSession;

    const/4 v4, 0x0

    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .end local p0    # "arguments":[Ljava/lang/String;
    .local v1, "arguments":[Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 6
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 68
    new-instance v0, Lcom/arthenica/ffmpegkit/FFmpegSession;

    const/4 v4, 0x0

    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "arguments":[Ljava/lang/String;
    .end local p1    # "completeCallback":Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .local v1, "arguments":[Ljava/lang/String;
    .local v2, "completeCallback":Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 6
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 84
    new-instance v0, Lcom/arthenica/ffmpegkit/FFmpegSession;

    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "arguments":[Ljava/lang/String;
    .end local p1    # "completeCallback":Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .end local p2    # "logCallback":Lcom/arthenica/ffmpegkit/LogCallback;
    .end local p3    # "statisticsCallback":Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .local v1, "arguments":[Ljava/lang/String;
    .local v2, "completeCallback":Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .local v3, "logCallback":Lcom/arthenica/ffmpegkit/LogCallback;
    .local v4, "statisticsCallback":Lcom/arthenica/ffmpegkit/StatisticsCallback;
    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 6
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;
    .param p3, "statisticsCallback"    # Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .param p4, "logRedirectionStrategy"    # Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 102
    new-instance v0, Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "arguments":[Ljava/lang/String;
    .end local p1    # "completeCallback":Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .end local p2    # "logCallback":Lcom/arthenica/ffmpegkit/LogCallback;
    .end local p3    # "statisticsCallback":Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .end local p4    # "logRedirectionStrategy":Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .local v1, "arguments":[Ljava/lang/String;
    .local v2, "completeCallback":Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .local v3, "logCallback":Lcom/arthenica/ffmpegkit/LogCallback;
    .local v4, "statisticsCallback":Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .local v5, "logRedirectionStrategy":Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v0
.end method


# virtual methods
.method public addStatistics(Lcom/arthenica/ffmpegkit/Statistics;)V
    .locals 2
    .param p1, "statistics"    # Lcom/arthenica/ffmpegkit/Statistics;

    .line 210
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllStatistics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;"
        }
    .end annotation

    .line 171
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getAllStatistics(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllStatistics(I)Ljava/util/List;
    .locals 2
    .param p1, "waitTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->waitForAsynchronousMessagesInTransmit(I)V

    .line 156
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->thereAreAsynchronousMessagesInTransmit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->sessionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getAllStatistics was called to return all statistics but there are still statistics being transmitted for session id %d."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffmpeg-kit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatistics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    return-object v0
.end method

.method public getLastReceivedStatistics()Lcom/arthenica/ffmpegkit/Statistics;
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    iget-object v2, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arthenica/ffmpegkit/Statistics;

    monitor-exit v0

    return-object v1

    .line 198
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatistics()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    return-object v0
.end method

.method public isFFmpeg()Z
    .locals 1

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public isFFprobe()Z
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaInformation()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "FFmpegSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->createTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->startTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->endTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", arguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->arguments:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", logs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getLogsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, ", returnCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", failStackTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->failStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
