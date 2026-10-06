.class public final Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;
.super Ljava/lang/Object;
.source "AudioMomentPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/wealthstock/viralclip/AudioMomentPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation


# instance fields
.field public final level:[F

.field public final secondsPerFrame:D

.field public final totalSeconds:D


# direct methods
.method constructor <init>([FDD)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->level:[F

    .line 150
    iput-wide p2, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->secondsPerFrame:D

    .line 151
    iput-wide p4, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->totalSeconds:D

    .line 152
    return-void
.end method


# virtual methods
.method public frames()I
    .locals 1

    .line 159
    iget-object v0, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->level:[F

    array-length v0, v0

    return v0
.end method

.method public time(I)D
    .locals 4

    .line 155
    int-to-double v0, p1

    iget-wide v2, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Envelope;->secondsPerFrame:D

    mul-double/2addr v0, v2

    return-wide v0
.end method
