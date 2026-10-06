.class Lid/wealthstock/viralclip/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/MainActivity;->listClips(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lid/wealthstock/viralclip/MainActivity;

.field final synthetic val$file:Ljava/io/File;


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

    .line 375
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$5;->this$0:Lid/wealthstock/viralclip/MainActivity;

    iput-object p2, p0, Lid/wealthstock/viralclip/MainActivity$5;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 378
    iget-object p1, p0, Lid/wealthstock/viralclip/MainActivity$5;->this$0:Lid/wealthstock/viralclip/MainActivity;

    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$5;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lid/wealthstock/viralclip/MainActivity;->access$800(Lid/wealthstock/viralclip/MainActivity;Ljava/io/File;)V

    .line 379
    return-void
.end method
