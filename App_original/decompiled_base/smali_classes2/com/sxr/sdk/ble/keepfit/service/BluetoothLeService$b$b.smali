.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$b;
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "BluetoothLeService"

    const-string v2, "reconnectDevice when ble state on."

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    return-void
.end method
