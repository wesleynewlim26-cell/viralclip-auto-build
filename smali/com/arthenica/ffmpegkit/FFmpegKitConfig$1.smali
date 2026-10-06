.class Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;
.super Ljava/util/LinkedHashMap;
.source "FFmpegKitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arthenica/ffmpegkit/FFmpegKitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Long;",
        "Lcom/arthenica/ffmpegkit/Session;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;)Z"
        }
    .end annotation

    .line 160
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/arthenica/ffmpegkit/Session;>;"
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;->size()I

    move-result v0

    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->-$$Nest$sfgetsessionHistorySize()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
