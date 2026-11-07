.class Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/ota/c;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/ota/c;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/ota/c;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;->b:Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->g:Ljava/lang/String;

    const-string v1, "delay 2000ms for start downloading ota file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;->b:Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;->b:Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a(Lcom/sxr/sdk/ble/keepfit/service/ota/c;)Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/c$c;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V

    return-void
.end method
