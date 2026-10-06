.class Lid/wealthstock/viralclip/MainActivity$2$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity$2;->onResolved(Lid/wealthstock/viralclip/InnertubeResolver$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lid/wealthstock/viralclip/MainActivity$2;

.field final synthetic val$source:Lid/wealthstock/viralclip/InnertubeResolver$Source;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/MainActivity$2;Lid/wealthstock/viralclip/InnertubeResolver$Source;)V
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

    .line 227
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$2$3;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iput-object p2, p0, Lid/wealthstock/viralclip/MainActivity$2$3;->val$source:Lid/wealthstock/viralclip/InnertubeResolver$Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$3;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$100(Lid/wealthstock/viralclip/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lid/wealthstock/viralclip/MainActivity$2$3;->val$source:Lid/wealthstock/viralclip/InnertubeResolver$Source;

    iget-object v1, v1, Lid/wealthstock/viralclip/InnertubeResolver$Source;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method
