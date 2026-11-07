.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "BluetoothLeService"

    const-string v1, "last: "

    const-string/jumbo v2, "writeCharacteristic : no newer data to sync at "

    const-string/jumbo v3, "time expired minutes: "

    const-string/jumbo v4, "time expired hours: "

    .line 1
    :try_start_0
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const-string/jumbo v6, "sync_history_data_runnable_once"

    invoke-static {v5, v0, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 5
    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0x36ee80

    div-long/2addr v8, v10

    .line 6
    iget-object v10, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v6, v10

    .line 7
    iget-object v10, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v0, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v8, 0x1

    const/4 v4, 0x0

    cmp-long v10, v6, v8

    if-gtz v10, :cond_0

    .line 12
    new-instance v1, Ljava/util/Date;

    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 13
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0xbb8

    .line 14
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 15
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V

    return-void

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    .line 25
    new-array v3, v2, [B

    const/16 v6, -0x5d

    .line 26
    aput-byte v6, v3, v4

    const/16 v6, 0x11

    int-to-byte v6, v6

    const/4 v7, 0x1

    .line 27
    aput-byte v6, v3, v7

    .line 30
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)I

    move-result v8

    invoke-static {v6, v8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I

    .line 31
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v8, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    long-to-int v6, v5

    .line 32
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object v1

    const/4 v5, 0x3

    .line 34
    aget-byte v6, v1, v5

    const/4 v8, 0x2

    aput-byte v6, v3, v8

    .line 35
    aget-byte v6, v1, v8

    aput-byte v6, v3, v5

    .line 36
    aget-byte v5, v1, v7

    const/4 v6, 0x4

    aput-byte v5, v3, v6

    .line 37
    aget-byte v1, v1, v4

    const/4 v4, 0x5

    aput-byte v1, v3, v4

    .line 39
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v1, v3, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[BI)[B

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-static {v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 43
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sync_history_data_runnable exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
