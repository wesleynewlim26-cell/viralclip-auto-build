.class public Lcom/arthenica/ffmpegkit/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field static final FFMPEG_LIBRARIES:[Ljava/lang/String;

.field static final LIBRARIES_LINKED_WITH_CXX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 37
    const-string v5, "avfilter"

    const-string v6, "avdevice"

    const-string v0, "avutil"

    const-string v1, "swscale"

    const-string v2, "swresample"

    const-string v3, "avcodec"

    const-string v4, "avformat"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arthenica/ffmpegkit/NativeLoader;->FFMPEG_LIBRARIES:[Ljava/lang/String;

    .line 39
    const-string v8, "zimg"

    const-string v9, "libilbc"

    const-string v1, "chromaprint"

    const-string v2, "openh264"

    const-string v3, "rubberband"

    const-string v4, "snappy"

    const-string v5, "srt"

    const-string v6, "tesseract"

    const-string v7, "x265"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arthenica/ffmpegkit/NativeLoader;->LIBRARIES_LINKED_WITH_CXX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enableRedirection()V
    .locals 1

    .line 124
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableRedirection()V

    .line 127
    :cond_0
    return-void
.end method

.method static getDeviceDebugInformation()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "brand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ", model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", api level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    nop

    .line 207
    const-string v1, ", abis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", 32bit abis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", 64bit abis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static isTestModeDisabled()Z
    .locals 1

    .line 42
    const-string v0, "enable.ffmpeg.kit.test.mode"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static loadAbi()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static loadBuildDate()Ljava/lang/String;
    .locals 3

    .line 116
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getBuildDate()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadExternalLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getExternalLibraries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static loadFFmpeg()Z
    .locals 2

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "nativeFFmpegLoaded":Z
    const/4 v1, 0x0

    .line 137
    .local v1, "nativeFFmpegTriedAndFailed":Z
    nop

    .line 167
    return v1
.end method

.method static loadFFmpegKit(Z)V
    .locals 4
    .param p0, "nativeFFmpegTriedAndFailed"    # Z

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "nativeFFmpegKitLoaded":Z
    if-nez p0, :cond_0

    const-string v1, "arm-v7a"

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadNativeAbi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    const-string v1, "ffmpegkit_armv7a_neon"

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    .line 182
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->setArmV7aNeonLoaded()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Error;
    invoke-static {v1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "NEON supported armeabi-v7a ffmpegkit library not found. Loading default armeabi-v7a library.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ffmpeg-kit"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1    # "e":Ljava/lang/Error;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 189
    const-string v1, "ffmpegkit"

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    .line 191
    :cond_1
    return-void
.end method

.method static loadFFmpegKitAbiDetect()V
    .locals 1

    .line 130
    const-string v0, "ffmpegkit_abidetect"

    invoke-static {v0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static loadIsLTSBuild()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->isNativeLTSBuild()Z

    move-result v0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static loadLibrary(Ljava/lang/String;)V
    .locals 4
    .param p0, "libraryName"    # Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/Error;

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->getDeviceDebugInformation()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "FFmpegKit failed to start on %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 53
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    return-void
.end method

.method static loadLogLevel()I
    .locals 1

    .line 108
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeLogLevel()I

    move-result v0

    return v0

    .line 111
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v0

    return v0
.end method

.method private static loadNativeAbi()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static loadPackageName()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "test"

    return-object v0
.end method

.method static loadVersion()Ljava/lang/String;
    .locals 3

    .line 88
    const-string v0, "6.0"

    .line 90
    .local v0, "version":Ljava/lang/String;
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadIsLTSBuild()Z

    move-result v1

    const-string v2, "6.0"

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "%s-lts"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_1
    return-object v2
.end method
