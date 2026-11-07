.class public Lcom/google/zxing/common/AmbientLightManager;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final BRIGHT_ENOUGH_LUX:F = 450.0f

.field private static final TOO_DARK_LUX:F = 45.0f


# instance fields
.field private cameraManager:Lcom/google/zxing/camera/CameraManager;

.field private final context:Landroid/content/Context;

.field private lightSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/common/AmbientLightManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 83
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 84
    iget-object v1, p0, Lcom/google/zxing/common/AmbientLightManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    if-eqz v1, :cond_1

    const/high16 v2, 0x42340000    # 45.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    .line 86
    invoke-virtual {v1, p1}, Lcom/google/zxing/camera/CameraManager;->setTorch(Z)V

    return-void

    :cond_0
    const/high16 v2, 0x43e10000    # 450.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    .line 89
    invoke-virtual {v1, v0}, Lcom/google/zxing/camera/CameraManager;->setTorch(Z)V

    :cond_1
    return-void
.end method

.method public start(Lcom/google/zxing/camera/CameraManager;)V
    .locals 2

    .line 54
    iput-object p1, p0, Lcom/google/zxing/common/AmbientLightManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    .line 55
    iget-object p1, p0, Lcom/google/zxing/common/AmbientLightManager;->context:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/google/zxing/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/google/zxing/camera/FrontLightMode;

    move-result-object p1

    sget-object v0, Lcom/google/zxing/camera/FrontLightMode;->AUTO:Lcom/google/zxing/camera/FrontLightMode;

    if-ne p1, v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/google/zxing/common/AmbientLightManager;->context:Landroid/content/Context;

    const-string/jumbo v0, "sensor"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    .line 60
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 62
    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/zxing/common/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/AmbientLightManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 72
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/google/zxing/common/AmbientLightManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    .line 74
    iput-object v0, p0, Lcom/google/zxing/common/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method
