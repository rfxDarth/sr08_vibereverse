.class Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->onResume()V
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

    .line 274
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->locationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
