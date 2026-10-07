.class public Lid/wealthstock/viralclip/AudioMomentPicker;
.super Ljava/lang/Object;
.source "AudioMomentPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;,
        Lid/wealthstock/viralclip/AudioMomentPicker$Scored;,
        Lid/wealthstock/viralclip/AudioMomentPicker$Window;
    }
.end annotation


# static fields
.field private static final FRAMES_PER_SECOND:I = 0x14

.field static final MAX_SECONDS:D = 50.0

.field static final MIN_SECONDS:D = 45.0

.field private static final MIN_SEPARATION:D = 5.0

.field private static final MIN_SILENCE:D = 0.3

.field private static final MIN_SPEECH_SHARE:D = 0.55

.field private static final PREFERRED_SECONDS:D = 47.5

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final SILENCE_FLOOR:D = 0.02

.field private static final SILENCE_FRAMES:I

.field private static final TAG:Ljava/lang/String; = "ViralClipAudio"


# instance fields
.field private final targetCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    nop

    .line 110
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lid/wealthstock/viralclip/AudioMomentPicker;->SILENCE_FRAMES:I

    .line 109
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lid/wealthstock/viralclip/AudioMomentPicker;->targetCount:I

    .line 117
    return-void
.end method

.method public static analyse(Ljava/io/File;Ljava/io/File;)Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;
    .locals 9

    .line 186
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto/16 :goto_8

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    return-object v0

    .line 200
    :cond_1
    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 201
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "envelope-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lid/wealthstock/viralclip/AudioMomentPicker;->fingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".env"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    :goto_0
    if-eqz v1, :cond_3

    .line 203
    invoke-static {v1}, Lid/wealthstock/viralclip/AudioMomentPicker;->readCache(Ljava/io/File;)Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_3

    .line 205
    return-object v2

    .line 211
    :cond_3
    :try_start_0
    const-string v2, "viralclip-env-"

    const-string v5, ".f32"

    invoke-static {v2, v5, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 214
    nop

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0x18

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    const-string v5, "-y"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v5, "-v"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v5, "error"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v5, "-i"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v5, "-vn"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v5, "-ac"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v5, "1"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v5, "-ar"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const/16 v5, 0x3e80

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v5, "-f"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v5, "f32le"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v6}, Lcom/arthenica/ffmpegkit/FFmpegKit;->executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v6

    .line 231
    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getReturnCode()Lcom/arthenica/ffmpegkit/ReturnCode;

    move-result-object v6

    .line 232
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/ReturnCode;->isValueSuccess()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_5

    .line 237
    :cond_4
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5}, Lcom/arthenica/ffmpegkit/FFmpegKit;->executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object v5

    .line 238
    invoke-virtual {v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getReturnCode()Lcom/arthenica/ffmpegkit/ReturnCode;

    move-result-object v6

    .line 239
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/ReturnCode;->isValueSuccess()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-gez v3, :cond_5

    goto :goto_1

    .line 269
    :cond_5
    :try_start_1
    invoke-static {p1}, Lid/wealthstock/viralclip/AudioMomentPicker;->readEnvelope(Ljava/io/File;)Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;

    move-result-object p0

    .line 270
    if-eqz p0, :cond_6

    if-eqz v1, :cond_6

    .line 271
    invoke-static {v1, p0}, Lid/wealthstock/viralclip/AudioMomentPicker;->writeCache(Ljava/io/File;Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_6
    nop

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 273
    return-object p0

    .line 278
    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 279
    throw p0

    .line 274
    :catch_0
    move-exception p0

    .line 275
    nop

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 275
    return-object v0

    .line 240
    :cond_7
    :goto_1
    nop

    .line 242
    :try_start_2
    invoke-virtual {v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getAllLogs()Ljava/util/List;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arthenica/ffmpegkit/Log;

    .line 246
    invoke-virtual {v4}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 247
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 248
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_8
    goto :goto_2

    .line 251
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v0

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 256
    :cond_b
    move-object v1, v0

    :goto_3
    goto :goto_4

    .line 253
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 257
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode gagal: code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_c

    const-string v4, "null"

    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Lcom/arthenica/ffmpegkit/ReturnCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " raw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_6

    :cond_d
    const-wide/16 v4, -0x1

    :goto_6
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " audioBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 261
    if-nez v1, :cond_e

    const-string v1, ""

    goto :goto_7

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 257
    const-string v1, "ViralClipAudio"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ffmpeg args: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Lid/wealthstock/viralclip/AudioMomentPicker;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 264
    return-object v0

    .line 212
    :catch_2
    move-exception p0

    .line 213
    return-object v0

    .line 187
    :cond_f
    :goto_8
    return-object v0
.end method

.method private static conflicts(Lid/wealthstock/viralclip/AudioMomentPicker$Scored;Ljava/util/List;D)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Scored;",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Scored;",
            ">;D)Z"
        }
    .end annotation

    .line 763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;

    .line 764
    iget-wide v1, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->start:D

    iget-wide v3, v0, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->end:D

    add-double/2addr v3, p2

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    iget-wide v0, v0, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->start:D

    iget-wide v2, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->end:D

    add-double/2addr v2, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 766
    const/4 p0, 0x1

    return p0

    .line 768
    :cond_0
    goto :goto_0

    .line 769
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private earliestFirst(Ljava/util/List;ID)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Scored;",
            ">;ID)",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Scored;",
            ">;"
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 779
    new-instance p1, Lid/wealthstock/viralclip/AudioMomentPicker$2;

    invoke-direct {p1, p0}, Lid/wealthstock/viralclip/AudioMomentPicker$2;-><init>(Lid/wealthstock/viralclip/AudioMomentPicker;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 785
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 786
    nop

    .line 787
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;

    .line 788
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, p2, :cond_0

    .line 789
    goto :goto_1

    .line 791
    :cond_0
    iget-wide v4, v3, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->start:D

    add-double v6, v1, p3

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 792
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    iget-wide v1, v3, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->end:D

    .line 795
    :cond_1
    goto :goto_0

    .line 796
    :cond_2
    :goto_1
    return-object p1
.end method

.method private static fingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 299
    :try_start_0
    const-string v0, "SHA-1"

    .line 300
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 301
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    .line 304
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private grow(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;[ZID)Lid/wealthstock/viralclip/AudioMomentPicker$Scored;
    .locals 15

    .line 574
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    array-length v0, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_b

    aget-boolean v0, v2, v3

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 577
    :cond_0
    const-wide v5, 0x408c200000000000L    # 900.0

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v0, v5

    .line 578
    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    .line 579
    const-wide v6, 0x408db00000000000L    # 950.0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 581
    nop

    .line 582
    const/4 v7, -0x1

    move v8, v7

    move v7, v3

    :goto_0
    array-length v9, v2

    if-ge v7, v9, :cond_6

    .line 583
    sub-int v9, v7, v3

    if-le v9, v5, :cond_1

    .line 584
    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {v1, v7}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->time(I)D

    move-result-wide v10

    cmpl-double v10, v10, p4

    if-lez v10, :cond_2

    .line 587
    goto :goto_1

    .line 589
    :cond_2
    nop

    .line 590
    add-int/lit8 v9, v9, 0x1

    .line 591
    if-lt v9, v0, :cond_3

    invoke-static {v2, v7}, Lid/wealthstock/viralclip/AudioMomentPicker;->isPauseStart([ZI)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 592
    goto :goto_2

    .line 594
    :cond_3
    if-lt v9, v6, :cond_4

    invoke-static {v2, v7}, Lid/wealthstock/viralclip/AudioMomentPicker;->isPauseStart([ZI)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 595
    goto :goto_2

    .line 597
    :cond_4
    if-lt v9, v5, :cond_5

    .line 598
    goto :goto_2

    .line 582
    :cond_5
    add-int/lit8 v8, v7, 0x1

    move v14, v8

    move v8, v7

    move v7, v14

    goto :goto_0

    .line 601
    :cond_6
    :goto_1
    move v7, v8

    :goto_2
    if-ltz v7, :cond_a

    sub-int v5, v7, v3

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_7

    goto :goto_3

    .line 605
    :cond_7
    invoke-virtual {v1, v3}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->time(I)D

    move-result-wide v5

    .line 606
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v1, v0}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->time(I)D

    move-result-wide v8

    .line 607
    sub-double v10, v8, v5

    const-wide v12, 0x4046800000000000L    # 45.0

    cmpg-double v0, v10, v12

    if-gez v0, :cond_8

    .line 608
    return-object v4

    .line 610
    :cond_8
    const-wide v12, 0x4049066666666666L    # 50.05

    cmpl-double v0, v10, v12

    if-lez v0, :cond_9

    .line 611
    return-object v4

    .line 614
    :cond_9
    move-object v0, p0

    move v4, v7

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lid/wealthstock/viralclip/AudioMomentPicker;->score(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;[ZIIDD)Lid/wealthstock/viralclip/AudioMomentPicker$Scored;

    move-result-object v1

    return-object v1

    .line 602
    :cond_a
    :goto_3
    return-object v4

    .line 575
    :cond_b
    :goto_4
    return-object v4
.end method

.method private static isPauseStart([ZI)Z
    .locals 4

    .line 619
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 620
    array-length v1, p0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_3

    aget-boolean v1, p0, p1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 623
    :cond_0
    nop

    .line 624
    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge p1, v3, :cond_1

    aget-boolean v3, p0, p1

    if-nez v3, :cond_1

    .line 625
    add-int/lit8 v1, v1, 0x1

    .line 624
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 627
    :cond_1
    sget p0, Lid/wealthstock/viralclip/AudioMomentPicker;->SILENCE_FRAMES:I

    if-lt v1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    .line 621
    :cond_3
    :goto_2
    return v2
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 287
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static markSpeech(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;)[Z
    .locals 9

    .line 526
    invoke-virtual {p0}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->frames()I

    move-result v0

    .line 527
    new-array v1, v0, [Z

    .line 528
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    .line 529
    iget-object v5, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->level:[F

    aget v5, v5, v3

    float-to-double v5, v5

    const-wide v7, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    aput-boolean v4, v1, v3

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_1
    new-array p0, v0, [Z

    .line 535
    nop

    .line 536
    const/4 v3, -0x1

    move v5, v2

    move v6, v3

    :goto_2
    if-ge v5, v0, :cond_5

    .line 537
    aget-boolean v7, v1, v5

    if-eqz v7, :cond_2

    .line 538
    if-gez v6, :cond_4

    .line 539
    move v6, v5

    goto :goto_4

    .line 543
    :cond_2
    if-ltz v6, :cond_3

    sub-int v7, v5, v6

    sget v8, Lid/wealthstock/viralclip/AudioMomentPicker;->SILENCE_FRAMES:I

    if-ge v7, v8, :cond_3

    .line 544
    nop

    :goto_3
    if-ge v6, v5, :cond_3

    .line 545
    aput-boolean v4, p0, v6

    .line 544
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 548
    :cond_3
    move v6, v3

    .line 536
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 550
    :cond_5
    if-ltz v6, :cond_6

    sub-int v3, v0, v6

    sget v5, Lid/wealthstock/viralclip/AudioMomentPicker;->SILENCE_FRAMES:I

    if-ge v3, v5, :cond_6

    .line 551
    nop

    :goto_5
    if-ge v6, v0, :cond_6

    .line 552
    aput-boolean v4, p0, v6

    .line 551
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 555
    :cond_6
    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_9

    .line 556
    aget-boolean v5, p0, v3

    if-nez v5, :cond_8

    aget-boolean v5, v1, v3

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    move v5, v2

    goto :goto_8

    :cond_8
    :goto_7
    move v5, v4

    :goto_8
    aput-boolean v5, p0, v3

    .line 555
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 558
    :cond_9
    return-object p0
.end method

.method public static maxFeasible(D)I
    .locals 2

    .line 447
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 448
    const/4 p0, 0x0

    return p0

    .line 450
    :cond_0
    nop

    .line 451
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static readCache(Ljava/io/File;)Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;
    .locals 10

    .line 334
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 343
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 351
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v0

    div-int/lit8 v0, v0, 0x4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    if-gtz v0, :cond_1

    .line 353
    nop

    .line 361
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    return-object v1

    .line 355
    :cond_1
    :try_start_3
    new-array v4, v0, [F

    .line 356
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 357
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    aput v9, v4, v3

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_2
    new-instance v3, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;

    invoke-direct/range {v3 .. v8}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;-><init>([FDD)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 359
    return-object v3

    .line 361
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 362
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 365
    return-object v1

    .line 335
    :cond_3
    :goto_1
    return-object v1
.end method

.method private static readEnvelope(Ljava/io/File;)Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    nop

    .line 372
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/16 v2, 0x320

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 373
    const/16 v1, 0x384

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 374
    return-object v2

    .line 376
    :cond_0
    new-array v4, v0, [F

    .line 380
    nop

    .line 381
    const/high16 v1, 0x190000

    new-array v1, v1, [B

    .line 382
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    const/4 p0, 0x0

    move v5, p0

    .line 385
    :goto_0
    if-ge v5, v0, :cond_4

    .line 386
    sub-int v6, v0, v5

    const/16 v7, 0x200

    :try_start_0
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 387
    const/16 v7, 0xc80

    mul-int/2addr v6, v7

    invoke-static {v3, v1, v6}, Lid/wealthstock/viralclip/AudioMomentPicker;->readFully(Ljava/io/RandomAccessFile;[BI)I

    move-result v6

    .line 388
    div-int/2addr v6, v7

    .line 389
    if-gtz v6, :cond_1

    .line 390
    goto :goto_3

    .line 392
    :cond_1
    mul-int/lit16 v7, v6, 0x320

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v1, p0, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 393
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 394
    move v8, p0

    :goto_1
    if-ge v8, v6, :cond_3

    .line 395
    nop

    .line 396
    const-wide/16 v9, 0x0

    move v11, p0

    :goto_2
    const/16 v12, 0x320

    if-ge v11, v12, :cond_2

    .line 397
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    .line 398
    mul-float/2addr v12, v12

    float-to-double v12, v12

    add-double/2addr v9, v12

    .line 396
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 400
    :cond_2
    add-int v11, v5, v8

    const-wide/high16 v12, 0x4089000000000000L    # 800.0

    div-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v4, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 402
    :cond_3
    add-int/2addr v5, v6

    .line 403
    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 406
    throw p0

    .line 405
    :cond_4
    :goto_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 406
    nop

    .line 408
    nop

    .line 409
    const/4 v1, 0x0

    move v3, p0

    :goto_4
    if-ge v3, v0, :cond_6

    aget v5, v4, v3

    .line 410
    cmpl-float v6, v5, v1

    if-lez v6, :cond_5

    .line 411
    move v1, v5

    .line 409
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 414
    :cond_6
    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_7

    .line 415
    return-object v2

    .line 417
    :cond_7
    nop

    :goto_5
    if-ge p0, v0, :cond_8

    .line 418
    aget v2, v4, p0

    div-float/2addr v2, v1

    aput v2, v4, p0

    .line 417
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 420
    :cond_8
    new-instance v3, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;

    int-to-double v0, v0

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    div-double v7, v0, v5

    const-wide v5, 0x3fa999999999999aL    # 0.05

    invoke-direct/range {v3 .. v8}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;-><init>([FDD)V

    return-object v3
.end method

.method private static readFully(Ljava/io/RandomAccessFile;[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    const/4 v0, 0x0

    .line 428
    :goto_0
    if-ge v0, p2, :cond_1

    .line 429
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 430
    if-gez v1, :cond_0

    .line 431
    goto :goto_1

    .line 433
    :cond_0
    add-int/2addr v0, v1

    .line 434
    goto :goto_0

    .line 435
    :cond_1
    :goto_1
    return v0
.end method

.method private score(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;[ZIIDD)Lid/wealthstock/viralclip/AudioMomentPicker$Scored;
    .locals 22

    .line 641
    move/from16 v0, p4

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    sub-int v5, v0, p3

    add-int/lit8 v5, v5, 0x1

    .line 642
    nop

    .line 643
    nop

    .line 644
    nop

    .line 645
    move/from16 v9, p3

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    :goto_0
    if-gt v9, v0, :cond_1

    .line 646
    move-object/from16 v15, p1

    iget-object v8, v15, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->level:[F

    aget v8, v8, v9

    .line 647
    float-to-double v6, v8

    add-double/2addr v10, v6

    .line 648
    mul-float/2addr v8, v8

    float-to-double v6, v8

    add-double/2addr v12, v6

    .line 649
    aget-boolean v6, p2, v9

    if-eqz v6, :cond_0

    .line 650
    add-int/lit8 v14, v14, 0x1

    .line 645
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 653
    :cond_1
    int-to-double v5, v5

    div-double/2addr v10, v5

    .line 654
    div-double/2addr v12, v5

    mul-double v7, v10, v10

    sub-double/2addr v12, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 655
    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v9, v10, v17

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v7, v10

    .line 656
    :goto_1
    int-to-double v12, v14

    div-double/2addr v12, v5

    .line 658
    nop

    .line 659
    move/from16 v5, p3

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    .line 660
    aget-boolean v9, p2, v5

    if-eqz v9, :cond_4

    add-int/lit8 v9, v5, 0x1

    aget-boolean v14, p2, v9

    if-nez v14, :cond_4

    .line 661
    nop

    .line 662
    const/4 v14, 0x0

    :goto_3
    add-int/lit8 v15, v0, 0x1

    if-ge v9, v15, :cond_3

    aget-boolean v15, p2, v9

    if-nez v15, :cond_3

    .line 663
    add-int/lit8 v14, v14, 0x1

    .line 662
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 665
    :cond_3
    sget v9, Lid/wealthstock/viralclip/AudioMomentPicker;->SILENCE_FRAMES:I

    if-lt v14, v9, :cond_4

    .line 666
    add-int/lit8 v6, v6, 0x1

    .line 659
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 673
    :cond_5
    const-wide v14, 0x3fe199999999999aL    # 0.55

    cmpg-double v0, v12, v14

    const/4 v5, 0x0

    if-gez v0, :cond_6

    .line 674
    return-object v5

    .line 677
    :cond_6
    const-wide v16, 0x4046800000000000L    # 45.0

    mul-double v16, v16, v10

    .line 678
    move-wide/from16 v18, v14

    const-wide v14, 0x3ff3333333333333L    # 1.2

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    const-wide/high16 v20, 0x4032000000000000L    # 18.0

    mul-double v14, v14, v20

    add-double v16, v16, v14

    .line 679
    const/16 v0, 0xc

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v14, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v14, v14, v20

    add-double v16, v16, v14

    const-wide/high16 v14, 0x4028000000000000L    # 12.0

    mul-double/2addr v14, v12

    add-double v16, v16, v14

    .line 681
    aget-boolean v0, p2, p3

    if-nez v0, :cond_7

    .line 682
    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    sub-double v16, v16, v14

    .line 685
    :cond_7
    sub-double v14, v3, v1

    const-wide v20, 0x4047c00000000000L    # 47.5

    sub-double v14, v14, v20

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v20

    sub-double v14, v16, v14

    .line 688
    const-wide v16, 0x3feb333333333333L    # 0.85

    cmpg-double v0, v12, v16

    if-gez v0, :cond_8

    .line 689
    const-string v0, "banyak jeda, jelas ada jeda antar kalimat"

    goto :goto_4

    .line 690
    :cond_8
    cmpl-double v0, v7, v18

    if-lez v0, :cond_9

    .line 691
    const-string v0, "suara naik-turun, nadavariesi tinggi"

    goto :goto_4

    .line 692
    :cond_9
    cmpl-double v0, v10, v18

    if-lez v0, :cond_a

    .line 693
    const-string v0, "suara keras dan konsisten"

    goto :goto_4

    .line 695
    :cond_a
    const-string v0, "ucapan jelas sepanjang 45 detik"

    .line 698
    :goto_4
    new-instance v6, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;

    invoke-direct {v6, v5}, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;-><init>(Lid/wealthstock/viralclip/AudioMomentPicker$1;)V

    .line 699
    iput-wide v1, v6, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->start:D

    .line 700
    iput-wide v3, v6, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->end:D

    .line 701
    iput-wide v14, v6, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->score:D

    .line 702
    iput-object v0, v6, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->reason:Ljava/lang/String;

    .line 703
    return-object v6
.end method

.method private spread(Ljava/util/List;IDD)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Scored;",
            ">;IDD)",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Scored;",
            ">;"
        }
    .end annotation

    .line 723
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 724
    if-gtz v1, :cond_0

    .line 725
    return-object v4

    .line 727
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 728
    int-to-double v6, v1

    div-double v6, p3, v6

    .line 730
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v1, :cond_8

    .line 731
    int-to-double v9, v8

    mul-double/2addr v9, v6

    .line 732
    add-int/lit8 v8, v8, 0x1

    int-to-double v11, v8

    mul-double/2addr v11, v6

    .line 733
    nop

    .line 734
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;

    .line 735
    move-wide/from16 p3, v6

    iget-wide v6, v15, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->start:D

    cmpg-double v6, v6, v9

    if-ltz v6, :cond_5

    iget-wide v6, v15, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->start:D

    cmpl-double v6, v6, v11

    if-ltz v6, :cond_1

    .line 736
    goto :goto_2

    .line 738
    :cond_1
    invoke-static {v15, v4, v2, v3}, Lid/wealthstock/viralclip/AudioMomentPicker;->conflicts(Lid/wealthstock/viralclip/AudioMomentPicker$Scored;Ljava/util/List;D)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 739
    goto :goto_2

    .line 741
    :cond_2
    if-eqz v14, :cond_3

    iget-wide v6, v15, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->score:D

    move-wide/from16 v16, v6

    iget-wide v6, v14, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->score:D

    cmpl-double v6, v16, v6

    if-lez v6, :cond_4

    .line 742
    :cond_3
    move-object v14, v15

    .line 744
    :cond_4
    move-wide/from16 v6, p3

    goto :goto_1

    .line 734
    :cond_5
    :goto_2
    move-wide/from16 v6, p3

    goto :goto_1

    .line 745
    :cond_6
    move-wide/from16 p3, v6

    if-eqz v14, :cond_7

    .line 746
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-interface {v5, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 730
    :cond_7
    move-wide/from16 v6, p3

    goto :goto_0

    .line 751
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v1, :cond_9

    .line 752
    move-object/from16 v5, p0

    invoke-direct {v5, v0, v1, v2, v3}, Lid/wealthstock/viralclip/AudioMomentPicker;->earliestFirst(Ljava/util/List;ID)Ljava/util/List;

    move-result-object v0

    .line 753
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 754
    move-object v4, v0

    goto :goto_3

    .line 751
    :cond_9
    move-object/from16 v5, p0

    .line 757
    :cond_a
    :goto_3
    return-object v4
.end method

.method private static writeCache(Ljava/io/File;Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;)V
    .locals 3

    .line 315
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :try_start_1
    iget-wide v1, p1, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->secondsPerFrame:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 320
    iget-wide v1, p1, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->totalSeconds:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 321
    iget-object p0, p1, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->level:[F

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p0, v1

    .line 322
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 326
    nop

    .line 329
    goto :goto_1

    .line 325
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 326
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    :catch_0
    move-exception p0

    .line 330
    :goto_1
    return-void
.end method


# virtual methods
.method public pick(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;",
            ")",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Window;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->frames()I

    move-result v1

    const/16 v2, 0x384

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 466
    :cond_0
    iget-wide v6, p1, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->totalSeconds:D

    .line 467
    iget v1, p0, Lid/wealthstock/viralclip/AudioMomentPicker;->targetCount:I

    invoke-static {v6, v7}, Lid/wealthstock/viralclip/AudioMomentPicker;->maxFeasible(D)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 468
    if-gtz v1, :cond_1

    .line 469
    return-object v0

    .line 472
    :cond_1
    invoke-static {p1}, Lid/wealthstock/viralclip/AudioMomentPicker;->markSpeech(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;)[Z

    move-result-object v5

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 474
    const/4 v10, 0x0

    move-wide v7, v6

    move v6, v10

    :goto_0
    invoke-virtual {p1}, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->frames()I

    move-result v3

    if-ge v6, v3, :cond_3

    .line 475
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lid/wealthstock/viralclip/AudioMomentPicker;->grow(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;[ZID)Lid/wealthstock/viralclip/AudioMomentPicker$Scored;

    move-result-object p1

    .line 476
    move v3, v6

    move-wide v6, v7

    if-eqz p1, :cond_2

    .line 477
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_2
    add-int/lit8 p1, v3, 0x1

    move-wide v7, v6

    move v6, p1

    move-object p1, v4

    goto :goto_0

    .line 480
    :cond_3
    move-wide v6, v7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 481
    return-object v0

    .line 484
    :cond_4
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    move-object v3, p0

    move v5, v1

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lid/wealthstock/viralclip/AudioMomentPicker;->spread(Ljava/util/List;IDD)Ljava/util/List;

    move-result-object p1

    .line 485
    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    :goto_1
    if-ge v10, v0, :cond_7

    aget-wide v8, v1, v10

    .line 486
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_5

    .line 487
    goto :goto_2

    .line 489
    :cond_5
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lid/wealthstock/viralclip/AudioMomentPicker;->spread(Ljava/util/List;IDD)Ljava/util/List;

    move-result-object v2

    .line 490
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-le v3, v8, :cond_6

    .line 491
    move-object p1, v2

    .line 485
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 495
    :cond_7
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;

    .line 497
    new-instance v2, Lid/wealthstock/viralclip/AudioMomentPicker$Window;

    iget-wide v3, v1, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->start:D

    iget-wide v5, v1, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->end:D

    iget-wide v7, v1, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->score:D

    iget-object v9, v1, Lid/wealthstock/viralclip/AudioMomentPicker$Scored;->reason:Ljava/lang/String;

    invoke-direct/range {v2 .. v9}, Lid/wealthstock/viralclip/AudioMomentPicker$Window;-><init>(DDDLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    goto :goto_3

    .line 499
    :cond_8
    new-instance p1, Lid/wealthstock/viralclip/AudioMomentPicker$1;

    invoke-direct {p1, p0}, Lid/wealthstock/viralclip/AudioMomentPicker$1;-><init>(Lid/wealthstock/viralclip/AudioMomentPicker;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 505
    return-object v0

    .line 464
    :cond_9
    :goto_4
    return-object v0

    :array_0
    .array-data 8
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
