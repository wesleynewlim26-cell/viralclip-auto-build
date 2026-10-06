.class Lid/wealthstock/viralclip/AudioMomentPicker$1;
.super Ljava/lang/Object;
.source "AudioMomentPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/wealthstock/viralclip/AudioMomentPicker;->pick(Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lid/wealthstock/viralclip/AudioMomentPicker$Window;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lid/wealthstock/viralclip/AudioMomentPicker;


# direct methods
.method constructor <init>(Lid/wealthstock/viralclip/AudioMomentPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 499
    iput-object p1, p0, Lid/wealthstock/viralclip/AudioMomentPicker$1;->this$0:Lid/wealthstock/viralclip/AudioMomentPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lid/wealthstock/viralclip/AudioMomentPicker$Window;Lid/wealthstock/viralclip/AudioMomentPicker$Window;)I
    .locals 2

    .line 502
    iget-wide v0, p1, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    iget-wide p1, p2, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 499
    check-cast p1, Lid/wealthstock/viralclip/AudioMomentPicker$Window;

    check-cast p2, Lid/wealthstock/viralclip/AudioMomentPicker$Window;

    invoke-virtual {p0, p1, p2}, Lid/wealthstock/viralclip/AudioMomentPicker$1;->compare(Lid/wealthstock/viralclip/AudioMomentPicker$Window;Lid/wealthstock/viralclip/AudioMomentPicker$Window;)I

    move-result p1

    return p1
.end method
