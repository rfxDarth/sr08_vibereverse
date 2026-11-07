.class final Lcom/king/zxing/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# instance fields
.field private bestPreviewSize:Landroid/graphics/Point;

.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private cwNeededRotation:I

.field private cwRotationFromDisplayToCamera:I

.field private previewSizeOnScreen:Landroid/graphics/Point;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    return-void
.end method

.method private doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 2

    .line 252
    invoke-static {p1, p2}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 253
    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez p3, :cond_0

    .line 254
    const-string p3, "preferences_disable_exposure"

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_0

    .line 255
    invoke-static {p1, p2}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setBestExposure(Landroid/hardware/Camera$Parameters;Z)V

    :cond_0
    return-void
.end method

.method private initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V
    .locals 1

    .line 247
    invoke-static {p2}, Lcom/king/zxing/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/king/zxing/camera/FrontLightMode;

    move-result-object p2

    sget-object v0, Lcom/king/zxing/camera/FrontLightMode;->ON:Lcom/king/zxing/camera/FrontLightMode;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 248
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/king/zxing/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    return-void
.end method


# virtual methods
.method getBestPreviewSize()Landroid/graphics/Point;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getCWNeededRotation()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwNeededRotation:I

    return v0
.end method

.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getPreviewSizeOnScreen()Landroid/graphics/Point;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->previewSizeOnScreen:Landroid/graphics/Point;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getTorchState(Landroid/hardware/Camera;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    .line 232
    const-string v1, "on"

    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "torch"

    .line 234
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method initFromCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;)V
    .locals 8

    .line 57
    invoke-virtual {p1}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 59
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 78
    rem-int/lit8 v5, v2, 0x5a

    if-nez v5, :cond_0

    add-int/lit16 v2, v2, 0x168

    .line 79
    rem-int/lit16 v2, v2, 0x168

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad rotation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v2, 0x10e

    goto :goto_0

    :cond_2
    const/16 v2, 0xb4

    goto :goto_0

    :cond_3
    const/16 v2, 0x5a

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 84
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Display at: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/king/zxing/camera/open/OpenCamera;->getOrientation()I

    move-result v5

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Camera at: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/king/zxing/camera/open/OpenCamera;->getFacing()Lcom/king/zxing/camera/open/CameraFacing;

    move-result-object v6

    sget-object v7, Lcom/king/zxing/camera/open/CameraFacing;->FRONT:Lcom/king/zxing/camera/open/CameraFacing;

    if-ne v6, v7, :cond_5

    rsub-int v5, v5, 0x168

    .line 91
    rem-int/lit16 v5, v5, 0x168

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Front camera overriden to: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    :cond_5
    add-int/lit16 v5, v5, 0x168

    sub-int/2addr v5, v2

    .line 109
    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwRotationFromDisplayToCamera:I

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Final display orientation: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwRotationFromDisplayToCamera:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/king/zxing/camera/open/OpenCamera;->getFacing()Lcom/king/zxing/camera/open/CameraFacing;

    move-result-object p1

    sget-object v2, Lcom/king/zxing/camera/open/CameraFacing;->FRONT:Lcom/king/zxing/camera/open/CameraFacing;

    if-ne p1, v2, :cond_6

    .line 112
    const-string p1, "Compensating rotation for front camera"

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 113
    iget p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwRotationFromDisplayToCamera:I

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwNeededRotation:I

    goto :goto_1

    .line 115
    :cond_6
    iget p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwRotationFromDisplayToCamera:I

    iput p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwNeededRotation:I

    .line 117
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Clockwise rotation from display to camera: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwNeededRotation:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 119
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 120
    invoke-virtual {v1, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 121
    iput-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Screen resolution in current orientation: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-static {v0, p1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera resolution: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-static {v0, p1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Best available preview size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge p1, v0, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 130
    :goto_2
    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_8

    const/4 v3, 0x1

    :cond_8
    if-ne p1, v3, :cond_9

    .line 133
    iget-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->previewSizeOnScreen:Landroid/graphics/Point;

    goto :goto_3

    .line 135
    :cond_9
    new-instance p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->previewSizeOnScreen:Landroid/graphics/Point;

    .line 137
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Preview size on screen: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->previewSizeOnScreen:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method setDesiredCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;Z)V
    .locals 5

    .line 142
    invoke-virtual {p1}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    const-string p1, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initial camera parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 153
    const-string v1, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 162
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Lcom/king/zxing/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V

    .line 164
    const-string v2, "preferences_auto_focus"

    const/4 v3, 0x1

    .line 166
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "preferences_disable_continuous_focus"

    .line 167
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 164
    invoke-static {v0, v2, v4, p2}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setFocus(Landroid/hardware/Camera$Parameters;ZZZ)V

    if-nez p2, :cond_6

    .line 171
    const-string p2, "preferences_invert_scan"

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 172
    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setInvertColor(Landroid/hardware/Camera$Parameters;)V

    .line 175
    :cond_3
    const-string p2, "preferences_disable_barcode_scene_mode"

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 176
    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 179
    :cond_4
    const-string p2, "preferences_disable_metering"

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_5

    .line 180
    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 181
    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setFocusArea(Landroid/hardware/Camera$Parameters;)V

    .line 182
    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 187
    :cond_5
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 191
    :cond_6
    iget-object p2, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 195
    iget p2, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->cwRotationFromDisplayToCamera:I

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 197
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 199
    iget-object p2, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    if-eq p2, v0, :cond_8

    .line 200
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Camera said it supported preview size "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but after setting it, preview size is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 203
    iget-object p2, p0, Lcom/king/zxing/camera/CameraConfigurationManager;->bestPreviewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_8
    return-void
.end method

.method setTorch(Landroid/hardware/Camera;Z)V
    .locals 2

    .line 241
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, v0, p2, v1}, Lcom/king/zxing/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 243
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
