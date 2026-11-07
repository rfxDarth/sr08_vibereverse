.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/net/ConnectivityManager;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Landroid/net/ConnectivityManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->e:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->b:Landroid/net/ConnectivityManager;

    iput-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->c:Ljava/lang/String;

    iput p5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->d:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->e:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ftp Network onAvailable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-static {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->b:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    .line 3
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->e:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->e:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->c:Ljava/lang/String;

    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;->d:I

    const-string v4, "ftp Network unavailable"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
