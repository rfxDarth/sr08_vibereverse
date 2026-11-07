.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "BluetoothLeService"

    const-string v2, "discoveryServicesDelayRunnable running"

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IZ)V

    .line 8
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v2, v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
