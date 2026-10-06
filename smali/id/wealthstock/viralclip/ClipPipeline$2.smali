.class Lid/wealthstock/viralclip/ClipPipeline$2;
.super Ljava/lang/Object;
.source "ClipPipeline.java"

# interfaces
.implements Lid/wealthstock/viralclip/MediaDownloader$Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/ClipPipeline;->downloadProgress(Ljava/lang/String;Lid/wealthstock/viralclip/ClipPipeline$Callback;)Lid/wealthstock/viralclip/MediaDownloader$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

.field final synthetic val$what:Ljava/lang/String;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/ClipPipeline$Callback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lid/wealthstock/viralclip/ClipPipeline$2;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    iput-object p2, p0, Lid/wealthstock/viralclip/ClipPipeline$2;->val$what:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJI)V
    .locals 3

    .line 288
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 289
    iget-object p1, p0, Lid/wealthstock/viralclip/ClipPipeline$2;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Percobaan "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, "/5 ditolak (HTTP "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), mengulang"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 291
    return-void

    .line 293
    :cond_0
    cmp-long v0, p3, v0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    if-lez v0, :cond_1

    .line 294
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p1, p1

    div-double/2addr p1, v1

    .line 295
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    long-to-double p2, p3

    div-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 294
    const-string p2, "%.1f/%.1f MB"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 296
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    div-double/2addr p1, v1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    :goto_0
    iget-object p2, p0, Lid/wealthstock/viralclip/ClipPipeline$2;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Mengunduh "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lid/wealthstock/viralclip/ClipPipeline$2;->val$what:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 298
    const/4 p3, 0x1

    if-le p5, p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  (percobaan "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, ""

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-interface {p2, p1}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 299
    return-void
.end method
