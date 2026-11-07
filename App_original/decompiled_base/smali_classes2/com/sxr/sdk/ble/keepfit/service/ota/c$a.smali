.class Lcom/sxr/sdk/ble/keepfit/service/ota/c$a;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/ota/c;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothGatt;

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/ota/c;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/ota/c;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$a;->b:Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$a;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string v1, "le device discoverServices"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$a;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method
