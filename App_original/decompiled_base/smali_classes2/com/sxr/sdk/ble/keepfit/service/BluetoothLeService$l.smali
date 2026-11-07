.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;
.super Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;
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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public SetScreenLightTime(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public closeConnection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "BluetoothLeService"

    const-string v2, "closeConnection"

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    const-string v0, "DEVICE_ADDRESS"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 7
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f()V

    return-void
.end method

.method public connectAiServerNotification(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public connectBt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectBt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 12
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_NAME"

    invoke-static {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_ADDRESS"

    invoke-static {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 17
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string p2, "reconnectDevice when app require connect action."

    invoke-static {p1, v2, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "called connect error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    return p1
.end method

.method public connectFtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public disconnectBt(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnectBt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    const-string v0, "DEVICE_ADDRESS"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    .line 8
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j()V

    return-void
.end method

.method public editDeviceDialCustom(IIII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIII)I

    move-result p1

    return p1
.end method

.method public getAdvSensorOfflineData(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public getBandFunction()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getConnectedDevice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurSportData()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDataByDay(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I

    move-result p1

    return p1
.end method

.method public getDeviceBatery()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDeviceCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDeviceDial()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDeviceDialCustom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDeviceFileState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDeviceRssi()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDeviceSystemStateInfo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getDialServerInfo(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getEcgHistory(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public getEqInfo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getMediaFileState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public getMultipleSportData(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public getOtaInfo(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public getOxygenOfflineData(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public getWifiState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public isAuthrize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public isConnectBt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z

    move-result v0

    return v0
.end method

.method public notifyDownloadFtpFileCompleted()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public openAiAudioState(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public openAiState(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public openRawDataNotification(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public openSDKLog(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sput-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    sput-object p3, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public openWifiApMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public queryAiState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public queryOfflineSpeechRecognitionState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;)V
    .locals 11

    const-string v0, ""

    const-string v1, "registerCallback return package name: "

    const-string v2, "exception: "

    .line 1
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v4, "registerCallback 3.0.0"

    const-string v5, "BluetoothLeService"

    invoke-static {v3, v5, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iput-object p1, v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "SDK_TIME"

    invoke-static {v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 p1, 0x18

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v6, "SDK_EXPIRE"

    invoke-static {v6, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const v3, 0x36ee80

    mul-int p1, p1, v3

    int-to-long v3, p1

    cmp-long p1, v6, v3

    if-gez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onAuthSdkResult(I)V

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/service/utils/b;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p1, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/b;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v3, "JySDK.xml"

    invoke-virtual {p1, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 15
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v4, "vid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v6, "appid"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v7, "secret"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :try_start_1
    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v5, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v0

    .line 31
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v5, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_1
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 35
    iget p1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 36
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 38
    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v5, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    :try_start_3
    const-string v8, "action_cmd"

    const-string/jumbo v9, "validate_sdk"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v8, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string/jumbo v8, "version"

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 50
    iget-object v9, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v9}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v6, v6, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O:Ljava/lang/String;

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v4, "phone_id"

    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v4, "phone_name"

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v4, "package_name"

    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v4, "app_name"

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v3, "app_version"

    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "app_build"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo p1, "sdk_version"

    const-string v0, "3.0.0"

    invoke-virtual {v8, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo p1, "sdk_build"

    const/16 v0, 0x10e

    invoke-virtual {v8, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string p1, "body"

    invoke-virtual {v1, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 65
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v5, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_3
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v0, "validate_sdk url https://openapi.keeprapid.com/developer"

    invoke-static {p1, v5, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "validate_sdk req "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;

    invoke-direct {p1, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;)V

    const-string v0, "https://openapi.keeprapid.com/developer"

    invoke-static {v0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V

    return-void
.end method

.method public registerCallback2(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const-string v1, "registerCallback2 return package name: "

    const-string v2, "exception: "

    .line 1
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v4, "registerCallback2 3.0.0"

    const-string v5, "BluetoothLeService"

    invoke-static {v3, v5, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iput-object p1, v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "SDK_TIME"

    invoke-static {v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 p1, 0x18

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v6, "SDK_EXPIRE"

    invoke-static {v6, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const v3, 0x36ee80

    mul-int p1, p1, v3

    int-to-long v3, p1

    cmp-long p1, v6, v3

    if-gez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p2, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onAuthSdkResult(I)V

    :cond_0
    return-void

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iput-object p2, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O:Ljava/lang/String;

    .line 14
    invoke-static {p1, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    :try_start_0
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x80

    invoke-virtual {p2, p3, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, v5, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    move-object p2, v0

    .line 29
    :goto_0
    :try_start_2
    iget-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v5, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_1
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 33
    iget p1, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 34
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p3

    .line 36
    iget-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v5, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_2
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 43
    :try_start_3
    const-string p4, "action_cmd"

    const-string/jumbo v1, "validate_sdk"

    invoke-virtual {p3, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo p4, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo p4, "version"

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v1, "appid"

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v1, "secret"

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v1, "vid"

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v3, v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O:Ljava/lang/String;

    invoke-virtual {p4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "phone_id"

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "phone_name"

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "package_name"

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "app_name"

    invoke-virtual {p4, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string p2, "app_version"

    invoke-virtual {p4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string p2, "app_build"

    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo p1, "sdk_version"

    const-string p2, "3.0.0"

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo p1, "sdk_build"

    const/16 p2, 0x10e

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    const-string p1, "body"

    invoke-virtual {p3, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 63
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v5, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_3
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo p2, "validate_sdk url https://openapi.keeprapid.com/developer"

    invoke-static {p1, v5, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "validate_sdk req "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v5, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$b;

    invoke-direct {p1, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l$b;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;)V

    const-string p2, "https://openapi.keeprapid.com/developer"

    invoke-static {p2, p3, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V

    return-void
.end method

.method public saveFileToSystemAlbum(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public scanDevice(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v1, "called RemoteService scanDevice"

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Z)V

    .line 4
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "called scanDevice error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    return p1
.end method

.method public scanWifi()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public sendPhoneCallState(IIII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIII)I

    move-result p1

    return p1
.end method

.method public sendPhoneVolume(IIII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIII)I

    move-result p1

    return p1
.end method

.method public sendVibrationSignal(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public sendWeather()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public setAILang(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setAiChatState(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setAiCommandType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setAiConnectionMethod(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setAiExtraAction(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setAlarm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->X(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public setAntiLost(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setAppId(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "DEVICE_APP_ID"

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setAppState(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I

    move-result p1

    return p1
.end method

.method public setAutoHeartMode(ZIIIIII)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZIIIIII)I

    move-result p1

    return p1
.end method

.method public setBPAdjust(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I

    move-result p1

    return p1
.end method

.method public setBindedInfo(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;III)I

    move-result p1

    return p1
.end method

.method public setBloodOxygenMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setBloodPressureMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setChatgptContent(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setContactCrc(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I

    move-result p1

    return p1
.end method

.method public setDeviceCode([B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)I

    move-result p1

    return p1
.end method

.method public setDeviceDialState(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(I)I

    move-result p1

    return p1
.end method

.method public setDeviceFileState(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setDeviceHeartRateArea(ZII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZII)I

    move-result p1

    return p1
.end method

.method public setDeviceInfo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public setDeviceMode(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(I)I

    move-result p1

    return p1
.end method

.method public setDeviceName(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setDeviceTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public setDeviceWallpaperState(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setECardInfoContent(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I

    move-result p1

    return p1
.end method

.method public setECardInfoCrc(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I

    move-result p1

    return p1
.end method

.method public setEcgMode(ZI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZI)I

    move-result p1

    return p1
.end method

.method public setEqInfo2(III[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;III[I)I

    move-result p1

    return p1
.end method

.method public setFemaleReminder(ZIIIII)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZIIIII)I

    move-result p1

    return p1
.end method

.method public setGSensorIndState(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setGoalStep(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setHeartRateMode(ZII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZII)I

    move-result p1

    return p1
.end method

.method public setHourFormat(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setIdleTime(IIIII)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIIII)I

    move-result p1

    return p1
.end method

.method public setLanguage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public setNotify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setOfflineSpeechRecognitionState(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "called setOption error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothLeService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    return p1
.end method

.method public setPhoneMac(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPhontMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setPressureMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setReminder(IIIIIII)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIIIIII)I

    move-result p1

    return p1
.end method

.method public setReminderText(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setScanMode(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result p1

    return p1
.end method

.method public setSleepTime(IIIIIIII)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIIIIIII)I

    move-result p1

    return p1
.end method

.method public setSmsRspInfoContent(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I

    move-result p1

    return p1
.end method

.method public setSmsRspInfoCrc(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I

    move-result p1

    return p1
.end method

.method public setSmsRspSendAck(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setSpoMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setSugarMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setTemperatureMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public setTouchMode(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    move-result p1

    return p1
.end method

.method public setUserInfo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v0

    return v0
.end method

.method public setUuid([Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setWifiHotSpotInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setWifiHotSpotInfoEx(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setWorshipInfo(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I

    move-result p1

    return p1
.end method

.method public startFactoryTestMode(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I

    move-result p1

    return p1
.end method

.method public startFileOta(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startFtpDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v6, 0x3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public translateBmpToBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-static/range {v1 .. v17}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterCallback(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string v0, "BluetoothLeService"

    const-string/jumbo v1, "unregisterCallback"

    invoke-static {p1, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    return-void
.end method

.method public writeCharacteristic(Ljava/lang/String;[B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method
