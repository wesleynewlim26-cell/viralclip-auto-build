# smali code for global uncaught exception handler
.class public Lid/wealthstock/viralclip/MainActivity$ExceptionHandler
.super Ljava/lang/Object
.implements Ljava/lang/Thread$UncaughtExceptionHandler

.field final synthetic this$0:Lid/wealthstock/viralclip/MainActivity;

.method public constructor <init>(Lid/wealthstock/viralclip/MainActivity;)V
    .locals 0
    .line 1
    iput-object p1, p0, Lid/wealthstock/viralclip/MainActivity$ExceptionHandler;->this$0:Lid/wealthstock/viralclip/MainActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public uncaughtException(Landroid/os/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .line 1
    const-string v0, "Crash"
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    pop
    # Show toast with error message
    iget-object v0, p0, Lid/wealthstock/viralclip/MainActivity$ExceptionHandler;->this$0:Lid/wealthstock/viralclip/MainActivity;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "App crashed: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method

.end class
