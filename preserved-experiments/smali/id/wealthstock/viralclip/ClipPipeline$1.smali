.class Lid/wealthstock/viralclip/ClipPipeline$1;
.super Ljava/lang/Object;
.source "ClipPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/ClipPipeline;->run(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

.field final synthetic val$clipCount:I

.field final synthetic val$maxHeight:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$workDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$url:Ljava/lang/String;

    iput p2, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$clipCount:I

    iput p3, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$maxHeight:I

    iput-object p4, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$workDir:Ljava/io/File;

    iput-object p5, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 67
    :try_start_0
    iget-object v0, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$url:Ljava/lang/String;

    iget v1, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$clipCount:I

    iget v2, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$maxHeight:I

    iget-object v3, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$workDir:Ljava/io/File;

    iget-object v4, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lid/wealthstock/viralclip/ClipPipeline;->access$000(Ljava/lang/String;IILjava/io/File;Lid/wealthstock/viralclip/ClipPipeline$Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lid/wealthstock/viralclip/ClipPipeline$1;->val$callback:Lid/wealthstock/viralclip/ClipPipeline$Callback;

    invoke-static {v0}, Lid/wealthstock/viralclip/ClipPipeline;->access$100(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lid/wealthstock/viralclip/ClipPipeline$Callback;->onFailed(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void
.end method
