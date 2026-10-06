.class public Lcom/arthenica/ffmpegkit/Packages;
.super Ljava/lang/Object;
.source "Packages.java"


# static fields
.field private static final supportedExternalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "dav1d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "fontconfig"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "freetype"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "fribidi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "gmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "gnutls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "kvazaar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "mp3lame"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libass"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "iconv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libilbc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libtheora"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libvidstab"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libvorbis"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libvpx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libwebp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "libxml2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "opencore-amr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "openh264"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "openssl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "opus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "rubberband"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "sdl2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "shine"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "snappy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "soxr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "speex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "srt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "tesseract"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "twolame"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "x264"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "x265"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "xvid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    const-string v1, "zimg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalLibraries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeBuildConf()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "buildConfiguration":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "enabledLibraryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/arthenica/ffmpegkit/Packages;->supportedExternalLibraries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    .local v3, "supportedExternalLibrary":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable-lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v3    # "supportedExternalLibrary":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 270
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 272
    return-object v1
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 38

    .line 77
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getExternalLibraries()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "externalLibraryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "speex"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 79
    .local v2, "speex":Z
    const-string v3, "fribidi"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 80
    .local v4, "fribidi":Z
    const-string v5, "gnutls"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 81
    .local v6, "gnutls":Z
    const-string v7, "xvid"

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 83
    .local v8, "xvid":Z
    const/4 v9, 0x0

    .line 84
    .local v9, "minGpl":Z
    const/4 v10, 0x0

    .line 85
    .local v10, "https":Z
    const/4 v11, 0x0

    .line 86
    .local v11, "httpsGpl":Z
    const/4 v12, 0x0

    .line 87
    .local v12, "audio":Z
    const/4 v13, 0x0

    .line 88
    .local v13, "video":Z
    const/4 v14, 0x0

    .line 89
    .local v14, "full":Z
    const/4 v15, 0x0

    .line 91
    .local v15, "fullGpl":Z
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 92
    if-eqz v8, :cond_0

    .line 93
    const/4 v15, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const/4 v14, 0x1

    goto :goto_0

    .line 97
    :cond_1
    if-eqz v2, :cond_2

    .line 98
    const/4 v12, 0x1

    goto :goto_0

    .line 99
    :cond_2
    if-eqz v4, :cond_3

    .line 100
    const/4 v13, 0x1

    goto :goto_0

    .line 101
    :cond_3
    if-eqz v8, :cond_5

    .line 102
    if-eqz v6, :cond_4

    .line 103
    const/4 v11, 0x1

    goto :goto_0

    .line 105
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    .line 108
    :cond_5
    if-eqz v6, :cond_6

    .line 109
    const/4 v10, 0x1

    .line 113
    :cond_6
    :goto_0
    move/from16 v16, v2

    .end local v2    # "speex":Z
    .local v16, "speex":Z
    const-string v2, "soxr"

    move/from16 v17, v4

    .end local v4    # "fribidi":Z
    .local v17, "fribidi":Z
    const-string v4, "iconv"

    move/from16 v18, v6

    .end local v6    # "gnutls":Z
    .local v18, "gnutls":Z
    const-string v6, "shine"

    move/from16 v19, v8

    .end local v8    # "xvid":Z
    .local v19, "xvid":Z
    const-string v8, "x265"

    move/from16 v20, v9

    .end local v9    # "minGpl":Z
    .local v20, "minGpl":Z
    const-string v9, "libass"

    move/from16 v21, v10

    .end local v10    # "https":Z
    .local v21, "https":Z
    const-string v10, "opus"

    move/from16 v22, v11

    .end local v11    # "httpsGpl":Z
    .local v22, "httpsGpl":Z
    const-string v11, "x264"

    move/from16 v23, v12

    .end local v12    # "audio":Z
    .local v23, "audio":Z
    const-string v12, "kvazaar"

    move/from16 v24, v13

    .end local v13    # "video":Z
    .local v24, "video":Z
    const-string v13, "opencore-amr"

    move/from16 v25, v14

    .end local v14    # "full":Z
    .local v25, "full":Z
    const-string v14, "libvidstab"

    move/from16 v26, v15

    .end local v15    # "fullGpl":Z
    .local v26, "fullGpl":Z
    const-string v15, "libvorbis"

    move-object/from16 v27, v7

    const-string v7, "libilbc"

    move-object/from16 v28, v8

    const-string v8, "mp3lame"

    move-object/from16 v29, v11

    const-string v11, "freetype"

    move-object/from16 v30, v1

    const-string v1, "fontconfig"

    move-object/from16 v31, v2

    const-string v2, "dav1d"

    move-object/from16 v32, v6

    const-string v6, "gmp"

    const-string v33, "custom"

    if-eqz v26, :cond_8

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 119
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 121
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 122
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 125
    const-string v1, "libtheora"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    const-string v1, "libvpx"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    const-string v1, "libwebp"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    const-string v1, "libxml2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 131
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 132
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 134
    const-string v1, "snappy"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 136
    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 137
    const-string v1, "twolame"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 140
    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    const-string v1, "zimg"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    const-string v1, "full-gpl"

    return-object v1

    .line 144
    :cond_7
    return-object v33

    .line 148
    :cond_8
    move-object/from16 v37, v27

    move-object/from16 v34, v28

    move-object/from16 v35, v29

    move-object/from16 v36, v30

    move-object/from16 v27, v14

    move-object/from16 v14, v32

    if-eqz v25, :cond_a

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 151
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 152
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 153
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 155
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 156
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 157
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 159
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 160
    const-string v1, "libtheora"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    const-string v1, "libvpx"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 163
    const-string v1, "libwebp"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 164
    const-string v1, "libxml2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 165
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 166
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 167
    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 168
    const-string v1, "snappy"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 169
    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 171
    const-string v1, "twolame"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 172
    const-string v1, "zimg"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 173
    const-string v1, "full"

    return-object v1

    .line 175
    :cond_9
    return-object v33

    .line 179
    :cond_a
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v5, v31

    move-object/from16 v6, v36

    if-eqz v24, :cond_c

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 182
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 183
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 184
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 185
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 186
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 187
    const-string v1, "libtheora"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 188
    const-string v1, "libvpx"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 189
    const-string v1, "libwebp"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 190
    const-string v1, "snappy"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 191
    const-string v1, "zimg"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 192
    const-string v1, "video"

    return-object v1

    .line 194
    :cond_b
    return-object v33

    .line 198
    :cond_c
    if-eqz v23, :cond_e

    .line 199
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 200
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 201
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 202
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 203
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 204
    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 205
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 206
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 207
    const-string v1, "twolame"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 208
    const-string v1, "audio"

    return-object v1

    .line 210
    :cond_d
    return-object v33

    .line 214
    :cond_e
    if-eqz v22, :cond_10

    .line 215
    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 216
    move-object/from16 v2, v28

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 217
    move-object/from16 v3, v27

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 218
    move-object/from16 v4, v35

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 219
    move-object/from16 v5, v34

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 220
    move-object/from16 v6, v37

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 221
    const-string v1, "https-gpl"

    return-object v1

    .line 223
    :cond_f
    return-object v33

    .line 227
    :cond_10
    move-object/from16 v3, v27

    move-object/from16 v2, v28

    move-object/from16 v1, v29

    move-object/from16 v5, v34

    move-object/from16 v4, v35

    move-object/from16 v6, v37

    if-eqz v21, :cond_12

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 230
    const-string v1, "https"

    return-object v1

    .line 232
    :cond_11
    return-object v33

    .line 236
    :cond_12
    if-eqz v20, :cond_14

    .line 237
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 238
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 239
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 240
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 241
    const-string v1, "min-gpl"

    return-object v1

    .line 243
    :cond_13
    return-object v33

    .line 247
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 248
    const-string v1, "min"

    return-object v1

    .line 250
    :cond_15
    return-object v33
.end method
