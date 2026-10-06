.class public interface abstract Lid/wealthstock/viralclip/ClipPipeline$Callback;
.super Ljava/lang/Object;
.source "ClipPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/wealthstock/viralclip/ClipPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onClipReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onPicked(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/AudioMomentPicker$Window;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResolved(Lid/wealthstock/viralclip/InnertubeResolver$Source;)V
.end method

.method public abstract onStage(Ljava/lang/String;)V
.end method
