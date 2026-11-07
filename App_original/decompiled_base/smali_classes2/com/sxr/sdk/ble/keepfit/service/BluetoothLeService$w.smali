.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 3
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_RX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->c0:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->b0:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_2

    .line 19
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onCharacteristicChanged(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCharacteristicChanged exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothLeService"

    invoke-static {p2, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCharacteristicRead "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothLeService"

    invoke-static {p1, p3, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCharacteristicWrite "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-static {p1, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-interface {p1, v0, p2, p3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onCharacteristicWrite(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onCharacteristicWrite exception: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 8

    const-string v0, "BluetoothLeService"

    const-string v1, "call retryManager.startOperation() exception: "

    const-string v2, "prepare reconnect bInitGattServices = "

    const-string v3, "mUserDisconnected "

    const-string v4, "onConnectionStateChange same state lastConnectionState "

    const-string v5, "onConnectionStateChange status "

    .line 1
    :try_start_0
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v6

    if-ne v6, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lastConnectionState "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new state "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v4, 0x101

    if-ne p2, v4, :cond_1

    .line 10
    :try_start_1
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v5, "disable ble exception occured."

    invoke-static {v4, v0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :catch_1
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v5, "disable ble NullPointerException occured."

    invoke-static {v4, v0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;

    invoke-direct {v5, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p3, v4, :cond_6

    .line 46
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 47
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 50
    sget-object p1, Lcom/sxr/sdk/ble/keepfit/service/b;->X:Ljava/lang/String;

    .line 51
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p2, "STATE_CONNECTED mBleState[%d]"

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c()V

    .line 58
    :cond_2
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 59
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p2, "discoveryServicesDelayRunnable removed 2"

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    :cond_3
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 64
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p2, "reconnectDeviceRunnable removed 2"

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/bluetooth/BluetoothGatt;)V

    .line 69
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 71
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p2, "call retryManager.startOperation() immediately."

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz p1, :cond_5

    .line 75
    :try_start_3
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 77
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 79
    :try_start_4
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :cond_5
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p2, "call retryManager.startOperation()  mBluetoothGatt is null."

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-nez p3, :cond_d

    .line 85
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/bluetooth/BluetoothGatt;)Z

    .line 89
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    .line 90
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 91
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c()V

    .line 93
    :cond_7
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 94
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p3, "discoveryServicesDelayRunnable removed 3"

    invoke-static {p1, v0, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d()Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    :cond_8
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 99
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    goto/16 :goto_1

    .line 100
    :cond_9
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p3, 0xa

    if-eq p1, p3, :cond_d

    .line 102
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v6, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IZ)V

    .line 103
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bNeedReconnectWhenStart = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x13

    if-eq p2, p1, :cond_a

    const/16 p1, 0x8

    if-ne p2, p1, :cond_b

    .line 105
    :cond_a
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 106
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 108
    :cond_b
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string p2, "delay 5000ms for reconnect device."

    const-wide/16 v1, 0x1388

    if-nez p1, :cond_c

    :try_start_5
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 109
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$b;

    invoke-direct {p3, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$b;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;)V

    invoke-virtual {p1, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_c
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$c;

    invoke-direct {p3, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w$c;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;)V

    invoke-virtual {p1, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 160
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDescriptorWrite "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x101

    if-ne p3, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p3, "Descriptor write failed: GATT_FAILURE. Will disconnect and refresh cache."

    invoke-static {p2, v2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_RX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    :cond_1
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    const-string p1, "BluetoothLeService"

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MTU changed successfully to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MTU change failed with status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceRssi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onReadRemoteRssi exception: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BluetoothLeService"

    invoke-static {p2, p3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    const-string p1, "BluetoothLeService"

    const-string v0, "onServicesDiscovered "

    if-nez p2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->Z:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(I)I

    .line 5
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->a0:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    return-void
.end method
