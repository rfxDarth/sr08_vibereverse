.class Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->onMagneticSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
