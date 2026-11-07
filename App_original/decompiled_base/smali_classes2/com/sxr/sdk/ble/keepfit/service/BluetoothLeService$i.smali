.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-boolean v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v:Z

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Z)V

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "BluetoothLeService"

    const-string v2, "removeCallbacks stopLeDeviceRunnable"

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
