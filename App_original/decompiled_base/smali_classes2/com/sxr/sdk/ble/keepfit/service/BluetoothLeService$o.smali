.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z()V
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v1, "service initCharacteristicRawData."

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_RX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 4
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "connect characteristic raw data error."

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
