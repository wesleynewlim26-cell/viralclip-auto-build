.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_REQUEST:Lokhttp3/RequestBody;

.field public static final EMPTY_RESPONSE:Lokhttp3/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_BE_BOM:Lokio/ByteString;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE_BOM:Lokio/ByteString;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE_BOM:Lokio/ByteString;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE_BOM:Lokio/ByteString;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final UTF_8_BOM:Lokio/ByteString;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    new-array v2, v3, [B

    sput-object v2, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 60
    new-array v2, v3, [Ljava/lang/String;

    sput-object v2, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 62
    sget-object v2, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v4, v2}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 63
    sget-object v2, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v4, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    .line 65
    const-string v2, "efbbbf"

    invoke-static {v2}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    .line 66
    const-string v2, "feff"

    invoke-static {v2}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    .line 67
    const-string v2, "fffe"

    invoke-static {v2}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    .line 68
    const-string v2, "0000ffff"

    invoke-static {v2}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    .line 69
    const-string v2, "ffff0000"

    invoke-static {v2}, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    .line 71
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    const-string v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 73
    const-string v2, "UTF-16BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    .line 74
    const-string v2, "UTF-16LE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    .line 75
    const-string v2, "UTF-32BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    .line 76
    const-string v2, "UTF-32LE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    .line 79
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 81
    new-instance v2, Lokhttp3/internal/Util$1;

    invoke-direct {v2}, Lokhttp3/internal/Util$1;-><init>()V

    sput-object v2, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 92
    :try_start_81
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_90} :catch_9c

    move-result-object v1

    .line 96
    .local v1, "m":Ljava/lang/reflect/Method;
    :goto_91
    sput-object v1, Lokhttp3/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    .line 118
    const-string v2, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void

    .line 93
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_9c
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "m":Ljava/lang/reflect/Method;
    goto :goto_91
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static addSuppressedIfPossible(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "suppressed"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    sget-object v0, Lokhttp3/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    .line 102
    :try_start_4
    sget-object v0, Lokhttp3/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_f} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_f} :catch_10

    .line 106
    :cond_f
    :goto_f
    return-void

    .line 103
    :catch_10
    move-exception v0

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_f
.end method

.method public static assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 509
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 511
    .local v0, "assertionError":Ljava/lang/AssertionError;
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_8} :catch_9

    .line 515
    :goto_8
    return-object v0

    .line 512
    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method public static bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 6
    .param p0, "source"    # Lokio/BufferedSource;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 476
    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 477
    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 478
    sget-object p1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 496
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_16
    :goto_16
    return-object p1

    .line 480
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_17
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 481
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 482
    sget-object p1, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    goto :goto_16

    .line 484
    :cond_2c
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 485
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 486
    sget-object p1, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    goto :goto_16

    .line 488
    :cond_41
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 489
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 490
    sget-object p1, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    goto :goto_16

    .line 492
    :cond_56
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-interface {p0, v2, v3, v0}, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 493
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 494
    sget-object p1, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    goto :goto_16
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 405
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 407
    const-string v5, "["

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "]"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 408
    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {p0, v5, v6}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v2

    .line 410
    .local v2, "inetAddress":Ljava/net/InetAddress;
    :goto_24
    if-nez v2, :cond_32

    move-object v3, v4

    .line 427
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_27
    :goto_27
    return-object v3

    .line 409
    :cond_28
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {p0, v5, v6}, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_24

    .line 411
    .restart local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_32
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 412
    .local v0, "address":[B
    array-length v4, v0

    const/16 v5, 0x10

    if-ne v4, v5, :cond_40

    invoke-static {v0}, Lokhttp3/internal/Util;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    .line 413
    :cond_40
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IPv6 address: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 417
    .end local v0    # "address":[B
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_5f
    :try_start_5f
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_71

    move-object v3, v4

    goto :goto_27

    .line 421
    :cond_71
    invoke-static {v3}, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_74} :catch_79

    move-result v5

    if-eqz v5, :cond_27

    move-object v3, v4

    .line 422
    goto :goto_27

    .line 426
    .end local v3    # "result":Ljava/lang/String;
    :catch_79
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move-object v3, v4

    .line 427
    goto :goto_27
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 500
    cmp-long v2, p1, v4

    if-gez v2, :cond_1f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    :cond_1f
    if-nez p3, :cond_29

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 502
    :cond_29
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 503
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_4d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too large."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_4d
    cmp-long v2, v0, v4

    if-nez v2, :cond_6e

    cmp-long v2, p1, v4

    if-lez v2, :cond_6e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too small."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_6e
    long-to-int v2, v0

    return v2
.end method

.method public static checkOffsetAndCount(JJJ)V
    .registers 10
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .prologue
    .line 125
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_18

    .line 126
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 128
    :cond_18
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 140
    if-eqz p0, :cond_5

    .line 142
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 148
    :cond_5
    :goto_5
    return-void

    .line 143
    :catch_6
    move-exception v0

    .line 144
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 145
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v1

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .registers 3
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .prologue
    .line 177
    if-eqz p0, :cond_5

    .line 179
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 185
    :cond_5
    :goto_5
    return-void

    .line 180
    :catch_6
    move-exception v0

    .line 181
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 182
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v1

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 5
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 155
    if-eqz p0, :cond_5

    .line 157
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1c

    .line 170
    :cond_5
    :goto_5
    return-void

    .line 158
    :catch_6
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-nez v2, :cond_5

    throw v0

    .line 160
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_e
    move-exception v1

    .line 161
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    const-string v2, "bio == null"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 166
    throw v1

    .line 167
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1c
    move-exception v2

    goto :goto_5
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 320
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 321
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 323
    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 433
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 437
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_14

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_15

    .line 447
    .end local v0    # "c":C
    :cond_14
    :goto_14
    return v2

    .line 443
    .restart local v0    # "c":C
    :cond_15
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 447
    .end local v0    # "c":C
    :cond_21
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static decodeHexDigit(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 519
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    .line 522
    :goto_a
    return v0

    .line 520
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 521
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 522
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 599
    move v0, p4

    .line 601
    .local v0, "b":I
    move v5, p1

    .local v5, "i":I
    move v1, v0

    .end local v0    # "b":I
    .local v1, "b":I
    :goto_4
    if-ge v5, p2, :cond_41

    .line 602
    array-length v8, p3

    if-ne v1, v8, :cond_a

    .line 628
    :cond_9
    :goto_9
    return v7

    .line 605
    :cond_a
    if-eq v1, p4, :cond_16

    .line 606
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_9

    .line 607
    add-int/lit8 v5, v5, 0x1

    .line 611
    :cond_16
    const/4 v6, 0x0

    .line 612
    .local v6, "value":I
    move v4, v5

    .line 613
    .local v4, "groupOffset":I
    :goto_18
    if-ge v5, p2, :cond_26

    .line 614
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 615
    .local v2, "c":C
    const/16 v8, 0x30

    if-lt v2, v8, :cond_26

    const/16 v8, 0x39

    if-le v2, v8, :cond_31

    .line 620
    .end local v2    # "c":C
    :cond_26
    sub-int v3, v5, v4

    .line 621
    .local v3, "groupLength":I
    if-eqz v3, :cond_9

    .line 624
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v8, v6

    aput-byte v8, p3, v1

    move v1, v0

    .line 625
    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_4

    .line 616
    .end local v3    # "groupLength":I
    .restart local v2    # "c":C
    :cond_31
    if-nez v6, :cond_35

    if-ne v4, v5, :cond_9

    .line 617
    :cond_35
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v2

    add-int/lit8 v6, v8, -0x30

    .line 618
    const/16 v8, 0xff

    if-gt v6, v8, :cond_9

    .line 613
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 627
    .end local v2    # "c":C
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_41
    add-int/lit8 v8, p4, 0x4

    if-ne v1, v8, :cond_9

    .line 628
    const/4 v7, 0x1

    goto :goto_9
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 18
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 527
    const/16 v12, 0x10

    new-array v1, v12, [B

    .line 528
    .local v1, "address":[B
    const/4 v2, 0x0

    .line 529
    .local v2, "b":I
    const/4 v5, -0x1

    .line 530
    .local v5, "compress":I
    const/4 v8, -0x1

    .line 532
    .local v8, "groupOffset":I
    move/from16 v10, p1

    .local v10, "i":I
    :goto_9
    move/from16 v0, p2

    if-ge v10, v0, :cond_30

    .line 533
    array-length v12, v1

    if-ne v2, v12, :cond_12

    const/4 v12, 0x0

    .line 590
    :goto_11
    return-object v12

    .line 536
    :cond_12
    add-int/lit8 v12, v10, 0x2

    move/from16 v0, p2

    if-gt v12, v0, :cond_38

    const-string v12, "::"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 538
    const/4 v12, -0x1

    if-eq v5, v12, :cond_27

    const/4 v12, 0x0

    goto :goto_11

    .line 539
    :cond_27
    add-int/lit8 v10, v10, 0x2

    .line 540
    add-int/lit8 v2, v2, 0x2

    .line 541
    move v5, v2

    .line 542
    move/from16 v0, p2

    if-ne v10, v0, :cond_46

    .line 583
    :cond_30
    :goto_30
    array-length v12, v1

    if-eq v2, v12, :cond_a4

    .line 584
    const/4 v12, -0x1

    if-ne v5, v12, :cond_94

    const/4 v12, 0x0

    goto :goto_11

    .line 543
    :cond_38
    if-eqz v2, :cond_46

    .line 545
    const-string v12, ":"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 546
    add-int/lit8 v10, v10, 0x1

    .line 558
    :cond_46
    const/4 v11, 0x0

    .line 559
    .local v11, "value":I
    move v8, v10

    .line 560
    :goto_48
    move/from16 v0, p2

    if-ge v10, v0, :cond_57

    .line 561
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 562
    .local v4, "c":C
    invoke-static {v4}, Lokhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v9

    .line 563
    .local v9, "hexDigit":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_7b

    .line 566
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    :cond_57
    sub-int v7, v10, v8

    .line 567
    .local v7, "groupLength":I
    if-eqz v7, :cond_5e

    const/4 v12, 0x4

    if-le v7, v12, :cond_82

    :cond_5e
    const/4 v12, 0x0

    goto :goto_11

    .line 547
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_60
    const-string v12, "."

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_79

    .line 549
    add-int/lit8 v12, v2, -0x2

    move/from16 v0, p2

    invoke-static {p0, v8, v0, v1, v12}, Lokhttp3/internal/Util;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v12

    if-nez v12, :cond_76

    const/4 v12, 0x0

    goto :goto_11

    .line 550
    :cond_76
    add-int/lit8 v2, v2, 0x2

    .line 551
    goto :goto_30

    .line 553
    :cond_79
    const/4 v12, 0x0

    goto :goto_11

    .line 564
    .restart local v4    # "c":C
    .restart local v9    # "hexDigit":I
    .restart local v11    # "value":I
    :cond_7b
    shl-int/lit8 v12, v11, 0x4

    add-int v11, v12, v9

    .line 560
    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    .line 570
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    .restart local v7    # "groupLength":I
    :cond_82
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .local v3, "b":I
    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    .line 571
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    goto/16 :goto_9

    .line 585
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_94
    array-length v12, v1

    sub-int v13, v2, v5

    sub-int/2addr v12, v13

    sub-int v13, v2, v5

    invoke-static {v1, v5, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    array-length v12, v1

    sub-int/2addr v12, v2

    add-int/2addr v12, v5

    const/4 v13, 0x0

    invoke-static {v1, v5, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 590
    :cond_a4
    :try_start_a4
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_a7
    .catch Ljava/net/UnknownHostException; {:try_start_a4 .. :try_end_a7} :catch_aa

    move-result-object v12

    goto/16 :goto_11

    .line 591
    :catch_aa
    move-exception v6

    .line 592
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiter"    # C

    .prologue
    .line 389
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_d

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_a

    .line 392
    .end local v0    # "i":I
    :goto_9
    return v0

    .line 389
    .restart local v0    # "i":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    move v0, p2

    .line 392
    goto :goto_9
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .registers 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 378
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_12

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 381
    .end local v0    # "i":I
    :goto_e
    return v0

    .line 378
    .restart local v0    # "i":I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    move v0, p2

    .line 381
    goto :goto_e
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p0, "source"    # Lokio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 194
    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 196
    :goto_4
    return v1

    .line 195
    :catch_5
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 472
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Lokhttp3/HttpUrl;
    .param p1, "includeDefaultPort"    # Z

    .prologue
    .line 295
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "host":Ljava/lang/String;
    :goto_29
    if-nez p1, :cond_39

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_54

    .line 299
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .end local v0    # "host":Ljava/lang/String;
    :cond_54
    return-object v0

    .line 297
    :cond_55
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 234
    :goto_a
    return-object v0

    .line 236
    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_a
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "size":I
    :goto_2
    if-ge v0, v1, :cond_10

    .line 314
    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_d

    .line 316
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 313
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 316
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 456
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_5
    if-ge v1, v2, :cond_17

    .line 457
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 458
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_13

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_14

    .line 462
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_13
    :goto_13
    return v1

    .line 456
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 462
    .end local v0    # "c":C
    :cond_17
    const/4 v1, -0x1

    goto :goto_13
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .registers 13
    .param p0, "address"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x3a

    .line 636
    const/4 v5, -0x1

    .line 637
    .local v5, "longestRunOffset":I
    const/4 v4, 0x0

    .line 638
    .local v4, "longestRunLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v7, p0

    if-ge v3, v7, :cond_26

    .line 639
    move v1, v3

    .line 640
    .local v1, "currentRunOffset":I
    :goto_b
    if-ge v3, v11, :cond_1a

    aget-byte v7, p0, v3

    if-nez v7, :cond_1a

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_1a

    .line 641
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 643
    :cond_1a
    sub-int v0, v3, v1

    .line 644
    .local v0, "currentRunLength":I
    if-le v0, v4, :cond_23

    const/4 v7, 0x4

    if-lt v0, v7, :cond_23

    .line 645
    move v5, v1

    .line 646
    move v4, v0

    .line 638
    :cond_23
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    .line 651
    .end local v0    # "currentRunLength":I
    .end local v1    # "currentRunOffset":I
    :cond_26
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 652
    .local v6, "result":Lokio/Buffer;
    const/4 v3, 0x0

    :cond_2c
    :goto_2c
    array-length v7, p0

    if-ge v3, v7, :cond_55

    .line 653
    if-ne v3, v5, :cond_3b

    .line 654
    invoke-virtual {v6, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 655
    add-int/2addr v3, v4

    .line 656
    if-ne v3, v11, :cond_2c

    invoke-virtual {v6, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2c

    .line 658
    :cond_3b
    if-lez v3, :cond_40

    invoke-virtual {v6, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 659
    :cond_40
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v2, v7, v8

    .line 660
    .local v2, "group":I
    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 661
    add-int/lit8 v3, v3, 0x2

    .line 662
    goto :goto_2c

    .line 664
    .end local v2    # "group":I
    :cond_55
    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p1, "first"    # [Ljava/lang/String;
    .param p2, "second"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, p1

    move v5, v4

    :goto_8
    if-ge v5, v6, :cond_22

    aget-object v0, p1, v5

    .line 263
    .local v0, "a":Ljava/lang/String;
    array-length v7, p2

    move v3, v4

    :goto_e
    if-ge v3, v7, :cond_1b

    aget-object v1, p2, v3

    .line 264
    .local v1, "b":Ljava/lang/String;
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_1f

    .line 265
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v1    # "b":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_8

    .line 263
    .restart local v1    # "b":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 270
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    :cond_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 3
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 309
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 308
    :goto_19
    return v0

    .line 309
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 11
    .param p1, "first"    # [Ljava/lang/String;
    .param p2, "second"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 281
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    array-length v3, p1

    if-eqz v3, :cond_b

    array-length v3, p2

    if-nez v3, :cond_c

    .line 291
    :cond_b
    :goto_b
    return v2

    .line 284
    :cond_c
    array-length v5, p1

    move v4, v2

    :goto_e
    if-ge v4, v5, :cond_b

    aget-object v0, p1, v4

    .line 285
    .local v0, "a":Ljava/lang/String;
    array-length v6, p2

    move v3, v2

    :goto_14
    if-ge v3, v6, :cond_23

    aget-object v1, p2, v3

    .line 286
    .local v1, "b":Ljava/lang/String;
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_20

    .line 287
    const/4 v2, 0x1

    goto :goto_b

    .line 285
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 284
    .end local v1    # "b":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_e
.end method

.method public static platformTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 6

    .prologue
    .line 670
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 671
    .local v1, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 672
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 673
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    const/4 v3, 0x0

    aget-object v3, v2, v3

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-nez v3, :cond_42

    .line 674
    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected default trust managers:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 675
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3a} :catch_3a

    .line 678
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_3a
    move-exception v0

    .line 679
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v3, "No System TLS"

    invoke-static {v3, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3

    .line 677
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_42
    const/4 v3, 0x0

    :try_start_43
    aget-object v3, v2, v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_47
    .catch Ljava/security/GeneralSecurityException; {:try_start_43 .. :try_end_47} :catch_3a

    return-object v3
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .param p0, "source"    # Lokio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 206
    .local v2, "now":J
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 207
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 209
    .local v4, "originalDuration":J
    :goto_1d
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v8

    int-to-long v10, p1

    invoke-virtual {p2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 211
    :try_start_2e
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 212
    .local v1, "skipBuffer":Lokio/Buffer;
    :goto_33
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v1, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_54

    .line 213
    invoke-virtual {v1}, Lokio/Buffer;->clear()V
    :try_end_42
    .catch Ljava/io/InterruptedIOException; {:try_start_2e .. :try_end_42} :catch_43
    .catchall {:try_start_2e .. :try_end_42} :catchall_76

    goto :goto_33

    .line 216
    .end local v1    # "skipBuffer":Lokio/Buffer;
    :catch_43
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/InterruptedIOException;
    const/4 v8, 0x0

    .line 219
    cmp-long v6, v4, v6

    if-nez v6, :cond_6c

    .line 220
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_50
    move v6, v8

    .line 217
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :goto_51
    return v6

    .end local v4    # "originalDuration":J
    :cond_52
    move-wide v4, v6

    .line 208
    goto :goto_1d

    .line 215
    .restart local v1    # "skipBuffer":Lokio/Buffer;
    .restart local v4    # "originalDuration":J
    :cond_54
    const/4 v8, 0x1

    .line 219
    cmp-long v6, v4, v6

    if-nez v6, :cond_62

    .line 220
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_60
    move v6, v8

    .line 215
    goto :goto_51

    .line 222
    :cond_62
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_60

    .end local v1    # "skipBuffer":Lokio/Buffer;
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_6c
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_50

    .line 219
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_76
    move-exception v8

    cmp-long v6, v4, v6

    if-nez v6, :cond_83

    .line 220
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 222
    :goto_82
    throw v8

    :cond_83
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v6

    add-long v10, v2, v4

    invoke-virtual {v6, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_82
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 331
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_10

    .line 343
    .end local v0    # "i":I
    :goto_a
    return v0

    .line 331
    .restart local v0    # "i":I
    :sswitch_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    move v0, p2

    .line 343
    goto :goto_a

    .line 332
    :sswitch_data_10
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_b
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 351
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p1, :cond_d

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_12

    .line 360
    add-int/lit8 p1, v0, 0x1

    .line 363
    .end local p1    # "pos":I
    :cond_d
    return p1

    .line 351
    .restart local p1    # "pos":I
    :sswitch_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 352
    nop

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .prologue
    .line 245
    new-instance v0, Lokhttp3/internal/Util$2;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/Util$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHeaders(Ljava/util/List;)Lokhttp3/Headers;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 685
    .local v0, "builder":Lokhttp3/Headers$Builder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/http2/Header;

    .line 686
    .local v1, "header":Lokhttp3/internal/http2/Header;
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v4, v1, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 688
    .end local v1    # "header":Lokhttp3/internal/http2/Header;
    :cond_27
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 368
    invoke-static {p0, p1, p2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 369
    .local v1, "start":I
    invoke-static {p0, v1, p2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 370
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 467
    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
