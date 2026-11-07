.class public Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;
.super Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;
.source "SuotaManager.java"


# static fields
.field public static final MEMORY_TYPE_EXTERNAL_I2C:I = 0x12

.field public static final MEMORY_TYPE_EXTERNAL_SPI:I = 0x13

.field static final TAG:Ljava/lang/String; = "SuotaManager"

.field public static final TYPE:I = 0x1


# instance fields
.field private fileChunkSize:I

.field private l2capPsm:I

.field private lastStep:I

.field private mtu:I

.field private mtuReadAfterRequest:Z

.field private mtuRequestSent:Z

.field private patchDataSize:I

.field private version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->version:I

    const/16 v1, 0x17

    .line 31
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtu:I

    const/16 v1, 0x14

    .line 32
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->patchDataSize:I

    .line 33
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->fileChunkSize:I

    .line 34
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtuRequestSent:Z

    .line 35
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtuReadAfterRequest:Z

    .line 36
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->l2capPsm:I

    const/16 v0, -0x64

    .line 38
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->lastStep:I

    .line 42
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->type:I

    return-void
.end method


# virtual methods
.method protected getSpotaMemDev()I
    .locals 2

    .line 194
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->memoryType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/16 v0, 0x13

    :goto_0
    shl-int/lit8 v0, v0, 0x18

    .line 202
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->imageBank:I

    or-int/2addr v0, v1

    return v0
.end method

.method public processStep(Landroid/content/Intent;)V
    .locals 9

    .line 47
    const-string v0, " bytes"

    .line 0
    const-string v1, "Chunk size: "

    const-string v2, "Upload size: "

    .line 47
    const-string/jumbo v3, "step"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 48
    const-string v5, "error"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processStep : newStep "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    if-eq v5, v4, :cond_0

    .line 51
    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->onError(I)V

    return-void

    .line 55
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "processStep : step "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->step:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ltz v3, :cond_1

    .line 57
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->step:I

    goto/16 :goto_1

    .line 61
    :cond_1
    const-string v3, "characteristic"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 63
    const-string/jumbo v3, "value"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 66
    :cond_2
    const-string/jumbo v3, "suotaVersion"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 67
    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->version:I

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SUOTA version: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->version:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_3
    const-string/jumbo v3, "suotaPatchDataSize"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 70
    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->patchDataSize:I

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SUOTA patch data size: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->patchDataSize:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->updateFileChunkSize()V

    goto/16 :goto_0

    .line 73
    :cond_4
    const-string/jumbo v3, "suotaMtu"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 74
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtu:I

    .line 75
    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtu:I

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SUOTA MTU: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtu:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->updateFileChunkSize()V

    .line 79
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtuRequestSent:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtuReadAfterRequest:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtu:I

    if-eq p1, v7, :cond_6

    .line 80
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtuReadAfterRequest:Z

    .line 82
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Xiaomi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/File;

    const-string v3, "/system/lib/libbtsession.so"

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 83
    const-string p1, "Workaround for Xiaomi MTU issue. Read MTU again."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_MTU_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 86
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_5
    const-string/jumbo v3, "suotaL2capPsm"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 90
    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->l2capPsm:I

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "SUOTA L2CAP PSM: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->l2capPsm:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 94
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtuRequestSent:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtu:I

    const/16 v3, 0x17

    if-ne p1, v3, :cond_7

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->patchDataSize:I

    add-int/2addr v3, v5

    if-ge p1, v3, :cond_7

    .line 95
    const-string p1, "Sending MTU request"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 96
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtuRequestSent:Z

    .line 97
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->patchDataSize:I

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->readNextCharacteristic()V

    .line 102
    :goto_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->lastStep:I

    const/4 v3, 0x5

    if-eq p1, v3, :cond_8

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "step "

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->step:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 104
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->step:I

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->lastStep:I

    .line 107
    :cond_8
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->step:I

    if-eqz p1, :cond_13

    if-eq p1, v6, :cond_12

    const/4 v4, 0x2

    if-eq p1, v4, :cond_11

    if-eq p1, v5, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    if-eq p1, v3, :cond_9

    goto :goto_2

    .line 173
    :cond_9
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->lastBlock:Z

    if-nez p1, :cond_a

    .line 174
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->sendBlock()F

    return-void

    .line 176
    :cond_a
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->preparedForLastBlock:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getNumberOfBytes()I

    move-result p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getFileBlockSize()I

    move-result v0

    rem-int/2addr p1, v0

    if-eqz p1, :cond_b

    .line 177
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->setPatchLength()V

    return-void

    .line 178
    :cond_b
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->lastBlockSent:Z

    if-nez p1, :cond_c

    .line 179
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->sendBlock()F

    return-void

    .line 180
    :cond_c
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->endSignalSent:Z

    if-nez p1, :cond_d

    .line 182
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->sendEndSignal()V

    return-void

    .line 184
    :cond_d
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->onSuccess()V

    return-void

    .line 168
    :cond_e
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->setPatchLength()V

    return-void

    .line 163
    :cond_f
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->gpioMapPrereq:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->gpioMapPrereq:I

    if-ne p1, v4, :cond_10

    .line 164
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->setSpotaGpioMap()V

    :cond_10
    :goto_2
    return-void

    .line 136
    :cond_11
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getNumberOfBytes()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->fileChunkSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set flash back to exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->saveLog(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :goto_3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->uploadStart:J

    .line 153
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->setSpotaMemDev()V

    return-void

    .line 121
    :cond_12
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->reset()V

    .line 122
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->disableNotifications()V

    .line 123
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;)V

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 109
    :cond_13
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->queueReadDeviceInfo()V

    .line 110
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->queueReadSuotaInfo()V

    .line 111
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->readNextCharacteristic()V

    .line 112
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->step:I

    const/16 p1, -0x64

    .line 113
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->lastStep:I

    return-void
.end method

.method public queueReadSuotaInfo()V
    .locals 4

    .line 207
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_VERSION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 212
    const-string v2, "SuotaManager"

    if-eqz v1, :cond_1

    .line 213
    const-string v3, "Found SUOTA version characteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_PATCH_DATA_CHAR_SIZE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 218
    const-string v3, "Found SUOTA patch data char size characteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_MTU_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 223
    const-string v3, "Found SUOTA MTU characteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_3
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_L2CAP_PSM_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 228
    const-string v1, "Found SUOTA L2CAP PSM characteristic"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 5

    .line 244
    const-string v0, "SuotaManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->context:Landroid/content/Context;

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

.method public setFileBlockSize(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->file:Lcom/jaga/ibraceletplus/jyring/ota/File;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->fileChunkSize:I

    invoke-virtual {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/ota/File;->setFileBlockSize(II)V

    return-void
.end method

.method public updateFileChunkSize()V
    .locals 2

    .line 234
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->patchDataSize:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->mtu:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->fileChunkSize:I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File chunk size set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->fileChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuotaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
