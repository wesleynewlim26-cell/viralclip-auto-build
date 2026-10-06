.class public final Lid/wealthstock/viralclip/InnertubeResolver$Cue;
.super Ljava/lang/Object;
.source "InnertubeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/wealthstock/viralclip/InnertubeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cue"
.end annotation


# instance fields
.field public final end:D

.field public final start:D

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDLjava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide p1, p0, Lid/wealthstock/viralclip/InnertubeResolver$Cue;->start:D

    .line 112
    iput-wide p3, p0, Lid/wealthstock/viralclip/InnertubeResolver$Cue;->end:D

    .line 113
    iput-object p5, p0, Lid/wealthstock/viralclip/InnertubeResolver$Cue;->text:Ljava/lang/String;

    .line 114
    return-void
.end method
