.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$c;
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$c;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->b0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$c;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->d0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->c0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$c;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->d0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
