.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$c;
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$c;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$c;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    return-void
.end method
