.class public Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SuCallback.java"


# static fields
.field public static TAG:Ljava/lang/String; = "SuCallback"


# instance fields
.field private bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

.field private context:Landroid/content/Context;

.field private curTime:I

.field private handler:Landroid/os/Handler;

.field private refreshAttempt:I

.field private refreshDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->curTime:I

    .line 48
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .line 294
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x1

    .line 296
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "SPOTA_SERV_STATUS notification: %#04x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->type:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/16 p1, 0x10

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-ne p2, p1, :cond_1

    :goto_0
    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

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

    if-eq p2, v1, :cond_4

    if-ne p2, v2, :cond_5

    :cond_4
    move v3, p2

    const/4 p2, -0x1

    :cond_5
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_7

    if-gez p2, :cond_7

    if-ltz v3, :cond_6

    goto :goto_2

    :cond_6
    return-void

    .line 318
    :cond_7
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 319
    const-string v0, "jringBluetoothGattUpdate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v0, "step"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string/jumbo p2, "status"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    .line 162
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 163
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

    .line 165
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 167
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

    .line 169
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

    .line 171
    :cond_3
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_VERSION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x11

    .line 173
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaVersion"

    :goto_0
    move v1, v0

    const/4 v0, -0x1

    goto :goto_1

    .line 174
    :cond_4
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_PATCH_DATA_CHAR_SIZE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x12

    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaPatchDataSize"

    goto :goto_0

    .line 177
    :cond_5
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_MTU_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 179
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaMtu"

    goto :goto_0

    .line 180
    :cond_6
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_L2CAP_PSM_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaL2capPsm"

    goto :goto_0

    .line 185
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
    if-eqz v3, :cond_b

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "onCharacteristicRead: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 196
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 197
    const-string v6, "jringBluetoothGattUpdate"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v6, "value"

    if-ltz v4, :cond_9

    .line 199
    const-string v0, "characteristic"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    .line 206
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 208
    :cond_a
    const-string/jumbo v1, "step"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x14

    .line 209
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    :goto_2
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 214
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCharacteristicWrite: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 221
    const-string v0, "jringBluetoothGattUpdate"

    if-nez p3, :cond_6

    .line 222
    const-string/jumbo v1, "write succeeded"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->step:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_5

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

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

    .line 238
    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->chunkCounter:I

    if-eq v1, v2, :cond_5

    .line 249
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendBlock()F

    :cond_5
    :goto_0
    if-lez v2, :cond_7

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 254
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v0, "step"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    goto :goto_1

    .line 259
    :cond_6
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget-boolean v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->rebootsignalSent:Z

    if-nez v1, :cond_7

    .line 262
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 263
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v0, "error"

    const v2, 0xffff

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 268
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "le onConnectionStateChange ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 65
    const-string p2, "le device connected"

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 68
    const-string p1, "le device disconnected"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

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
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 273
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 274
    const-string p1, "onDescriptorWrite"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 275
    const-string p1, "jringBluetoothGattUpdate"

    if-eqz p3, :cond_0

    .line 276
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 277
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string p1, "error"

    const p3, 0xffff

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 282
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    sget-object p3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 285
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 286
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string/jumbo p1, "step"

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    if-nez p3, :cond_0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "MTU changed to "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 86
    :cond_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MTU request failure, status="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4

    .line 92
    const-string v0, "onServicesDiscovered"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 101
    :cond_0
    iget-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->refreshDone:Z

    const/4 v2, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->refreshAttempt:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->refreshAttempt:I

    const/16 v3, 0xa

    if-gt p2, v3, :cond_2

    .line 102
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->refresh(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->refreshDone:Z

    if-eqz p2, :cond_1

    .line 104
    const-string/jumbo p2, "restart discovery after refresh"

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void

    .line 109
    :cond_2
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 110
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 111
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    .line 112
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    .line 113
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    .line 114
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    .line 115
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    .line 116
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    .line 117
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->CLIENT_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo p1, "send step 0."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->saveLog(Ljava/lang/String;)V

    .line 135
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 136
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo p2, "step"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 140
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->curTime:I

    if-nez p1, :cond_4

    .line 141
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->curTime:I

    .line 142
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;)V

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    .line 119
    :cond_5
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0xfffe

    .line 121
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 5

    .line 328
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SuCallback: "

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

    .line 56
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public setBluetoothManager(Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuCallback;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    return-void
.end method
