.class public abstract Lcom/sxr/sdk/ble/keepfit/service/ota/b;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field static final a:Ljava/lang/String; = "BluetoothManager"

.field public static final b:I = -0x2000000

.field public static final c:I = -0x3000000


# instance fields
.field public A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:J

.field G:Landroid/os/PowerManager$WakeLock;

.field public H:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

.field o:Ljava/lang/String;

.field p:Landroid/content/Context;

.field q:Landroid/bluetooth/BluetoothDevice;

.field r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s:Z

    .line 3
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->t:Z

    .line 4
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->u:Z

    .line 5
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->v:Z

    .line 6
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->w:Z

    .line 7
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->x:Z

    .line 8
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->y:Z

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->B:I

    .line 12
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    .line 13
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    .line 14
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->E:I

    .line 21
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->p:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->k()V

    .line 23
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    const-string v0, "BluetoothManager"

    .line 30
    :try_start_0
    const-string v1, "refresh device cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 35
    const-string v1, "refresh failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p0

    .line 39
    :catch_0
    const-string p0, "An exception occurred while refreshing device cache"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private c(I)V
    .locals 2

    .line 22
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->p:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private h()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->i:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->j:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->k:I

    or-int/2addr v0, v1

    return v0
.end method

.method private i()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->e:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->f:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->g:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->h:I

    or-int/2addr v0, v1

    return v0
.end method

.method private k()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Forced exit of SPOTA service."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Patch Data CRC mismatch."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Received patch Length not equal to PATCH_LEN characteristic value."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "External Memory Error. Writing to external device failed."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Internal Memory Error. Not enough internal memory space for patch."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid memory device."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Application error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SPOTA service started instead of SUOTA."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image bank."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image header."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image size."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid product header."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Same Image Error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to read from external memory device."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Communication error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    const v1, 0xfffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The remote device does not support SUOTA."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 6
    const-string v0, "Disable SPOTA_SERV_STATUS notifications"

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->s:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "disableNotifications setCharacteristicNotification = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->t:Ljava/util/UUID;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    .line 25
    :cond_3
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 26
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    return-void
.end method

.method protected a(I)V
    .locals 2

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    const-string/jumbo v1, "step"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->q:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public a(Lcom/sxr/sdk/ble/keepfit/service/ota/e;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->A:I

    invoke-virtual {p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->b(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->o:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->z:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->G:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "BluetoothManager"

    const-string v1, "Release wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->G:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 8
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->z:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    .line 10
    :cond_1
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->b()V

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->y:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->y:Z

    .line 22
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->h0:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v0, "com.jaga.ibraceletplus.keepfit"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->p:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->b()V

    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    const-string v0, "Enable SPOTA_SERV_STATUS notifications"

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->s:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enableNotifications setCharacteristicNotification = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->t:Ljava/util/UUID;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    .line 20
    :cond_3
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 21
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    return-void
.end method

.method public d()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->q:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->g:I

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a(II)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->y:Z

    return v0
.end method

.method public f()Lcom/sxr/sdk/ble/keepfit/service/ota/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->i:I

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->l:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->e:I

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->f:I

    return-void
.end method

.method protected abstract j()I
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->d:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->m:I

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->h:I

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->x:Z

    return v0
.end method

.method public m(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->j:I

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->z:Z

    return v0
.end method

.method protected n()V
    .locals 4

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->x:Z

    .line 3
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->z:Z

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->F:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upload completed in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->g0:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->p:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->k:I

    return-void
.end method

.method public o()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "services size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "characteristics size: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
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

    .line 7
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->z:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->A:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->D:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->E:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v3, "found ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->p:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20
    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 21
    const-string v3, "found SPOTA_MEM_INFO_UUID"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    return-void
.end method

.method public p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "characteristicsQueue size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "characteristic: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 6
    const-string v0, "readNextCharacteristic"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s:Z

    .line 2
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->t:Z

    .line 3
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->u:Z

    .line 4
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->v:Z

    .line 5
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->w:Z

    .line 6
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->x:Z

    .line 7
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->y:Z

    .line 8
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    .line 10
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->E:I

    return-void
.end method

.method public r()F
    .locals 10

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    .line 2
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->t:Z

    if-nez v2, :cond_4

    float-to-int v2, v0

    .line 9
    invoke-direct {p0, v2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->c(I)V

    .line 10
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    invoke-virtual {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a(I)[[B

    move-result-object v2

    .line 12
    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    const-string v5, " of "

    const-string v6, "BluetoothManager"

    if-nez v4, :cond_0

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Current block: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v8}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    iget v7, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    array-length v8, v2

    sub-int/2addr v8, v1

    if-ne v7, v8, :cond_1

    const/4 v7, -0x1

    .line 17
    iput v7, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->D:I

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 20
    :goto_0
    aget-object v4, v2, v4

    .line 22
    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v8}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c()I

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Sending block "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    add-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", chunk "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->r:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 41
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 42
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeCharacteristic: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_4

    .line 48
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 49
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s:Z

    .line 51
    :cond_2
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s:Z

    if-nez v2, :cond_3

    .line 52
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    goto :goto_1

    .line 54
    :cond_3
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->t:Z

    .line 56
    :goto_1
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->C:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 57
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s:Z

    :cond_4
    return v0
.end method

.method public s()V
    .locals 4

    .line 1
    const-string v0, "BluetoothManager"

    const-string/jumbo v1, "sendEndSignal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->n:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/high16 v3, -0x2000000

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 6
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->v:Z

    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    const-string v0, "BluetoothManager"

    const-string/jumbo v1, "sendRebootSignal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->n:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/high16 v3, -0x3000000

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 6
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->w:Z

    return-void
.end method

.method public u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g()I

    move-result v0

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e()I

    move-result v1

    rem-int/2addr v0, v1

    .line 4
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->u:Z

    .line 6
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

    const-string v2, "BluetoothManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->q:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const/16 v2, 0x12

    .line 8
    invoke-virtual {v1, v0, v2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 9
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method public v()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->h()I

    move-result v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->i()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "BluetoothManager"

    if-eqz v1, :cond_2

    .line 17
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

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :try_start_0
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->o:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const/16 v2, 0x14

    .line 20
    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 21
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :catch_0
    const-string v0, "exception occored."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :cond_2
    const-string v0, "Memory type not set."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->n:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->j()I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 4
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 5
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

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
