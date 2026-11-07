.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BluetoothLeService"

    .line 1
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 4
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "delay 2000ms for enable ble."

    invoke-static {v1, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "mGattCallback reconnectDeviceHandler exception occured."

    invoke-static {v1, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :catch_1
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "mGattCallback reconnectDeviceHandler NullPointerException occured."

    invoke-static {v1, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
