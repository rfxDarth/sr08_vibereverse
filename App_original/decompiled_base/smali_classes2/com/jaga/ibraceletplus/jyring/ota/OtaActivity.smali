.class public Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "OtaActivity.java"


# instance fields
.field alInfoDailog:Landroidx/appcompat/app/AlertDialog;

.field private bAuto:Z

.field bCheck:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a006c
    .end annotation
.end field

.field private bScan:Z

.field private bUpgrade:Z

.field private bUpgradeV100:Z

.field private bd:Landroid/bluetooth/BluetoothDevice;

.field public bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

.field private dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field private firmwareUpgradeHandler:Landroid/os/Handler;

.field private firmwareUpgradeRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private handlerGetDeviceInfoTimeout:Landroid/os/Handler;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field pbOta:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031c
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field private runnableGetDeviceInfoTimeout:Ljava/lang/Runnable;

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
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    .line 62
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bUpgradeV100:Z

    .line 65
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bUpgrade:Z

    .line 79
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bAuto:Z

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->handlerGetDeviceInfoTimeout:Landroid/os/Handler;

    .line 117
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->runnableGetDeviceInfoTimeout:Ljava/lang/Runnable;

    .line 261
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->handler:Landroid/os/Handler;

    .line 262
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->runnable:Ljava/lang/Runnable;

    .line 268
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 566
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 592
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bScan:Z

    .line 617
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->firmwareUpgradeHandler:Landroid/os/Handler;

    .line 645
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$11;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$11;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->firmwareUpgradeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bUpgradeV100:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bUpgradeV100:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->reconnectAfterOta()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->stopDeviceScan()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->firmwareUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->firmwareUpgradeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->runnableGetDeviceInfoTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->handlerGetDeviceInfoTimeout:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bUpgrade:Z

    return p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bUpgrade:Z

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->firmwareUpgradeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bAuto:Z

    return p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->downloadFirmware(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private downloadFirmware(Ljava/lang/String;)V
    .locals 6

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadFirmware: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/firmware.bin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 517
    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 518
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

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;

    invoke-direct {v1, p0, p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    const p1, 0x7f130224

    .line 560
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->setText(Ljava/lang/String;)V

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bCheck:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private firmwareUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 660
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

    .line 661
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 662
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 663
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 666
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    const-string p1, ""

    return-object p1
.end method

.method private initData()V
    .locals 3

    .line 87
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 91
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    .line 92
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130180

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 98
    invoke-virtual {p0, v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bAuto:Z

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "OTA_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    return-void
.end method

.method private initView()V
    .locals 3

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    const-string v1, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_PROCEEDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "jringACTION_NOTIFY_DIALOG_DISMISS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "jringACTION_NOTIFY_LOCAL_UPGRADE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "jringBluetoothGattUpdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "jringProgressUpdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "jringConnectionState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->tvDeviceVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 167
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13009d

    .line 168
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    const v2, 0x7f13016b

    .line 169
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->alInfoDailog:Landroidx/appcompat/app/AlertDialog;

    .line 176
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bAuto:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a01d5

    .line 177
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->OnClickbCheck()V

    :cond_0
    return-void
.end method

.method private reconnectAfterOta()V
    .locals 4

    .line 492
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->disconnectBt(Z)V

    .line 493
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$6;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnectAfterOta disconnectBt remote exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 1

    .line 613
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startDeviceScan()V
    .locals 4

    const/4 v0, 0x1

    .line 594
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bScan:Z

    .line 595
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->setText(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 597
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$9;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$9;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startUpdate()V
    .locals 5

    const-string v0, "/firmware.bin"

    .line 236
    :try_start_0
    const-string v1, "call startUpdate ..."

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 240
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call startUpdate exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMemoryType(I)V

    .line 245
    const-string v0, "240"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setFileBlockSize(I)V

    .line 249
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setCS_GPIO(I)V

    .line 250
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMISO_GPIO(I)V

    .line 251
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMOSI_GPIO(I)V

    .line 252
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setSCK_GPIO(I)V

    .line 254
    const-string v0, "call startUpdate broadcast BLUETOOTH_GATT_UPDATE action."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    const-string v1, "jringBluetoothGattUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v1, "step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private stopDeviceScan()V
    .locals 2

    .line 606
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bScan:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bScan:Z

    .line 608
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method OnClickbCheck()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a006c
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    const v0, 0x7f1301c3

    .line 129
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->setText(Ljava/lang/String;)V

    const v0, 0x7f13009c

    .line 131
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDeviceInfo()I

    .line 133
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->handlerGetDeviceInfoTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->runnableGetDeviceInfoTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 141
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 142
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 136
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 137
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 138
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->setText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004c

    .line 72
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 75
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->initData()V

    .line 76
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 193
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "OTA_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    .line 196
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 187
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public startOtaService()V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/firmware.bin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "startOtaService : firmware bin file does not exist."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startOtaService address new: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startOtaService address old: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 211
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_ADRESS_NEW"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_ADRESS_OLD"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startOtaService ble device name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTA_LAST_NAME"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "OTA_LAST_STATE"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$3;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V

    const/4 v1, 0x0

    .line 231
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
