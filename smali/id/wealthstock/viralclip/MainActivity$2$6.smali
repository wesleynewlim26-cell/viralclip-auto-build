.class Lid/wealthstock/viralclip/MainActivity$2$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity$2;->onFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lid/wealthstock/viralclip/MainActivity$2;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/MainActivity$2;Ljava/lang/String;)V
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

    .line 266
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iput-object p2, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 269
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lid/wealthstock/viralclip/MainActivity;->access$400(Lid/wealthstock/viralclip/MainActivity;Z)V

    .line 270
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$100(Lid/wealthstock/viralclip/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "Gagal"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    iget-object v2, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->val$reason:Ljava/lang/String;

    invoke-static {v0, v2}, Lid/wealthstock/viralclip/MainActivity;->access$300(Lid/wealthstock/viralclip/MainActivity;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    iget-object v2, p0, Lid/wealthstock/viralclip/MainActivity$2$6;->val$reason:Ljava/lang/String;

    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lid/wealthstock/viralclip/MainActivity;->access$600(Lid/wealthstock/viralclip/MainActivity;Ljava/lang/String;)V

    .line 277
    return-void
.end method
