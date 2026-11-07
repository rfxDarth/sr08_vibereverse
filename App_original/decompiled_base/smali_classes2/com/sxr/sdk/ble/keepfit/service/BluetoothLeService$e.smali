.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gear_auth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onAuthDeviceResult(I)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->a:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p2, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p2, :cond_1

    .line 12
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onAuthDeviceResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authDevice exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
