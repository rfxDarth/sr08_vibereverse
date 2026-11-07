.class Lcom/sxr/sdk/ble/keepfit/service/Ota$a;
.super Ljava/lang/Object;
.source "Ota.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/sxr/sdk/ble/keepfit/service/Ota;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/Ota;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->b:Ljava/lang/String;

    iput p4, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    const-string v0, "compareOta "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lcom/sxr/sdk/ble/keepfit/service/Ota;Lorg/json/JSONObject;Z)V

    .line 7
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->b:Ljava/lang/String;

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->c:I

    invoke-static {p2, p1, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lcom/sxr/sdk/ble/keepfit/service/Ota;Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move-result-object p1

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move-result-object p1

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;->d:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaInfo(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
