.class Lid/wealthstock/viralclip/ClipPipeline$3;
.super Ljava/lang/Object;
.source "ClipPipeline.java"

# interfaces
.implements Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/ClipPipeline;->audioSource(Ljava/lang/String;ILjava/lang/String;)Lid/wealthstock/viralclip/MediaDownloader$FreshUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private first:Z

.field final synthetic val$initialUrl:Ljava/lang/String;

.field final synthetic val$maxHeight:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$initialUrl:Ljava/lang/String;

    iput-object p2, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$url:Ljava/lang/String;

    iput p3, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$maxHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 p1, 0x1

    iput-boolean p1, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->first:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 3

    .line 315
    iget-boolean v0, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->first:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$initialUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$initialUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->first:Z

    .line 317
    iget-object v0, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$initialUrl:Ljava/lang/String;

    return-object v0

    .line 320
    :cond_0
    :try_start_0
    iget-object v0, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$url:Ljava/lang/String;

    const-string v1, "id,en"

    iget v2, p0, Lid/wealthstock/viralclip/ClipPipeline$3;->val$maxHeight:I

    invoke-static {v0, v1, v2}, Lid/wealthstock/viralclip/InnertubeResolver;->resolve(Ljava/lang/String;Ljava/lang/String;I)Lid/wealthstock/viralclip/InnertubeResolver$Source;

    move-result-object v0

    iget-object v0, v0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method
