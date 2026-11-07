.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->a:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDialServerInfoRunnable fw: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "http://download.keeprapid.com/apps/smartband/keepfit/dialinfo/%1$s/dail.json"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u$a;

    invoke-direct {v2, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;)V

    invoke-static {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V

    return-void
.end method
