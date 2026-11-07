.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Q()V
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resending 1 data "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bBleCmdSessionCompleted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    .line 4
    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "BluetoothLeService"

    invoke-static {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
