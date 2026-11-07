.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Landroid/bluetooth/BluetoothGatt;)V
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "BluetoothLeService"

    const-string v2, "discovery service success\uff01"

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "BluetoothLeService"

    const-string v2, "discovery service failure\uff01"

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "BluetoothLeService"

    const-string v2, "discovery service failure all the times\uff01"

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    return-void
.end method
