.class public abstract Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field public static final END_SIGNAL:I = -0x2000000

.field public static final REBOOT_SIGNAL:I = -0x3000000

.field static final TAG:Ljava/lang/String; = "BluetoothManager"


# instance fields
.field CS_GPIO:I

.field I2CDeviceAddress:I

.field MISO_GPIO:I

.field MOSI_GPIO:I

.field SCK_GPIO:I

.field SCL_GPIO:I

.field SDA_GPIO:I

.field bEnableNotification:Z

.field blockCounter:I

.field public characteristicsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field chunkCounter:I

.field context:Landroid/content/Context;

.field device:Landroid/bluetooth/BluetoothDevice;

.field endSignalSent:Z

.field errors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field file:Lcom/jaga/ibraceletplus/jyring/ota/File;

.field fileName:Ljava/lang/String;

.field finished:Z

.field gpioMapPrereq:I

.field hasError:Z

.field imageBank:I

.field lastBlock:Z

.field lastBlockSent:Z

.field memoryType:I

.field patchBaseAddress:I

.field preparedForLastBlock:Z

.field rebootsignalSent:Z

.field refreshPending:Z

.field step:I

.field public type:I

.field uploadStart:J

.field wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlock:Z

    .line 62
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlockSent:Z

    .line 63
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->preparedForLastBlock:Z

    .line 64
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->endSignalSent:Z

    .line 65
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->rebootsignalSent:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->bEnableNotification:Z

    .line 67
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->finished:Z

    .line 68
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->hasError:Z

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->step:I

    .line 72
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->blockCounter:I

    .line 73
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->chunkCounter:I

    .line 74
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->gpioMapPrereq:I

    .line 81
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->context:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->initErrorMap()V

    .line 83
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    return-void
.end method

.method private getMemParamsI2C()I
    .locals 2

    .line 277
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->I2CDeviceAddress:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->SCL_GPIO:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->SDA_GPIO:I

    or-int/2addr v0, v1

    return v0
.end method

.method private getMemParamsSPI()I
    .locals 2

    .line 266
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->MISO_GPIO:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->MOSI_GPIO:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->CS_GPIO:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->SCK_GPIO:I

    or-int/2addr v0, v1

    return v0
.end method

.method private initErrorMap()V
    .locals 3

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x3

    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Forced exit of SPOTA service."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Patch Data CRC mismatch."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Received patch Length not equal to PATCH_LEN characteristic value."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "External Memory Error. Writing to external device failed."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Internal Memory Error. Not enough internal memory space for patch."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid memory device."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Application error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SPOTA service started instead of SUOTA."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image bank."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image header."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image size."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid product header."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Same Image Error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to read from external memory device."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Communication error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    const v1, 0xfffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The remote device does not support SUOTA."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static refresh(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private sendProgressUpdate(I)V
    .locals 2

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringProgressUpdate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public disableNotifications()V
    .locals 6

    .line 217
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->bEnableNotification:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    const-string v0, "Disable SPOTA_SERV_STATUS notifications"

    .line 221
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v3

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "disableNotifications setCharacteristicNotification = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 236
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->CLIENT_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_0
    return-void

    .line 240
    :cond_4
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 241
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 243
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->bEnableNotification:Z

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "Release wake lock"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 467
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 469
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->refreshPending:Z

    if-eqz v0, :cond_1

    .line 470
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->refresh(Landroid/bluetooth/BluetoothGatt;)Z

    .line 471
    :cond_1
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->close()V

    :cond_2
    return-void
.end method

.method public enableNotifications()V
    .locals 6

    .line 187
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->bEnableNotification:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    const-string v0, "Enable SPOTA_SERV_STATUS notifications"

    .line 191
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enableNotifications setCharacteristicNotification = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 206
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->CLIENT_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_0
    return-void

    .line 210
    :cond_4
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 211
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 213
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->bEnableNotification:Z

    return-void
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getError()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->hasError:Z

    return v0
.end method

.method public getFile()Lcom/jaga/ibraceletplus/jyring/ota/File;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSpotaMemDev()I
.end method

.method protected goToStep(I)V
    .locals 2

    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    const-string/jumbo v1, "step"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->processStep(Landroid/content/Intent;)V

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->finished:Z

    return v0
.end method

.method public isRefreshPending()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->refreshPending:Z

    return v0
.end method

.method public onError(I)V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->errors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 527
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->hasError:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 529
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->hasError:Z

    .line 531
    new-instance p1, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 536
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->disconnect()V

    return-void
.end method

.method protected onSuccess()V
    .locals 4

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->finished:Z

    .line 482
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->refreshPending:Z

    .line 483
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->uploadStart:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upload completed in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    const-string v1, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public abstract processStep(Landroid/content/Intent;)V
.end method

.method public queueReadDeviceInfo()V
    .locals 6

    .line 418
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "services size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "characteristics size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 423
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 424
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 426
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 428
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 434
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 435
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->setSpotaMemInfoCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 438
    const-string v3, "found SPOTA_MEM_INFO_UUID"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public readNextCharacteristic()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "characteristicsQueue size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "characteristic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 450
    const-string v0, "readNextCharacteristic"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlock:Z

    .line 88
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlockSent:Z

    .line 89
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->preparedForLastBlock:Z

    .line 90
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->endSignalSent:Z

    .line 91
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->rebootsignalSent:Z

    .line 92
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->finished:Z

    .line 93
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->hasError:Z

    .line 94
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->blockCounter:I

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->chunkCounter:I

    .line 96
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->gpioMapPrereq:I

    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 5

    .line 591
    const-string v0, "BluetoothManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->context:Landroid/content/Context;

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

.method public sendBlock()F
    .locals 6

    .line 322
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 324
    :cond_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->blockCounter:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getNumberOfBlocks()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    .line 325
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlockSent:Z

    if-nez v0, :cond_4

    float-to-int v0, v1

    .line 332
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendProgressUpdate(I)V

    .line 333
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->blockCounter:I

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getBlock(I)[[B

    move-result-object v0

    .line 335
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->chunkCounter:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->chunkCounter:I

    .line 340
    array-length v4, v0

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_1

    const/4 v4, -0x1

    .line 341
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->chunkCounter:I

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 344
    :goto_0
    aget-object v3, v0, v3

    .line 346
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getChunksPerBlockCount()I

    .line 361
    array-length v0, v0

    array-length v0, v3

    .line 363
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sget-object v5, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v5, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 365
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 366
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    if-eqz v4, :cond_4

    .line 372
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getNumberOfBlocks()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 373
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlock:Z

    .line 375
    :cond_2
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlock:Z

    if-nez v0, :cond_3

    .line 376
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->blockCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->blockCounter:I

    goto :goto_1

    .line 378
    :cond_3
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlockSent:Z

    .line 380
    :goto_1
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->blockCounter:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getNumberOfBlocks()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 381
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlock:Z

    :cond_4
    return v1
.end method

.method public sendEndSignal()V
    .locals 4

    .line 394
    const-string/jumbo v0, "sendEndSignal"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 397
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/high16 v3, -0x2000000

    .line 398
    invoke-virtual {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 399
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_0
    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->endSignalSent:Z

    return-void
.end method

.method public sendRebootSignal()V
    .locals 4

    .line 405
    const-string/jumbo v0, "sendRebootSignal"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/high16 v3, -0x3000000

    .line 409
    invoke-virtual {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 410
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_0
    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->rebootsignalSent:Z

    return-void
.end method

.method public setCS_GPIO(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->CS_GPIO:I

    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setFile(Lcom/jaga/ibraceletplus/jyring/ota/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    .line 123
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->type:I

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->setType(I)V

    return-void
.end method

.method public setFileBlockSize(I)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/ota/File;->setFileBlockSize(II)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setI2CDeviceAddress(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->I2CDeviceAddress:I

    return-void
.end method

.method public setImageBank(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->imageBank:I

    return-void
.end method

.method public setMISO_GPIO(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->MISO_GPIO:I

    return-void
.end method

.method public setMOSI_GPIO(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->MOSI_GPIO:I

    return-void
.end method

.method public setMemoryType(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->memoryType:I

    return-void
.end method

.method public setPatchBaseAddress(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->patchBaseAddress:I

    return-void
.end method

.method public setPatchLength()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getFileBlockSize()I

    move-result v0

    .line 311
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->lastBlock:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getNumberOfBytes()I

    move-result v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getFileBlockSize()I

    move-result v1

    rem-int/2addr v0, v1

    .line 313
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->preparedForLastBlock:Z

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setPatchLength: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%#06x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const/16 v2, 0x12

    .line 317
    invoke-virtual {v1, v0, v2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 318
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method public setRefreshPending(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->refreshPending:Z

    return-void
.end method

.method public setSCK_GPIO(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->SCK_GPIO:I

    return-void
.end method

.method public setSCL_GPIO(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->SCL_GPIO:I

    return-void
.end method

.method public setSDA_GPIO(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->SDA_GPIO:I

    return-void
.end method

.method public setSpotaGpioMap()V
    .locals 6

    .line 284
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->memoryType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->getMemParamsI2C()I

    move-result v0

    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->getMemParamsSPI()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 294
    :goto_1
    const-string v4, "BluetoothManager"

    if-eqz v1, :cond_2

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setSpotaGpioMap: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    const-string v5, "%#010x"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    .line 297
    :try_start_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const/16 v2, 0x14

    .line 298
    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 299
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 302
    :catch_0
    const-string v0, "exception occored."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_2
    const-string v0, "Memory type not set."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSpotaMemDev()V
    .locals 4

    .line 249
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->getSpotaMemDev()I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 252
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSpotaMemDev: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "%#010x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->saveLog(Ljava/lang/String;)V

    return-void
.end method
