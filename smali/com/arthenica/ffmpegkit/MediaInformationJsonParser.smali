.class public Lcom/arthenica/ffmpegkit/MediaInformationJsonParser;
.super Ljava/lang/Object;
.source "MediaInformationJsonParser.java"


# static fields
.field public static final KEY_CHAPTERS:Ljava/lang/String; = "chapters"

.field public static final KEY_STREAMS:Ljava/lang/String; = "streams"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformation;
    .locals 3
    .param p0, "ffprobeJsonOutput"    # Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/MediaInformationJsonParser;->fromWithError(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformation;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MediaInformation parsing failed.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ffmpeg-kit"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromWithError(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformation;
    .locals 8
    .param p0, "ffprobeJsonOutput"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "streams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 67
    .local v1, "streamArray":Lorg/json/JSONArray;
    const-string v2, "chapters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 69
    .local v2, "chapterArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "streamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/arthenica/ffmpegkit/StreamInformation;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 71
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 72
    .local v5, "streamObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 73
    new-instance v6, Lcom/arthenica/ffmpegkit/StreamInformation;

    invoke-direct {v6, v5}, Lcom/arthenica/ffmpegkit/StreamInformation;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v5    # "streamObject":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "chapterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/arthenica/ffmpegkit/Chapter;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 79
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 80
    .local v6, "chapterObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 81
    new-instance v7, Lcom/arthenica/ffmpegkit/Chapter;

    invoke-direct {v7, v6}, Lcom/arthenica/ffmpegkit/Chapter;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v6    # "chapterObject":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Lcom/arthenica/ffmpegkit/MediaInformation;

    invoke-direct {v5, v0, v3, v4}, Lcom/arthenica/ffmpegkit/MediaInformation;-><init>(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method
