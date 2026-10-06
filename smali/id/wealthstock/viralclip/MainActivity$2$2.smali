.class Lid/wealthstock/viralclip/MainActivity$2$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity$2;->onMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lid/wealthstock/viralclip/MainActivity$2;

.field final synthetic val$value:Ljava/lang/String;


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

    .line 217
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$2$2;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iput-object p2, p0, Lid/wealthstock/viralclip/MainActivity$2$2;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$2$2;->this$1:Lid/wealthstock/viralclip/MainActivity$2;

    iget-object v0, v0, Lid/wealthstock/viralclip/MainActivity$2;->this$0:Lid/wealthstock/viralclip/MainActivity;

    iget-object v1, p0, Lid/wealthstock/viralclip/MainActivity$2$2;->val$value:Ljava/lang/String;

    invoke-static {v0, v1}, Lid/wealthstock/viralclip/MainActivity;->access$300(Lid/wealthstock/viralclip/MainActivity;Ljava/lang/String;)V

    .line 221
    return-void
.end method
