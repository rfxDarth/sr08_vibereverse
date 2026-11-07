.class Lcom/sxr/sdk/ble/keepfit/service/Ota$b;
.super Ljava/lang/Object;
.source "Ota.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/service/utils/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/Ota;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/Ota;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 5

    const-string v0, "OTA_TIME"

    const-string v1, "fwUrl write "

    const-string v2, "fwUrl onResponse "

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Ljava/lang/String;[B)V

    .line 3
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lcom/sxr/sdk/ble/keepfit/service/Ota;Z)Z

    .line 6
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iget-boolean p2, p1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz p2, :cond_2

    .line 9
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move-result-object p1

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget p2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->l:I

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->t:I

    invoke-interface {p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iget-boolean p2, p1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz p2, :cond_1

    .line 13
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move-result-object p1

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget p2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->l:I

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->s:I

    invoke-interface {p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iget-boolean p2, p1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz p2, :cond_2

    .line 17
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "download fwUrl startOta "

    invoke-virtual {p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->e(Lcom/sxr/sdk/ble/keepfit/service/Ota;)I

    move-result p2

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    return-void

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;->b:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move-result-object p1

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget p2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->l:I

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->t:I

    invoke-interface {p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
