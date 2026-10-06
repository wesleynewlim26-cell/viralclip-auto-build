.class public final Lid/wealthstock/viralclip/InnertubeResolver$Source;
.super Ljava/lang/Object;
.source "InnertubeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/wealthstock/viralclip/InnertubeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation


# instance fields
.field public audioBytes:J

.field public audioCodec:Ljava/lang/String;

.field public audioUrl:Ljava/lang/String;

.field public final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/InnertubeResolver$Cue;",
            ">;"
        }
    .end annotation
.end field

.field public durationSeconds:D

.field public fps:D

.field public height:I

.field public live:Z

.field public subtitleGenerated:Z

.field public subtitleLanguage:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uploader:Ljava/lang/String;

.field public videoBytes:J

.field public videoCodec:Ljava/lang/String;

.field public videoId:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;

.field public width:I

.field public final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lid/wealthstock/viralclip/InnertubeResolver$Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoId:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->title:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->uploader:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoUrl:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioUrl:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoCodec:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioCodec:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->cues:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->subtitleLanguage:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/wealthstock/viralclip/InnertubeResolver$Source;->windows:Ljava/util/List;

    return-void
.end method
