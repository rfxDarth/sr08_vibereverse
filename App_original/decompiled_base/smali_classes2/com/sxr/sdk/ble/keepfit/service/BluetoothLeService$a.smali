.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;
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
.field private a:Z

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "process_state_changing_runnable: running"

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v3

    const-wide/16 v4, 0x7d0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 8
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)J

    .line 9
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v3, "process_state_changing_runnable timeout."

    invoke-static {v0, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b()I

    move-result v3

    invoke-static {v0, v3, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IZ)V

    .line 14
    :cond_0
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "process_state_changing_runnable exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
