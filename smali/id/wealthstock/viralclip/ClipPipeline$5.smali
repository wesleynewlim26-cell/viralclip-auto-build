.class Lid/wealthstock/viralclip/ClipPipeline$5;
.super Ljava/lang/Object;
.source "ClipPipeline.java"

# interfaces
.implements Lid/wealthstock/viralclip/ClipRenderer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/ClipPipeline;->render(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lid/wealthstock/viralclip/AudioMomentPicker$Window;Lid/wealthstock/viralclip/ClipPipeline$Callback;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/ClipPipeline$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lid/wealthstock/viralclip/ClipPipeline$5;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/io/File;)V
    .locals 0

    .line 388
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 393
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lid/wealthstock/viralclip/ClipPipeline$5;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    invoke-interface {v0, p1}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 378
    iget-object v0, p0, Lid/wealthstock/viralclip/ClipPipeline$5;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    const-string v1, "merender"

    invoke-interface {v0, v1}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onMessage(Ljava/lang/String;)V

    .line 379
    return-void
.end method
