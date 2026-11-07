.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "error"

    .line 1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2
    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/b;->X:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    return-void

    .line 4
    :cond_0
    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/b;->Y:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    return-void

    .line 6
    :cond_1
    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/b;->Z:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "BluetoothLeService"

    if-eqz v4, :cond_5

    .line 7
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v2, "services discovered"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    .line 9
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)J

    .line 10
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d()V

    .line 12
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "discoveryServicesDelayRunnable removed 4"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    :cond_2
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v2, "services discovered find useful charactistic."

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    :cond_3
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;

    invoke-direct {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;)V

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 38
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "discoveryServicesDelayRunnable will be running after 500ms"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_4
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "****** services discovered another error state ******"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_5
    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/b;->a0:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    .line 51
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 52
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    move-result-object v0

    const-string v2, "ACTION_GATT_SERVICES_DISCOVERED_ERROR"

    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 55
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "discoveryServicesDelayRunnable removed 5"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    :cond_6
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v2, "restart bluetooth adapter."

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_7
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v8, 0xbb8

    const-string v10, "onReceive exception: "

    const/4 v11, -0x1

    if-eqz v4, :cond_a

    .line 80
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 82
    :try_start_0
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    const/16 v2, 0xc

    if-eq v0, v2, :cond_8

    goto/16 :goto_0

    .line 84
    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$b;

    invoke-direct {v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$b;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;)V

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 93
    :cond_9
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v11}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 94
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j()V

    .line 95
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 104
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_a
    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 109
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 110
    sget v3, Lcom/sxr/sdk/ble/keepfit/service/Ota;->s:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 111
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v2, v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v3, Lcom/sxr/sdk/ble/keepfit/service/Ota;->p:I

    invoke-interface {v2, v3, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 112
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 113
    sget v2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->s:I

    if-ne v0, v2, :cond_1b

    .line 114
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    return-void

    .line 116
    :cond_b
    const-string v2, "progress"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v2

    if-eq v0, v2, :cond_1b

    .line 118
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v2, v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v3, Lcom/sxr/sdk/ble/keepfit/service/Ota;->o:I

    invoke-interface {v2, v3, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 119
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 123
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_c
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 126
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_d
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 128
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_e
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->f0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 130
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/Ota;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d()V

    return-void

    .line 131
    :cond_f
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->g0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 132
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/Ota;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b()V

    return-void

    .line 133
    :cond_10
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->i0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 134
    const-string v2, "filename"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 135
    const-string/jumbo v2, "size"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 136
    const-string v2, "percent"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 139
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    if-ne v13, v0, :cond_11

    goto/16 :goto_0

    .line 143
    :cond_11
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v13}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 146
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_NOTIFY_FTP_DOWNLOADING: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    if-eq v13, v0, :cond_12

    .line 149
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v13}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 150
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    .line 151
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_12

    .line 152
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 153
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v7, 0x3e8

    mul-long v3, v3, v7

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    :cond_12
    :try_start_2
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v8, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const/4 v9, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyFtpStateInfo(ILjava/lang/String;JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 161
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Common.ACTION_NOTIFY_FTP_DOWNLOADING exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_13
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v4, "retryTimes"

    const-string v10, "password"

    const-string v12, "errMessage"

    if-eqz v2, :cond_15

    .line 164
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ftp sync media file error:  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "server"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 167
    const-string v2, "port"

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 168
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 169
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 170
    const-string v2, "localPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 171
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 172
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 174
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    if-lez v0, :cond_14

    sub-int/2addr v0, v5

    .line 177
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ftp sync media file retryTimes:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move/from16 v17, v0

    invoke-static/range {v11 .. v17}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 181
    :cond_14
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    .line 182
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    .line 184
    :try_start_3
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v7, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const-string v9, ""

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v8, -0x1

    invoke-interface/range {v7 .. v12}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyFtpStateInfo(ILjava/lang/String;JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 186
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Common.ACTION_NOTIFY_FTP_DOWNLOAD_ERROR exception:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_15
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->j0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 190
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "ACTION_NOTIFY_FTP_DOWNLOAD_SUCCESS"

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 192
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    .line 193
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    .line 196
    :try_start_4
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v7, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const-string v9, ""

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v7 .. v12}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyFtpStateInfo(ILjava/lang/String;JI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 198
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Common.ACTION_NOTIFY_FTP_DOWNLOAD_SUCCESS exception:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_16
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->k0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 201
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v3, "ACTION_NOTIFY_NEW_MEDIA_FILE_ADDED"

    invoke-static {v2, v6, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "fileType"

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 203
    const-string v3, "localFileName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    const-string v4, "newUri"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :try_start_5
    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v4, v4, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v4, v2, v3, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyNewMediaInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-void

    :catch_5
    move-exception v0

    .line 209
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Common.ACTION_NOTIFY_NEW_MEDIA_FILE_ADDED exception:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_17
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, ""

    if-eqz v2, :cond_18

    .line 212
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v3, "ftp NETWORK_STATE_CHANGED_ACTION : "

    invoke-static {v2, v6, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 214
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1b

    .line 216
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v0, :cond_1b

    .line 218
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ftp NETWORK_STATE_CHANGED_ACTION connect to : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 224
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_18
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 229
    const-string/jumbo v2, "supplicantError"

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 230
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ftp SUPPLICANT_STATE_CHANGED_ACTION error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v5, :cond_1b

    .line 232
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "Authentication failed"

    invoke-static {v0, v2, v13, v13, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 234
    :cond_19
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->m0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 235
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "connect wifi error:  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v2, "ssid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 241
    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    if-lez v0, :cond_1a

    sub-int/2addr v0, v5

    .line 244
    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "connect wifi retryTimes:  "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 253
    :cond_1a
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "connect wifi failed."

    invoke-static {v0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_0
    return-void
.end method
