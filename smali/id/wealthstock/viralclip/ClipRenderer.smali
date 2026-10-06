.class public Lid/wealthstock/viralclip/ClipRenderer;
.super Ljava/lang/Object;
.source "ClipRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/wealthstock/viralclip/ClipRenderer$Listener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static buildArguments(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;DD)[Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    const-string v1, "-ss"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {p3, p4}, Lid/wealthstock/viralclip/ClipRenderer;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v2, "-i"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {p3, p4}, Lid/wealthstock/viralclip/ClipRenderer;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string p0, "-t"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {p5, p6}, Lid/wealthstock/viralclip/ClipRenderer;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string p0, "-filter_complex"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lid/wealthstock/viralclip/ClipRenderer;->filterGraph()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string p0, "-map"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string p1, "[v]"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string p0, "1:a"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const-string p0, "-c:v"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const-string p0, "libx264"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string p0, "-preset"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string p0, "veryfast"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string p0, "-crf"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string p0, "20"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string p0, "-pix_fmt"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string p0, "yuv420p"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string p0, "-c:a"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string p0, "aac"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string p0, "-b:a"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string p0, "160k"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string p0, "-shortest"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string p0, "-movflags"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string p0, "+faststart"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static filterGraph()Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    const-string v1, "[0:v]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    const-string v2, "crop=trunc(ih*9/16/2)*2:ih,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, "scale=1080:1920:flags=lanczos,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, "unsharp=5:5:0.7:5:5:0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string v2, "[v]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static format(D)Ljava/lang/String;
    .locals 3

    .line 176
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 177
    move-wide p0, v0

    .line 179
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.3f"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static run(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;DDLid/wealthstock/viralclip/ClipRenderer$Listener;)Ljava/io/File;
    .locals 3

    .line 190
    invoke-static/range {p0 .. p6}, Lid/wealthstock/viralclip/ClipRenderer;->buildArguments(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;DD)[Ljava/lang/String;

    move-result-object p0

    .line 192
    const/4 p1, 0x0

    if-eqz p7, :cond_2

    .line 193
    invoke-interface {p7}, Lid/wealthstock/viralclip/ClipRenderer$Listener;->onStart()V

    .line 195
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ffmpeg"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    array-length p4, p0

    move p5, p1

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object p6, p0, p5

    .line 197
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    :cond_0
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p7, p3}, Lid/wealthstock/viralclip/ClipRenderer$Listener;->onLog(Ljava/lang/String;)V

    .line 202
    :cond_2
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKit;->executeWithArguments([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getReturnCode()Lcom/arthenica/ffmpegkit/ReturnCode;

    move-result-object p3

    .line 204
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getAllLogs()Ljava/util/List;

    move-result-object p0

    .line 206
    const/4 p4, 0x1

    if-eqz p7, :cond_4

    .line 207
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/arthenica/ffmpegkit/Log;

    .line 208
    invoke-virtual {p6}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    move-result-object p6

    .line 209
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p4, :cond_3

    .line 210
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p7, p6}, Lid/wealthstock/viralclip/ClipRenderer$Listener;->onLog(Ljava/lang/String;)V

    .line 212
    :cond_3
    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p5

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    if-lez p5, :cond_5

    move p5, p4

    goto :goto_2

    :cond_5
    move p5, p1

    .line 216
    :goto_2
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/arthenica/ffmpegkit/ReturnCode;->isValueSuccess()Z

    move-result p6

    if-eqz p6, :cond_7

    if-eqz p5, :cond_7

    .line 217
    if-eqz p7, :cond_6

    .line 218
    invoke-interface {p7, p2}, Lid/wealthstock/viralclip/ClipRenderer$Listener;->onDone(Ljava/io/File;)V

    .line 220
    :cond_6
    return-object p2

    .line 227
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p6

    sub-int/2addr p6, p4

    :goto_3
    const-string p4, "\n"

    if-ltz p6, :cond_c

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x384

    if-ge v0, v1, :cond_c

    .line 229
    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arthenica/ffmpegkit/Log;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_8

    .line 231
    goto :goto_4

    .line 233
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 235
    goto :goto_4

    .line 237
    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 238
    invoke-virtual {p2, p1, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_a
    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "No such"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 242
    const-string v1, "Invalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 243
    goto :goto_5

    .line 228
    :cond_b
    :goto_4
    add-int/lit8 p6, p6, -0x1

    goto :goto_3

    .line 247
    :cond_c
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ffmpeg returned "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 248
    if-nez p3, :cond_d

    const-string p1, "null"

    goto :goto_6

    :cond_d
    invoke-virtual {p3}, Lcom/arthenica/ffmpegkit/ReturnCode;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", output "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 249
    if-eqz p5, :cond_e

    const-string p1, "present"

    goto :goto_7

    :cond_e
    const-string p1, "missing"

    :goto_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_f

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    :cond_f
    if-eqz p7, :cond_10

    .line 254
    invoke-interface {p7, p0}, Lid/wealthstock/viralclip/ClipRenderer$Listener;->onFail(Ljava/lang/String;)V

    .line 256
    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method
