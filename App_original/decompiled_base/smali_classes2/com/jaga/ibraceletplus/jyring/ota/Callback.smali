.class public Lcom/jaga/ibraceletplus/jyring/ota/Callback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Callback.java"


# static fields
.field public static TAG:Ljava/lang/String; = "blueCallback"


# instance fields
.field private bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private refreshAttempt:I

.field private refreshDone:Z

.field task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->refreshDone:Z

    .line 36
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->refreshAttempt:I

    .line 39
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    .line 40
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .line 320
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 327
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget p2, p2, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->type:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/16 p2, 0x10

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-ne p1, p2, :cond_1

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    if-eqz v0, :cond_2

    const/4 p1, 0x5

    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_5

    :cond_4
    move v3, p1

    const/4 p1, -0x1

    :cond_5
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_7

    if-gez p1, :cond_7

    if-ltz v3, :cond_6

    goto :goto_2

    :cond_6
    return-void

    .line 344
    :cond_7
    :goto_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 345
    const-string v0, "jringBluetoothGattUpdate"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v0, "step"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v0, "error"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string/jumbo p1, "status"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    .line 174
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 177
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 179
    :cond_1
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x2

    goto/16 :goto_1

    .line 181
    :cond_2
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x3

    goto :goto_1

    .line 183
    :cond_3
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_VERSION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x11

    .line 185
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaVersion"

    :goto_0
    move v1, v0

    const/4 v0, -0x1

    goto :goto_1

    .line 186
    :cond_4
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_PATCH_DATA_CHAR_SIZE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x12

    if-eqz v1, :cond_5

    .line 188
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaPatchDataSize"

    goto :goto_0

    .line 189
    :cond_5
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_MTU_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaMtu"

    goto :goto_0

    .line 192
    :cond_6
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_L2CAP_PSM_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaL2capPsm"

    goto :goto_0

    .line 197
    :cond_7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    const/4 v1, -0x1

    goto :goto_1

    :cond_8
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_c

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "onCharacteristicRead: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 208
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 209
    const-string v6, "jringBluetoothGattUpdate"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v6, "value"

    if-ltz v4, :cond_a

    .line 211
    const-string v0, "characteristic"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 213
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 215
    :cond_9
    new-instance p1, Ljava/lang/String;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_a
    if-eqz v5, :cond_b

    .line 219
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 221
    :cond_b
    const-string/jumbo v1, "step"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x14

    .line 222
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 224
    :goto_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 227
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .line 234
    const-string v0, "jringBluetoothGattUpdate"

    if-nez p3, :cond_6

    .line 238
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->step:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_5

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x5

    const/4 v2, 0x5

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    const/4 v2, 0x7

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->chunkCounter:I

    if-eq v1, v2, :cond_5

    .line 263
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendBlock()F

    :cond_5
    :goto_0
    if-lez v2, :cond_7

    .line 267
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 268
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v0, "step"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    .line 273
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "write failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget-boolean v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->rebootsignalSent:Z

    if-nez v1, :cond_7

    .line 276
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v0, "error"

    const v2, 0xffff

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 282
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "le onConnectionStateChange ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 57
    const-string p2, "le device connected"

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 58
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/Callback;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 66
    const-string p2, "le device disconnected"

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 69
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 71
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 72
    const-string p2, "jringConnectionState"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo p2, "state"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 288
    const-string v0, "onDescriptorWrite"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 289
    const-string v0, "jringBluetoothGattUpdate"

    if-eqz p3, :cond_0

    .line 290
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string p2, "error"

    const p3, 0xffff

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 296
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {p3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 298
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    .line 299
    const-string p3, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, p2, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onDescriptorWrite: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 305
    const-string p2, "0000"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    return-void

    .line 310
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 311
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string/jumbo p3, "step"

    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 315
    :cond_3
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->publishProgess(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    if-nez p3, :cond_0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "MTU changed to "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 81
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 82
    const-string p3, "jringBluetoothGattUpdate"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo p3, "suotaMtu"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MTU request failure, status="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServicesDiscovered status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 93
    const-string v0, "error"

    const-string v1, "jringBluetoothGattUpdate"

    if-eqz p2, :cond_0

    .line 94
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0xffff

    .line 96
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 132
    :cond_0
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 133
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 134
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    .line 135
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    .line 136
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    .line 137
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    .line 138
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    .line 139
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    .line 140
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->CLIENT_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 150
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string/jumbo p2, "step"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 154
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/ota/Callback$2;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/Callback$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/Callback;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 142
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 143
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0xfffe

    .line 144
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->task:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 5

    .line 355
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-ui.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/JRing/log/"

    invoke-static {v0, p1, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected sendBroadcastWithPackage(Landroid/content/Intent;)V
    .locals 1

    .line 48
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public setBluetoothManager(Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    return-void
.end method
