.class public final Lid/wealthstock/viralclip/InnertubeResolver$Window;
.super Ljava/lang/Object;
.source "InnertubeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/wealthstock/viralclip/InnertubeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public final end:D

.field public final hook:Ljava/lang/String;

.field public final score:I

.field public final start:D


# direct methods
.method public constructor <init>(DDLjava/lang/String;I)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide p1, p0, Lid/wealthstock/viralclip/InnertubeResolver$Window;->start:D

    .line 126
    iput-wide p3, p0, Lid/wealthstock/viralclip/InnertubeResolver$Window;->end:D

    .line 127
    iput-object p5, p0, Lid/wealthstock/viralclip/InnertubeResolver$Window;->hook:Ljava/lang/String;

    .line 128
    iput p6, p0, Lid/wealthstock/viralclip/InnertubeResolver$Window;->score:I

    .line 129
    return-void
.end method


# virtual methods
.method public duration()D
    .locals 4

    .line 132
    iget-wide v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Window;->end:D

    iget-wide v2, p0, Lid/wealthstock/viralclip/InnertubeResolver$Window;->start:D

    sub-double/2addr v0, v2

    return-wide v0
.end method
