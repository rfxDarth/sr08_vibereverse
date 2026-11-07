.class public Lcom/sxr/sdk/ble/keepfit/service/ota/c;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Callback.java"


# static fields
.field public static g:Ljava/lang/String; = "blueCallback"


# instance fields
.field private a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

.field private b:Landroid/content/Context;

.field c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/ota/d;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->d:Landroid/os/Handler;

    .line 7
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    .line 8
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/ota/c;)Lcom/sxr/sdk/ble/keepfit/service/ota/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "SPOTA_SERV_STATUS notification: %#04x"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget p1, p1, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->A:I

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/16 p1, 0x10

    const/4 v1, 0x3

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

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    if-eq p2, v2, :cond_4

    if-ne p2, v1, :cond_5

    :cond_4
    move v3, p2

    const/4 p2, -0x1

    :cond_5
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_7

    if-gez p2, :cond_7

    if-ltz v3, :cond_6

    goto :goto_2

    :cond_6
    return-void

    .line 25
    :cond_7
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 26
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string/jumbo v0, "step"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string/jumbo p2, "status"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->z:Ljava/util/UUID;

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

    .line 4
    :cond_0
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->A:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->D:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x2

    goto/16 :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->E:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x3

    goto :goto_1

    .line 10
    :cond_3
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->u:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x11

    .line 12
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaVersion"

    :goto_0
    move v1, v0

    const/4 v0, -0x1

    goto :goto_1

    .line 13
    :cond_4
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->v:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x12

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaPatchDataSize"

    goto :goto_0

    .line 16
    :cond_5
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->w:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaMtu"

    goto :goto_0

    .line 19
    :cond_6
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->x:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p2, v6, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "suotaL2capPsm"

    goto :goto_0

    .line 24
    :cond_7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->p:Ljava/util/UUID;

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

    .line 34
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onCharacteristicRead: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 36
    sget-object v6, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "value"

    if-ltz v4, :cond_a

    .line 38
    const-string v0, "characteristic"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 42
    :cond_9
    new-instance p1, Ljava/lang/String;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_a
    if-eqz v5, :cond_b

    .line 46
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 48
    :cond_b
    const-string/jumbo v1, "step"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x14

    .line 49
    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    :goto_2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    .line 56
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCharacteristicWrite: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_6

    .line 4
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string/jumbo v1, "write succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->n:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget v0, v0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->B:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_5

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->o:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->q:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget v0, v0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->r:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget v0, v0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    if-eq v0, v1, :cond_5

    .line 31
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Next block in chunk "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget v3, v3, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r()F

    :cond_5
    :goto_0
    if-lez v1, :cond_7

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v2, "step"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 44
    :cond_6
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "write failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget-boolean v0, v0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->w:Z

    if-nez v0, :cond_7

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "error"

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    .line 54
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 1
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "le onConnectionStateChange ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 3
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string v0, "le device connected"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$a;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/c$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/ota/c;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 12
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string v0, "le device disconnected"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 17
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 18
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string/jumbo p2, "state"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 2
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string v1, "onDescriptorWrite"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    const-string p2, "error"

    const p3, 0xffff

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->s:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    const-string p3, ""

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_1
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDescriptorWrite: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string p2, "0000"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    return-void

    .line 25
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 26
    sget-object p3, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string/jumbo p3, "step"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p3, p3, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p3, p2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    .line 32
    :cond_3
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    invoke-virtual {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    sget-object p1, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "MTU changed to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    sget-object p3, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const-string/jumbo p3, "suotaMtu"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 7
    :cond_0
    sget-object p1, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

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
    .locals 3

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string v1, "onServicesDiscovered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "error"

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0xffff

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    return-void

    .line 11
    :cond_0
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->e:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->f:I

    const/16 v1, 0xa

    if-gt p2, v1, :cond_2

    .line 12
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->e:Z

    if-eqz p2, :cond_1

    .line 14
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string/jumbo v0, "restart discovery after refresh"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$b;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/c$b;-><init>(Lcom/sxr/sdk/ble/keepfit/service/ota/c;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 26
    :cond_2
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 27
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->n:Ljava/util/UUID;

    .line 28
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->o:Ljava/util/UUID;

    .line 29
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->p:Ljava/util/UUID;

    .line 30
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->q:Ljava/util/UUID;

    .line 31
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->r:Ljava/util/UUID;

    .line 32
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->s:Ljava/util/UUID;

    .line 33
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->t:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 44
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 45
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo p2, "step"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    .line 50
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;-><init>(Lcom/sxr/sdk/ble/keepfit/service/ota/c;Landroid/content/Intent;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 51
    :cond_4
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 52
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0xfffe

    .line 53
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    return-void
.end method
