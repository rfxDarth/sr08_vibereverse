.class public Lcom/sxr/sdk/ble/keepfit/service/ota/d;
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
.field private static final f:Ljava/lang/String; = "DeviceGattTask"


# instance fields
.field public a:Landroid/content/Context;

.field private final b:Landroid/bluetooth/BluetoothSocket;

.field private final c:Landroid/bluetooth/BluetoothDevice;

.field private final d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Lcom/sxr/sdk/ble/keepfit/service/ota/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    const-string v0, "DeviceGattTask"

    const-string v1, "DeviceConnectTask init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/c;-><init>(Lcom/sxr/sdk/ble/keepfit/service/ota/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->e:Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->c:Landroid/bluetooth/BluetoothDevice;

    .line 10
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->e:Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    invoke-virtual {p1, p3}, Lcom/sxr/sdk/ble/keepfit/service/ota/c;->a(Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V

    .line 13
    :try_start_0
    sget-object p1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->n:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->b:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)Lcom/sxr/sdk/ble/keepfit/service/ota/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->e:Lcom/sxr/sdk/ble/keepfit/service/ota/c;

    return-object p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->c:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private b(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 9
    :catch_0
    const-string p1, "DeviceGattTask"

    const-string v0, "An exception occured while refreshing device"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->b:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/d$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/ota/d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 4
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 5
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a()V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->a()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;->onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
