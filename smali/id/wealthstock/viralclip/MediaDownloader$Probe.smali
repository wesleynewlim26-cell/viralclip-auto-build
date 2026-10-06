.class final Lid/wealthstock/viralclip/MediaDownloader$Probe;
.super Ljava/lang/Object;
.source "MediaDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/wealthstock/viralclip/MediaDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Probe"
.end annotation


# instance fields
.field ranges:Z

.field reachable:Z

.field total:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lid/wealthstock/viralclip/MediaDownloader$Probe;->total:J

    return-void
.end method

.method synthetic constructor <init>(Lid/wealthstock/viralclip/MediaDownloader$1;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Lid/wealthstock/viralclip/MediaDownloader$Probe;-><init>()V

    return-void
.end method
