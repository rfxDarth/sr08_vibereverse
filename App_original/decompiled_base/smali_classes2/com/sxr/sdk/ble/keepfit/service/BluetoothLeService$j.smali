.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "call process_cmd_runnable."

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)J

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v5, "leave process_cmd_runnable when not ready."

    invoke-static {v4, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    .line 11
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 13
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 16
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 18
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process_cmd_runnable connectState = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v6

    const-wide/16 v7, 0x1388

    const-wide/16 v9, 0x1e

    if-eqz v6, :cond_b

    .line 22
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 23
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v11

    sub-long/2addr v4, v11

    cmp-long v6, v4, v7

    if-lez v6, :cond_3

    .line 24
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v5, "process_cmd_runnable writeCharacteristic time out."

    invoke-static {v4, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    goto :goto_0

    .line 28
    :cond_3
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 39
    :cond_4
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;

    .line 40
    invoke-virtual {v6}, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->getCmd()[B

    move-result-object v7

    .line 41
    aget-byte v8, v7, v3

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 42
    iget-object v11, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v11}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 43
    const-string v11, "a3"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 44
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignored process_cmd_runnable received cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in sync state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_5
    iget-object v11, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v11, v8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Z

    move-result v8

    .line 50
    iget-object v11, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set cmd : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", waiting session result "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", can Sending is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    .line 52
    invoke-static {v13}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 53
    invoke-static {v11, v2, v12}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v11, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v11, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)[B

    .line 57
    iget-object v11, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v11, v4, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)J

    .line 61
    invoke-virtual {v6}, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->getType()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " times retry."

    const-wide/16 v11, 0x12c

    const/16 v6, 0x1e

    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 62
    :goto_1
    :try_start_1
    iget-object v13, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v13, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)Z

    move-result v13

    if-nez v13, :cond_9

    add-int/2addr v4, v1

    if-le v4, v6, :cond_6

    .line 65
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeCharacteristic failed after "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    goto :goto_3

    .line 70
    :cond_6
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 74
    :goto_2
    iget-object v13, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v13, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)Z

    move-result v13

    if-nez v13, :cond_9

    add-int/2addr v4, v1

    if-le v4, v6, :cond_8

    .line 77
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeCharacteristicRawData failed after "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    goto :goto_3

    .line 82
    :cond_8
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz v8, :cond_a

    .line 87
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    goto :goto_4

    .line 89
    :cond_a
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    .line 92
    :goto_4
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    .line 97
    :cond_b
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 98
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 101
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 102
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v5, "process_cmd_runnable time out check in sync mode."

    invoke-static {v4, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    goto/16 :goto_0

    .line 107
    :cond_c
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v9

    sub-long/2addr v4, v9

    cmp-long v6, v4, v7

    if-lez v6, :cond_1

    .line 108
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v5, "process_cmd_runnable : session time out."

    invoke-static {v4, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 115
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "process_cmd_runnable: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    .line 117
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    .line 120
    :cond_d
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v3, "leave process_cmd_runnable when command is empty."

    invoke-static {v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
