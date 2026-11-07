.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "BluetoothLeService"

    const-string v1, "onGetOxygenOfflineDataEnd "

    .line 1
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v2, v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->a:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->a:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->a:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->a:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x348

    int-to-long v2, v2

    .line 5
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, v2

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 7
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOxygenOfflineDataEnd(J)V

    .line 12
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v1, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const/16 v4, 0xd

    invoke-interface {v1, v4, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDayEnd(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 14
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
