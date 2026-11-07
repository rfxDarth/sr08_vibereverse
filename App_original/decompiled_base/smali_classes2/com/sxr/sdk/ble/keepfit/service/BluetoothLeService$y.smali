.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothGatt;

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "disconnect while writeDescriptor return false."

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :catch_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "mBluetoothGatt already null when trying to disconnect"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "mBluetoothGatt is null, skip disconnect"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
