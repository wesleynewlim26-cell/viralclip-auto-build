.class Lid/wealthstock/viralclip/MainActivity$2$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity$2;->onPicked(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lid/wealthstock/viralclip/MainActivity$2;

.field final synthetic val$windows:Ljava/util/List;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/MainActivity$2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$2$4;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iput-object p2, p0, Lid/wealthstock/viralclip/MainActivity$2$4;->val$windows:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    iget-object v1, p0, Lid/wealthstock/viralclip/MainActivity$2$4;->val$windows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/wealthstock/viralclip/AudioMomentPicker$Window;

    .line 242
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v4, v2, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    .line 244
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v2, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->end:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 245
    invoke-virtual {v2}, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->duration()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v2, v2, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->reason:Ljava/lang/String;

    filled-new-array {v4, v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 242
    const-string v4, "  %.1f-%.1f  (%.1fs)  %s\n"

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lid/wealthstock/viralclip/MainActivity$2$4;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v1, v1, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lid/wealthstock/viralclip/MainActivity$2$4;->val$windows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " momen:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lid/wealthstock/viralclip/MainActivity;->access$300(Lid/wealthstock/viralclip/MainActivity;Ljava/lang/String;)V

    .line 248
    return-void
.end method
