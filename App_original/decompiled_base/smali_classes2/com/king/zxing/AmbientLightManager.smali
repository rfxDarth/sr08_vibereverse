.class final Lcom/king/zxing/AmbientLightManager;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static final BRIGHT_ENOUGH_LUX:F = 100.0f

.field protected static final TOO_DARK_LUX:F = 45.0f


# instance fields
.field private brightEnoughLux:F

.field private cameraManager:Lcom/king/zxing/camera/CameraManager;

.field private final context:Landroid/content/Context;

.field private lightSensor:Landroid/hardware/Sensor;

.field private tooDarkLux:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42340000    # 45.0f

    .line 45
    iput v0, p0, Lcom/king/zxing/AmbientLightManager;->tooDarkLux:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 49
    iput v0, p0, Lcom/king/zxing/AmbientLightManager;->brightEnoughLux:F

    .line 56
    iput-object p1, p0, Lcom/king/zxing/AmbientLightManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 82
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 83
    iget-object v1, p0, Lcom/king/zxing/AmbientLightManager;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz v1, :cond_1

    .line 84
    iget v2, p0, Lcom/king/zxing/AmbientLightManager;->tooDarkLux:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    .line 85
    invoke-virtual {v1, v0, p1}, Lcom/king/zxing/camera/CameraManager;->sensorChanged(ZF)V

    return-void

    .line 86
    :cond_0
    iget v2, p0, Lcom/king/zxing/AmbientLightManager;->brightEnoughLux:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 87
    invoke-virtual {v1, v0, p1}, Lcom/king/zxing/camera/CameraManager;->sensorChanged(ZF)V

    :cond_1
    return-void
.end method

.method public setBrightEnoughLux(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/king/zxing/AmbientLightManager;->brightEnoughLux:F

    return-void
.end method

.method public setTooDarkLux(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/king/zxing/AmbientLightManager;->tooDarkLux:F

    return-void
.end method

.method start(Lcom/king/zxing/camera/CameraManager;)V
    .locals 2

    .line 60
    iput-object p1, p0, Lcom/king/zxing/AmbientLightManager;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    .line 61
    iget-object p1, p0, Lcom/king/zxing/AmbientLightManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/king/zxing/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/king/zxing/camera/FrontLightMode;

    move-result-object p1

    sget-object v0, Lcom/king/zxing/camera/FrontLightMode;->AUTO:Lcom/king/zxing/camera/FrontLightMode;

    if-ne p1, v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/king/zxing/AmbientLightManager;->context:Landroid/content/Context;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    .line 64
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 66
    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/king/zxing/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/king/zxing/AmbientLightManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 74
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/king/zxing/AmbientLightManager;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    .line 76
    iput-object v0, p0, Lcom/king/zxing/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method
