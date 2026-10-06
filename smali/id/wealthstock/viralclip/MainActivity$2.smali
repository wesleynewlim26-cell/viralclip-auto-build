.class Lid/wealthstock/viralclip/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lid/wealthstock/viralclip/ClipPipeline$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lid/wealthstock/viralclip/MainActivity;

.field final synthetic val$workDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V
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

    .line 203
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    iput-object p2, p0, Lid/wealthstock/viralclip/MainActivity$2;->val$workDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$200(Lid/wealthstock/viralclip/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/wealthstock/viralclip/MainActivity$2$5;

    invoke-direct {v1, p0, p1}, Lid/wealthstock/viralclip/MainActivity$2$5;-><init>(Lid/wealthstock/viralclip/MainActivity$2;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$200(Lid/wealthstock/viralclip/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/wealthstock/viralclip/MainActivity$2$6;

    invoke-direct {v1, p0, p1}, Lid/wealthstock/viralclip/MainActivity$2$6;-><init>(Lid/wealthstock/viralclip/MainActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$200(Lid/wealthstock/viralclip/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/wealthstock/viralclip/MainActivity$2$2;

    invoke-direct {v1, p0, p1}, Lid/wealthstock/viralclip/MainActivity$2$2;-><init>(Lid/wealthstock/viralclip/MainActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public onPicked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Window;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$200(Lid/wealthstock/viralclip/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/wealthstock/viralclip/MainActivity$2$4;

    invoke-direct {v1, p0, p1}, Lid/wealthstock/viralclip/MainActivity$2$4;-><init>(Lid/wealthstock/viralclip/MainActivity$2;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public onResolved(Lid/wealthstock/viralclip/InnertubeResolver$Source;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$200(Lid/wealthstock/viralclip/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/wealthstock/viralclip/MainActivity$2$3;

    invoke-direct {v1, p0, p1}, Lid/wealthstock/viralclip/MainActivity$2$3;-><init>(Lid/wealthstock/viralclip/MainActivity$2;Lid/wealthstock/viralclip/InnertubeResolver$Source;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public onStage(Ljava/lang/String;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$200(Lid/wealthstock/viralclip/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/wealthstock/viralclip/MainActivity$2$1;

    invoke-direct {v1, p0, p1}, Lid/wealthstock/viralclip/MainActivity$2$1;-><init>(Lid/wealthstock/viralclip/MainActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method
