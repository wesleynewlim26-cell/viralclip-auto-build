.class Lid/wealthstock/viralclip/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity;->buildUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lid/wealthstock/viralclip/MainActivity;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$1;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    :rescue_try_start
    .line 112
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$1;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$000(Lid/wealthstock/viralclip/MainActivity;)V

    .line 113
    return-void

    :rescue_try_end
    .catch Ljava/lang/Throwable; {:rescue_try_start .. :rescue_try_end} :rescue_catch

    :rescue_catch
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VC-RESCUE"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    const-string v2, "class "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :rescue_have_idx

    move-object v3, v1

    goto :rescue_show

    :rescue_have_idx
    add-int/2lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :rescue_show
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method
