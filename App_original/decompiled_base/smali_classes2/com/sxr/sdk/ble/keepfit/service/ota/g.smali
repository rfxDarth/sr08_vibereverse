.class public Lcom/sxr/sdk/ble/keepfit/service/ota/g;
.super Lcom/sxr/sdk/ble/keepfit/service/ota/b;
.source "SuotaManager.java"


# static fields
.field public static final P:I = 0x1

.field public static final Q:I = 0x12

.field public static final R:I = 0x13

.field static final S:Ljava/lang/String; = "SuotaManager"


# instance fields
.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Z

.field private O:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->I:I

    const/16 v1, 0x17

    .line 3
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->J:I

    const/16 v1, 0x14

    .line 4
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->K:I

    .line 5
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->L:I

    .line 6
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->M:Z

    .line 7
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->N:Z

    .line 8
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->O:I

    .line 12
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->p:Landroid/content/Context;

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->A:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "step"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    const-string v2, "error"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->b(I)V

    return-void

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processStep newStep: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuotaManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v4, 0x1

    if-ltz v0, :cond_1

    .line 11
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->B:I

    goto/16 :goto_1

    .line 15
    :cond_1
    const-string v0, "characteristic"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 17
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 20
    :cond_2
    const-string/jumbo v0, "suotaVersion"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 21
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->I:I

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "processStep SUOTA version: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->I:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 23
    :cond_3
    const-string/jumbo v0, "suotaPatchDataSize"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->K:I

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "processStep SUOTA patch data size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->K:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->y()V

    goto/16 :goto_0

    .line 27
    :cond_4
    const-string/jumbo v0, "suotaMtu"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 28
    iget v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->J:I

    .line 29
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->J:I

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "processStep SUOTA MTU: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->J:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->y()V

    .line 33
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->M:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->N:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->J:I

    if-eq p1, v5, :cond_6

    .line 34
    iput-boolean v4, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->N:Z

    .line 36
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Xiaomi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/File;

    const-string v0, "/system/lib/libbtsession.so"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 37
    const-string p1, "processStep Workaround for Xiaomi MTU issue. Read MTU again."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->w:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 40
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_5
    const-string/jumbo v0, "suotaL2capPsm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 44
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->O:I

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "processStep SUOTA L2CAP PSM: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->O:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->M:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->J:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->K:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_7

    .line 49
    const-string p1, "processStep Sending MTU request"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-boolean v4, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->M:Z

    .line 51
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->K:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 53
    :cond_7
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->p()V

    .line 55
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "processStep step "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->B:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->B:I

    if-eqz p1, :cond_12

    if-eq p1, v4, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    if-eq p1, v2, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    goto :goto_2

    .line 115
    :cond_8
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s:Z

    if-nez p1, :cond_9

    .line 116
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r()F

    return-void

    .line 118
    :cond_9
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->u:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g()I

    move-result p1

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e()I

    move-result v0

    rem-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 119
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->u()V

    return-void

    .line 120
    :cond_a
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->t:Z

    if-nez p1, :cond_b

    .line 121
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->r()F

    return-void

    .line 122
    :cond_b
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->v:Z

    if-nez p1, :cond_c

    .line 124
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->s()V

    return-void

    .line 126
    :cond_c
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n()V

    return-void

    .line 127
    :cond_d
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->u()V

    return-void

    .line 128
    :cond_e
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->E:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->E:I

    if-ne p1, v0, :cond_f

    .line 129
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->v()V

    :cond_f
    :goto_2
    return-void

    .line 130
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "processStep Upload size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "processStep Chunk size: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->L:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->F:J

    .line 142
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->w()V

    return-void

    .line 143
    :cond_11
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->q()V

    .line 144
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a()V

    .line 145
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/g$a;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/g$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/ota/g;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 146
    :cond_12
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->o()V

    .line 147
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->x()V

    .line 148
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->p()V

    .line 149
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->B:I

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->n:Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->L:I

    invoke-virtual {v0, p1, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a(II)V

    return-void
.end method

.method protected j()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->d:I

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

    .line 9
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->l:I

    or-int/2addr v0, v1

    return v0
.end method

.method public x()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->u:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const-string v2, "SuotaManager"

    if-eqz v1, :cond_1

    .line 7
    const-string v3, "processStep Found SUOTA version characteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->v:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    const-string v3, "processStep Found SUOTA patch data char size characteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->w:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    const-string v3, "processStep Found SUOTA MTU characteristic"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->x:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    const-string v1, "processStep Found SUOTA L2CAP PSM characteristic"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->H:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->K:I

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->J:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->L:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processStep File chunk size set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/g;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuotaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
