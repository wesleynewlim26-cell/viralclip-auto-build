.class public final Lid/wealthstock/viralclip/AudioMomentPicker$Window;
.super Ljava/lang/Object;
.source "AudioMomentPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/wealthstock/viralclip/AudioMomentPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public final end:D

.field public final reason:Ljava/lang/String;

.field public final score:D

.field public final start:D


# direct methods
.method constructor <init>(DDDLjava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-wide p1, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    .line 131
    iput-wide p3, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->end:D

    .line 132
    iput-wide p5, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->score:D

    .line 133
    iput-object p7, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->reason:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public duration()D
    .locals 4

    .line 137
    iget-wide v0, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->end:D

    iget-wide v2, p0, Lid/wealthstock/viralclip/AudioMomentPicker$Window;->start:D

    sub-double/2addr v0, v2

    return-wide v0
.end method
