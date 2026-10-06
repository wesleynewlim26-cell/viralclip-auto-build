.class Lcom/arthenica/ffmpegkit/CameraSupport;
.super Ljava/lang/Object;
.source "CameraSupport.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extractSupportedCameraIds(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    const-string v0, "ffmpeg-kit"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "detectedCameraIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 54
    :try_start_0
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 55
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "cameraIdList":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 59
    .local v6, "cameraId":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 60
    .local v7, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 62
    .local v8, "cameraSupport":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Detected camera with id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has LEGACY hardware level which is not supported by Android Camera2 NDK API."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    :cond_0
    if-eqz v8, :cond_1

    .line 65
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v7    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "cameraSupport":Ljava/lang/Integer;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v3    # "cameraIdList":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "Detecting camera ids failed."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-object v1
.end method
