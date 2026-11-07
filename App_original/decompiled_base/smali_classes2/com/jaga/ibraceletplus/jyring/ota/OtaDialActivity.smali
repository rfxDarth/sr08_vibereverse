.class public Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "OtaDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$DownLoadImageTask;
    }
.end annotation


# instance fields
.field private bAuto:Z

.field bCheck:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a006c
    .end annotation
.end field

.field private bScan:Z

.field private bUpgrade:Z

.field private bd:Landroid/bluetooth/BluetoothDevice;

.field public bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

.field private connectLeDeviceHandler:Landroid/os/Handler;

.field private curProgress:I

.field dial_img:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0136
    .end annotation
.end field

.field private dialname:Ljava/lang/String;

.field private dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field private errorCnt:I

.field private filename:Ljava/lang/String;

.field private firmwareUpgradeHandler:Landroid/os/Handler;

.field private firmwareUpgradeRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private handlerStopOtaTask:Landroid/os/Handler;

.field private imagefilename:Ljava/lang/String;

.field private imageurl:Ljava/lang/String;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private md5String:Ljava/lang/String;

.field pbOta:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031c
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field private runnableStopOtaTask:Ljava/lang/Runnable;

.field private scanLeDeviceHandler:Landroid/os/Handler;

.field private stopConnectDeviceRunnable:Ljava/lang/Runnable;

.field private stopLeDeviceRunnable:Ljava/lang/Runnable;

.field tvDeviceVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0493
    .end annotation
.end field

.field tvMessage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d1
    .end annotation
.end field

.field tvServerVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0505
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    .line 67
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 68
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bUpgrade:Z

    .line 73
    const-string v2, ""

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->filename:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->imageurl:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->imagefilename:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dialname:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->md5String:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    .line 79
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    .line 80
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->errorCnt:I

    .line 131
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bAuto:Z

    .line 267
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    .line 268
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    .line 376
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->curProgress:I

    .line 377
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->handler:Landroid/os/Handler;

    .line 378
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$4;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->runnable:Ljava/lang/Runnable;

    .line 385
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->handlerStopOtaTask:Landroid/os/Handler;

    .line 386
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$5;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->runnableStopOtaTask:Ljava/lang/Runnable;

    .line 407
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 726
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 752
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bScan:Z

    .line 788
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->firmwareUpgradeHandler:Landroid/os/Handler;

    .line 821
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$13;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$13;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->firmwareUpgradeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopDeviceConnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Intent;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->onError(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->md5String:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopDeviceScan()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->firmwareUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->firmwareUpgradeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->curProgress:I

    return p0
.end method

.method static synthetic access$202(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->curProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$602(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->closeWatcherTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private closeWatcherTask()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->handlerStopOtaTask:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->runnableStopOtaTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->handlerStopOtaTask:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private downloadFirmware(Ljava/lang/String;)V
    .locals 6

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadFirmware url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/firmware.bin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 672
    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?t="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;

    invoke-direct {v1, p0, p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    const p1, 0x7f130224

    .line 718
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->setText(Ljava/lang/String;)V

    .line 720
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bCheck:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const p1, 0x7f0a01d5

    .line 721
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 722
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bAuto:Z

    return-void
.end method

.method private firmwareUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 836
    const-string/jumbo v0, "zh"

    :try_start_0
    const-string v1, "http://download.keeprapid.com/apps/smartband/keepfit/fwupdater/%1$s/%2$s/update.json"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "en"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 837
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 838
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 839
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 842
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 844
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130565

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 846
    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 849
    const-string p1, ""

    return-object p1
.end method

.method private initData()V
    .locals 4

    .line 139
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    .line 140
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    .line 143
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->filename:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "imagefilename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->imagefilename:Ljava/lang/String;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->imageurl:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "md5String"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->md5String:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dialname:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "md5String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->md5String:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imageurl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->imageurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130180

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "OTA_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    return-void
.end method

.method private initView()V
    .locals 3

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_PROCEEDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR_NOACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "jringBluetoothGattUpdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "jringProgressUpdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "jringConnectionState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 220
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvDeviceVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 223
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bAuto:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a01d5

    .line 224
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->OnClickbCheck()V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bCheck:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/JRing/dailimgs"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->imagefilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$DownLoadImageTask;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dial_img:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$DownLoadImageTask;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->imageurl:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$DownLoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 238
    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dial_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method private onError(Landroid/content/Intent;Z)V
    .locals 2

    .line 634
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->errorCnt:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 652
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->errorCnt:I

    .line 653
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onError retry times: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->errorCnt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 654
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$8;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 635
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->errorCnt:I

    const v0, 0x7f130565

    .line 636
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->setText(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bCheck:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendRebootSignal()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    .line 640
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->disconnect()V

    .line 641
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->reset()V

    .line 643
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 644
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$7;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 1

    .line 784
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startDeviceScan()V
    .locals 4

    const/4 v0, 0x1

    .line 754
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bScan:Z

    .line 755
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->setText(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 758
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$11;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$11;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    .line 771
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startUpdate()V
    .locals 5

    const-string v0, "/firmware.bin"

    .line 345
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 346
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopDeviceConnect()V

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "/JRing/firmware"

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->getByFileName(Ljava/lang/String;)Lcom/jaga/ibraceletplus/jyring/ota/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setFile(Lcom/jaga/ibraceletplus/jyring/ota/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130565

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMemoryType(I)V

    .line 361
    const-string v0, "240"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 362
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setFileBlockSize(I)V

    .line 365
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setCS_GPIO(I)V

    .line 366
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMISO_GPIO(I)V

    .line 367
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMOSI_GPIO(I)V

    .line 368
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setSCK_GPIO(I)V

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    const-string v1, "jringBluetoothGattUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string/jumbo v1, "step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private stopDeviceConnect()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopDeviceScan()V
    .locals 2

    .line 775
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bScan:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 776
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bScan:Z

    .line 777
    const-string/jumbo v0, "stopDeviceScan"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 779
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method OnClickbCheck()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a006c
        }
    .end annotation

    .line 182
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->startDownload()V

    return-void

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13050c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 198
    const-string/jumbo v0, "start download exception occured."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130565

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004d

    .line 85
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->initData()V

    .line 89
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 254
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->closeWatcherTask()V

    .line 255
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 262
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "OTA_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    .line 264
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 249
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method startDownload()V
    .locals 5

    const-string/jumbo v0, "start download url: "

    const/4 v1, 0x0

    .line 616
    :try_start_0
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->curProgress:I

    .line 617
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    .line 618
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 621
    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->downloadFirmware(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start download url exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130565

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public startOtaService()V
    .locals 4

    .line 271
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/firmware.bin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startOtaService with file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const-string/jumbo v0, "startOtaService file not found."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 283
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_ADRESS_NEW"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_ADRESS_OLD"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_NAME"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "OTA_LAST_STATE"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$2;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V

    const/4 v1, 0x0

    .line 294
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    const-string/jumbo v0, "startOtaService connectTask execute."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    .line 312
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const-wide/32 v2, 0xea60

    .line 313
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public startOtaServiceWithoutConnect()V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/firmware.bin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 332
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_ADRESS_NEW"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_ADRESS_OLD"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_NAME"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "OTA_LAST_STATE"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public startWatcherTask(I)V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->handlerStopOtaTask:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->handlerStopOtaTask:Landroid/os/Handler;

    .line 397
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->runnableStopOtaTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
