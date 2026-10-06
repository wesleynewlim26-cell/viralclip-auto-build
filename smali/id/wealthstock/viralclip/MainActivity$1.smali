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
    .locals 2
    .try_start_0
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$1;->this$0:Lid/wealthstock/viralclip/MainActivity;
    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$000(Lid/wealthstock/viralclip/MainActivity;)V
    .try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .line 113
    return-void
    :catch_0
    move-exception v0
    iget-object v1, p0, Lid/wealthstock/viralclip/MainActivity$1;->this$0:Lid/wealthstock/viralclip/MainActivity;
    const-string v0, "Process click error"
    invoke-direct {v1, v0}, Lid/wealthstock/viralclip/MainActivity;->toast(Ljava/lang/String;)V
    return-void
.end method
