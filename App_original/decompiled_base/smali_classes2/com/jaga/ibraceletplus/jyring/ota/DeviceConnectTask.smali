.class public Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;
.super Landroid/os/AsyncTask;
.source "DeviceConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Landroid/bluetooth/BluetoothGatt;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceGattTask"


# instance fields
.field private callback:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

.field public context:Landroid/content/Context;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    .line 35
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->saveLog(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->callback:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    .line 37
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 41
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 42
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->callback:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    invoke-virtual {p1, p3}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->setBluetoothManager(Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V

    .line 45
    :try_start_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)Lcom/jaga/ibraceletplus/jyring/ota/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->callback:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 122
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 123
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->cancel()V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->cancel()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    check-cast p1, [Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public publishProgess(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    const/4 v0, 0x1

    .line 128
    new-array v0, v0, [Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 5

    .line 132
    const-string v0, "DeviceGattTask"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-ui.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/JRing/log/"

    invoke-static {v0, p1, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
