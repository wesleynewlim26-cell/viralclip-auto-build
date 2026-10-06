.class public Lid/wealthstock/viralclip/InnertubeResolver;
.super Ljava/lang/Object;
.source "InnertubeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/wealthstock/viralclip/InnertubeResolver$Source;,
        Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;,
        Lid/wealthstock/viralclip/InnertubeResolver$Cue;,
        Lid/wealthstock/viralclip/InnertubeResolver$Window;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w"

.field private static final CLIENTS:[[Ljava/lang/String;

.field private static final CUE_XML:Ljava/util/regex/Pattern;

.field private static final ID_PATTERNS:[Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x438

.field private static final MIN_HEIGHT:I = 0x2d0



.field private static final SPAN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ViralClipResolve"

.field private static final UA_CHROME:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

.field private static final XML_TAG:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 57
    const-string v0, "34"

    const-string v1, "com.google.android.youtube/20.10.38 (Linux; U; Android 14) gzip"

    const-string v2, "ANDROID"

    const-string v3, "20.10.38"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "30"

    const-string v3, "com.google.android.youtube/19.09.37 (Linux; U; Android 11) gzip"

    const-string v4, "19.09.37"

    filled-new-array {v2, v4, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "com.google.ios.youtube/20.10.4 (iPhone16,2; U; CPU iOS 18_3 like Mac OS X)"

    const-string v4, "IOS"

    const-string v5, "20.10.4"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "32"

    const-string v4, "com.google.android.apps.youtube.vr.oculus/1.60.19 (Linux; U; Android 12) gzip"

    const-string v5, "ANDROID_VR"

    const-string v6, "1.60.19"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lid/wealthstock/viralclip/InnertubeResolver;->CLIENTS:[[Ljava/lang/String;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/regex/Pattern;

    .line 148
    const-string v1, "youtu\\.be/([A-Za-z0-9_-]{11})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 150
    const-string v1, "[?&]v=([A-Za-z0-9_-]{11})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 152
    const-string v1, "/(?:embed|v|shorts|live)/([A-Za-z0-9_-]{11})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lid/wealthstock/viralclip/InnertubeResolver;->ID_PATTERNS:[Ljava/util/regex/Pattern;

    .line 417
    const-string v0, "<p t=\"(\\d+)\" d=\"(\\d+)\"[^>]*>(.*?)</p>"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lid/wealthstock/viralclip/InnertubeResolver;->CUE_XML:Ljava/util/regex/Pattern;

    .line 419
    const-string v0, "<s[^>]*>(.*?)</s>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lid/wealthstock/viralclip/InnertubeResolver;->SPAN:Ljava/util/regex/Pattern;

    .line 421
    const-string v0, "<[^>]+>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lid/wealthstock/viralclip/InnertubeResolver;->XML_TAG:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseTrack(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 486
    nop

    .line 487
    nop

    .line 488
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const-string v5, "languageCode"

    const-string v6, ""

    if-ge v3, v4, :cond_4

    .line 489
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 490
    if-nez v4, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    const-string v7, "kind"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "asr"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 493
    if-nez v0, :cond_1

    move-object v0, v4

    .line 495
    :cond_1
    const-string v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v6, :cond_2

    move-object v2, v4

    .line 496
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    .line 488
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 499
    nop

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 500
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 501
    if-eqz v3, :cond_5

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 502
    return-object v3

    .line 499
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 506
    :cond_6
    if-eqz v2, :cond_7

    move-object v0, v2

    :cond_7
    return-object v0
.end method

.method private static codecOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 399
    const-string v0, "codecs=\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 400
    const-string v1, ""

    if-gez v0, :cond_0

    .line 401
    return-object v1

    .line 403
    :cond_0
    add-int/lit8 v0, v0, 0x8

    .line 404
    const/16 v2, 0x22

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 405
    if-gez v2, :cond_1

    .line 406
    return-object v1

    .line 408
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 409
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 410
    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static collapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 521
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static describe(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 613
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 614
    :goto_0
    return-object v0
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 621
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    return-object p0
.end method

.method private static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 563
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 564
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 565
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string p1, "Accept-Encoding"

    const-string v0, "gzip"

    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 568
    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    .line 569
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 571
    :goto_0
    const-string v2, "HTTP "

    if-eqz v1, :cond_2

    .line 575
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lid/wealthstock/viralclip/InnertubeResolver;->readAll(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 577
    if-ge p1, v0, :cond_1

    .line 580
    return-object v1

    .line 578
    :cond_1
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 572
    :cond_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 573
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static gunzip([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 602
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 603
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 605
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 606
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 609
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static loadCues(Lorg/json/JSONObject;Lid/wealthstock/viralclip/InnertubeResolver$Source;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    const-string v0, "captions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 435
    if-nez p0, :cond_0

    return-void

    .line 436
    :cond_0
    nop

    .line 437
    const-string v0, "playerCaptionsTracklistRenderer"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 438
    const-string v0, "captionTracks"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 439
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 443
    :cond_1
    invoke-static {p0, p2}, Lid/wealthstock/viralclip/InnertubeResolver;->chooseTrack(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 444
    if-nez p0, :cond_2

    .line 445
    return-void

    .line 447
    :cond_2
    const-string p2, "baseUrl"

    const-string v0, ""

    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 448
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    return-void

    .line 451
    :cond_3
    const-string v1, "languageCode"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lid/wealthstock/viralclip/InnertubeResolver$Source;->subtitleLanguage:Ljava/lang/String;

    .line 452
    const-string v1, "kind"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "asr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p1, Lid/wealthstock/viralclip/InnertubeResolver$Source;->subtitleGenerated:Z

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "&fmt=srv3"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

    invoke-static {p0, p2}, Lid/wealthstock/viralclip/InnertubeResolver;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 455
    sget-object p2, Lid/wealthstock/viralclip/InnertubeResolver;->CUE_XML:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 456
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 458
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double v6, v1, v3

    .line 459
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    .line 460
    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_4

    cmpg-double v3, v6, v3

    if-gez v3, :cond_5

    .line 461
    goto :goto_0

    .line 463
    :cond_5
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 464
    sget-object v4, Lid/wealthstock/viralclip/InnertubeResolver;->SPAN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    const/4 v8, 0x0

    .line 467
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 468
    invoke-virtual {v4, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    move v8, p2

    goto :goto_1

    .line 471
    :cond_6
    if-nez v8, :cond_7

    .line 472
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_7
    sget-object p2, Lid/wealthstock/viralclip/InnertubeResolver;->XML_TAG:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lid/wealthstock/viralclip/InnertubeResolver;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lid/wealthstock/viralclip/InnertubeResolver;->collapse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 475
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 476
    iget-object p2, p1, Lid/wealthstock/viralclip/InnertubeResolver$Source;->cues:Ljava/util/List;

    new-instance v5, Lid/wealthstock/viralclip/InnertubeResolver$Cue;

    add-double v8, v6, v1

    invoke-direct/range {v5 .. v10}, Lid/wealthstock/viralclip/InnertubeResolver$Cue;-><init>(DDLjava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_8
    goto :goto_0

    .line 479
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loaded "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, p1, Lid/wealthstock/viralclip/InnertubeResolver$Source;->cues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " cues ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, p1, Lid/wealthstock/viralclip/InnertubeResolver$Source;->subtitleLanguage:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 481
    iget-boolean p1, p1, Lid/wealthstock/viralclip/InnertubeResolver$Source;->subtitleGenerated:Z

    if-eqz p1, :cond_a

    const-string p1, ", auto"

    goto :goto_2

    :cond_a
    const-string p1, ", manual"

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 479
    const-string p1, "ViralClipResolve"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void

    .line 440
    :cond_b
    :goto_3
    return-void
.end method

.method public static parseVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 157
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    return-object v1

    .line 162
    :cond_1
    const-string v0, "[A-Za-z0-9_-]{11}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    return-object p0

    .line 165
    :cond_2
    sget-object v0, Lid/wealthstock/viralclip/InnertubeResolver;->ID_PATTERNS:[Ljava/util/regex/Pattern;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 166
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    const/4 p0, 0x1

    invoke-virtual {v4, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_4
    return-object v1
.end method

.method private static pickAudio(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 10

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 365
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 366
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 367
    if-nez v5, :cond_0

    goto :goto_2

    .line 368
    :cond_0
    const-string v6, "mimeType"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 369
    const-string v8, "audio/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 370
    :cond_1
    const-string v8, "url"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 378
    :cond_2
    invoke-static {v6}, Lid/wealthstock/viralclip/InnertubeResolver;->codecOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 380
    const-string v7, "mp4a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 381
    const/4 v6, 0x2

    goto :goto_1

    .line 382
    :cond_3
    const-string v7, "opus"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "vorbis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 383
    :cond_4
    const/4 v6, 0x1

    .line 387
    :goto_1
    if-ge v6, v3, :cond_5

    goto :goto_2

    .line 388
    :cond_5
    const-string v7, "bitrate"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 389
    if-gt v6, v3, :cond_6

    cmp-long v9, v7, v1

    if-lez v9, :cond_7

    .line 390
    :cond_6
    nop

    .line 391
    nop

    .line 392
    move-object v0, v5

    move v3, v6

    move-wide v1, v7

    .line 365
    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    :cond_8
    return-object v0
.end method

.method private static pickVideo(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 12

    .line 320
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    nop

    .line 325
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v2

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 326
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 327
    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 329
    :cond_0
    const-string v7, "mimeType"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 330
    const-string v9, "video/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 333
    :cond_1
    const-string v9, "url"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 334
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 336
    :cond_2
    const-string v8, "height"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 337
    invoke-static {v7}, Lid/wealthstock/viralclip/InnertubeResolver;->codecOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    mul-int/lit8 v9, v8, 0xa

    .line 339
    const-string v10, "avc"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v9, v9, 0x28

    goto :goto_1

    .line 340
    :cond_3
    const-string v10, "vp9"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v9, v9, 0x8

    goto :goto_1

    .line 341
    :cond_4
    const-string v10, "av01"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v9, v9, 0x2

    .line 342
    :cond_5
    :goto_1
    const-string v7, "fps"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v7, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-int v7, v10

    const/16 v10, 0x9

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v9, v7

    .line 344
    if-le v9, v3, :cond_6

    .line 345
    nop

    .line 346
    move-object v1, v6

    move v3, v9

    .line 349
    :cond_6
    const/16 v7, 0x2d0

    if-lt v8, v7, :cond_8

    if-le v8, p1, :cond_7

    goto :goto_2

    .line 351
    :cond_7
    if-le v9, v4, :cond_8

    .line 352
    nop

    .line 353
    move-object v0, v6

    move v4, v9

    .line 325
    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 356
    :cond_9
    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method private static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 530
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 531
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 533
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 534
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 535
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string p2, "Accept-Encoding"

    const-string v0, "gzip"

    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string p2, "X-Youtube-Client-Name"

    const-string v0, "3"

    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string p2, "X-Youtube-Client-Version"

    const-string v0, "20.10.38"

    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 542
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 543
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 546
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 547
    const/16 p2, 0x190

    if-lt p1, p2, :cond_1

    .line 548
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 550
    :goto_0
    const-string v1, "HTTP "

    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lid/wealthstock/viralclip/InnertubeResolver;->readAll(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 555
    if-ge p1, p2, :cond_2

    .line 558
    return-object v0

    .line 556
    :cond_2
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :cond_3
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " tanpa body"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 542
    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
.end method

.method private static readAll(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 584
    nop

    .line 585
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 586
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 588
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 589
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 591
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 592
    if-eqz p1, :cond_2

    const-string v2, "gzip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 593
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lid/wealthstock/viralclip/InnertubeResolver;->gunzip([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 593
    :cond_1
    return-object p1

    .line 595
    :cond_2
    nop

    .line 596
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 595
    :cond_3
    return-object v1

    .line 584
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Lid/wealthstock/viralclip/InnertubeResolver$Source;
.locals 2
.annotation system Ldalvik/annotation/Throws;
    value = {
        Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;
    }
.end annotation

.line 184
const/16 v0, 0x438
:try_start_0
invoke-static {p0, p1, v0}, Lid/wealthstock/viralclip/InnertubeResolver;->resolve(Ljava/lang/String;Ljava/lang/String;I)Lid/wealthstock/viralclip/InnertubeResolver$Source;
move-result-object p0
:try_end_0
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
return-object p0
:catch_0
move-exception v1
# Show error via Toast
const/4 v2, 0x1
invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v3
const-string v4, "Extractor error: "
invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/Toast;->show()V
const/4 p0, 0x0
return-object p0

.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;I)Lid/wealthstock/viralclip/InnertubeResolver$Source;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;
        }
    .end annotation

    .line 198
    const-string v0, " "

    invoke-static {p0}, Lid/wealthstock/viralclip/InnertubeResolver;->parseVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 199
    if-eqz p0, :cond_2

    .line 203
    nop

    .line 204
    sget-object v1, Lid/wealthstock/viralclip/InnertubeResolver;->CLIENTS:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const-string v4, "tidak mencoba client apa pun"

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v4, v1, v5

    .line 207
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v4}, Lid/wealthstock/viralclip/InnertubeResolver;->tryClient(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Lid/wealthstock/viralclip/InnertubeResolver$Source;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    nop

    .line 213
    if-eqz v7, :cond_0

    .line 214
    return-object v7

    .line 216
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, v4, v6

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": tidak ada stream 720p-1080p"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 208
    :catch_0
    move-exception v7

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lid/wealthstock/viralclip/InnertubeResolver;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v4, v4, v6

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " failed"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ViralClipResolve"

    invoke-static {v6, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    move-object v4, v8

    .line 204
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 218
    :cond_1
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "YouTube menolak semua client. Detail: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_2
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    const-string p1, "URL YouTube tidak valid"

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static tryClient(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Lid/wealthstock/viralclip/InnertubeResolver$Source;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 227
    const/4 v2, 0x0

    aget-object v3, p3, v2

    const-string v4, "clientName"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const/4 v3, 0x1

    aget-object v4, p3, v3

    const-string v5, "clientVersion"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const/4 v4, 0x2

    aget-object v5, p3, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 230
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "androidSdkVersion"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    :cond_0
    const-string v4, "hl"

    const-string v5, "en"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v4, "gl"

    const-string v5, "US"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v4, "client"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    const-string v4, "videoId"

    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v4, "context"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v0, "contentCheckOk"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 240
    const-string v0, "racyCheckOk"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object p3, p3, v1

    const-string v1, "https://www.youtube.com/youtubei/v1/player?key=AIzaSyD-PLACEHOLDER"

    invoke-static {v1, v0, p3}, Lid/wealthstock/viralclip/InnertubeResolver;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 244
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    const-string p3, "error"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "status"

    if-nez v1, :cond_a

    .line 250
    const-string p3, "playabilityStatus"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 251
    const-string v1, "UNKNOWN"

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    :goto_0
    const-string p3, "OK"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 256
    const-string p3, "videoDetails"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 257
    const-string v1, "streamingData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 258
    if-eqz p3, :cond_8

    if-eqz v1, :cond_8

    .line 262
    const-string v4, "adaptiveFormats"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_7

    .line 267
    invoke-static {v1, p2}, Lid/wealthstock/viralclip/InnertubeResolver;->pickVideo(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 268
    invoke-static {v1}, Lid/wealthstock/viralclip/InnertubeResolver;->pickAudio(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v1

    .line 269
    if-nez p2, :cond_2

    .line 270
    const/4 p0, 0x0

    return-object p0

    .line 273
    :cond_2
    new-instance v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;

    invoke-direct {v4}, Lid/wealthstock/viralclip/InnertubeResolver$Source;-><init>()V

    .line 274
    iput-object p0, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoId:Ljava/lang/String;

    .line 275
    const-string p0, "title"

    const-string v5, ""

    invoke-virtual {p3, p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->title:Ljava/lang/String;

    .line 276
    const-string p0, "author"

    invoke-virtual {p3, p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->uploader:Ljava/lang/String;

    .line 281
    const-string p0, "isLive"

    invoke-virtual {p3, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    .line 282
    const-string p0, "isLiveContent"

    invoke-virtual {p3, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move p0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p0, v3

    :goto_2
    iput-boolean p0, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->live:Z

    .line 283
    const-string p0, "lengthSeconds"

    const-string v6, "0"

    invoke-virtual {p3, p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 285
    const-wide/16 v6, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->durationSeconds:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_3

    .line 286
    :catch_0
    move-exception p0

    .line 287
    iput-wide v6, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->durationSeconds:D

    .line 289
    :goto_3
    iget-wide v8, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->durationSeconds:D

    cmpg-double p0, v8, v6

    if-gtz p0, :cond_5

    .line 290
    iput-boolean v3, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->live:Z

    .line 292
    :cond_5
    const-string p0, "url"

    invoke-virtual {p2, p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoUrl:Ljava/lang/String;

    .line 293
    const-string p3, "width"

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->width:I

    .line 294
    const-string p3, "height"

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->height:I

    .line 295
    const-string p3, "fps"

    invoke-virtual {p2, p3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->fps:D

    .line 296
    const-string p3, "mimeType"

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lid/wealthstock/viralclip/InnertubeResolver;->codecOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoCodec:Ljava/lang/String;

    .line 297
    const-string v2, "contentLength"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->videoBytes:J

    .line 298
    if-eqz v1, :cond_6

    .line 299
    invoke-virtual {v1, p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioUrl:Ljava/lang/String;

    .line 300
    invoke-virtual {v1, p3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lid/wealthstock/viralclip/InnertubeResolver;->codecOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioCodec:Ljava/lang/String;

    .line 301
    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, v4, Lid/wealthstock/viralclip/InnertubeResolver$Source;->audioBytes:J

    .line 304
    :cond_6
    invoke-static {v0, v4, p1}, Lid/wealthstock/viralclip/InnertubeResolver;->loadCues(Lorg/json/JSONObject;Lid/wealthstock/viralclip/InnertubeResolver$Source;Ljava/lang/String;)V

    .line 305
    return-object v4

    .line 264
    :cond_7
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    const-string p1, "tidak ada adaptiveFormats"

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_8
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    const-string p1, "tidak ada streamingData"

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_9
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "status="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_a
    new-instance p0, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 247
    invoke-virtual {p1, v4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lid/wealthstock/viralclip/InnertubeResolver$ResolveException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 510
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 511
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 512
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 513
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 514
    const-string v0, "&#39;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 515
    const-string v0, "&apos;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 516
    const-string v0, "&nbsp;"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 510
    return-object p0
.end method
