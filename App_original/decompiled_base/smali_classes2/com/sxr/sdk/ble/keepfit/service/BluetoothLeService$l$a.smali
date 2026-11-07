.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->registerCallback(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    const-string v0, "expire"

    .line 1
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "validate_sdk "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothLeService"

    invoke-static {v1, v3, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onAuthSdkResult(I)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v2, "errcode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 12
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 13
    const-string p2, "SDK_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    const-string p2, "body"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    const-string p2, "SDK_EXPIRE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p2, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p2, :cond_2

    .line 20
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onAuthSdkResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 22
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    iget-object p2, p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
