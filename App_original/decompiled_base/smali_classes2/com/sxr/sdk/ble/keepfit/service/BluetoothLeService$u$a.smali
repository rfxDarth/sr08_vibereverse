.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u$a;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDialServerInfoRunnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothLeService"

    invoke-static {v0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string v0, "expire"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 6
    const-string p1, "DIALMARKET_EXPIRE_TIMESTAMP"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    const-string p1, "DIALMARKET_JSON"

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyDialJsonContent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
