.class public Lcom/arthenica/ffmpegkit/MediaInformationSession;
.super Lcom/arthenica/ffmpegkit/AbstractSession;
.source "MediaInformationSession.java"

# interfaces
.implements Lcom/arthenica/ffmpegkit/Session;


# instance fields
.field private final completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

.field private mediaInformation:Lcom/arthenica/ffmpegkit/MediaInformation;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V
    .locals 1
    .param p1, "arguments"    # [Ljava/lang/String;
    .param p2, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .param p3, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;

    .line 79
    sget-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    invoke-direct {p0, p1, p3, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    .line 81
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 82
    return-void
.end method

.method public static create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2
    .param p0, "arguments"    # [Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 56
    new-instance v0, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/String;
    .param p1, "completeCallback"    # Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .param p2, "logCallback"    # Lcom/arthenica/ffmpegkit/LogCallback;

    .line 68
    new-instance v0, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V

    return-object v0
.end method


# virtual methods
.method public getCompleteCallback()Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    return-object v0
.end method

.method public getMediaInformation()Lcom/arthenica/ffmpegkit/MediaInformation;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->mediaInformation:Lcom/arthenica/ffmpegkit/MediaInformation;

    return-object v0
.end method

.method public isFFmpeg()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isFFprobe()Z
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaInformation()Z
    .locals 1

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public setMediaInformation(Lcom/arthenica/ffmpegkit/MediaInformation;)V
    .locals 0
    .param p1, "mediaInformation"    # Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 100
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->mediaInformation:Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "MediaInformationSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->createTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->startTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->endTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", arguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->arguments:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", logs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getLogsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", returnCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", failStackTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->failStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
