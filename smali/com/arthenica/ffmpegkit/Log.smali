.class public Lcom/arthenica/ffmpegkit/Log;
.super Ljava/lang/Object;
.source "Log.java"


# instance fields
.field private final level:Lcom/arthenica/ffmpegkit/Level;

.field private final message:Ljava/lang/String;

.field private final sessionId:J


# direct methods
.method public constructor <init>(JLcom/arthenica/ffmpegkit/Level;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # J
    .param p3, "level"    # Lcom/arthenica/ffmpegkit/Level;
    .param p4, "message"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Log;->sessionId:J

    .line 32
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/Log;->level:Lcom/arthenica/ffmpegkit/Level;

    .line 33
    iput-object p4, p0, Lcom/arthenica/ffmpegkit/Log;->message:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getLevel()Lcom/arthenica/ffmpegkit/Level;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/Log;->level:Lcom/arthenica/ffmpegkit/Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/Log;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/Log;->sessionId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Log{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Log;->sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/Log;->level:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/Log;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
