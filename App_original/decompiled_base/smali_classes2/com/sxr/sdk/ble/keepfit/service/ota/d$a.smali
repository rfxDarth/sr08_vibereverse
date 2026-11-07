.class Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;
.super Ljava/lang/Object;
.source "DeviceConnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/ota/d;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/ota/d;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const-string v3, "DeviceGattTask"

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->b(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 3
    const-string v1, "gatt connect SDK_INT < 23"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->b(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;->a:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v0, v4, v2, v1, v5}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 6
    const-string v1, "gatt connect SDK_INT >= 23"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    const-string v1, "gatt connect"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
