.class Lid/wealthstock/viralclip/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity;->appendLog(Ljava/lang/String;)V
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

    .line 343
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$4;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 346
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$4;->this$0:Lid/wealthstock/viralclip/MainActivity;

    invoke-static {v0}, Lid/wealthstock/viralclip/MainActivity;->access$700(Lid/wealthstock/viralclip/MainActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 347
    return-void
.end method
