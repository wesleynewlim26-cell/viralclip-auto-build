.class Lid/wealthstock/viralclip/MainActivity$2$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity$2;->onClipReady(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lid/wealthstock/viralclip/MainActivity$2;

.field final synthetic val$videos:Ljava/util/List;


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

    .line 254
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$2$5;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iput-object p2, p0, Lid/wealthstock/viralclip/MainActivity$2$5;->val$videos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$5;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lid/wealthstock/viralclip/MainActivity;->access$400(Lid/wealthstock/viralclip/MainActivity;Z)V

    .line 258
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$5;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$100(Lid/wealthstock/viralclip/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lid/wealthstock/viralclip/MainActivity$2$5;->val$videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " klip jadi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$5;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    iget-object v1, p0, Lid/wealthstock/viralclip/MainActivity$2$5;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v1, v1, Lid/wealthstock/viralclip/MainActivity$2;->val$workDir:Ljava/io/File;

    invoke-static {v0, v1}, Lid/wealthstock/viralclip/MainActivity;->access$500(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V

    .line 260
    return-void
.end method
