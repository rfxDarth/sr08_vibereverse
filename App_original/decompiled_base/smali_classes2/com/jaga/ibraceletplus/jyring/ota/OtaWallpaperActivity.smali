.class public Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "OtaWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$DownLoadImageTask;
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

.field civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

.field private connectLeDeviceHandler:Landroid/os/Handler;

.field private dialname:Ljava/lang/String;

.field private dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field private filename:Ljava/lang/String;

.field private firmwareUpgradeHandler:Landroid/os/Handler;

.field private firmwareUpgradeRunnable:Ljava/lang/Runnable;

.field private fontColor:I

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private handler:Landroid/os/Handler;

.field private imageurl:Ljava/lang/String;

.field ivWallpaper:Landroid/widget/ImageView;

.field ivWallpaperBottom:Landroid/widget/ImageView;

.field ivWallpaperTime:Landroid/widget/ImageView;

.field ivWallpaperTop:Landroid/widget/ImageView;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field pbOta:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031c
    .end annotation
.end field

.field rlWallpaperPanel:Landroid/widget/RelativeLayout;

.field private runnable:Ljava/lang/Runnable;

.field private scanLeDeviceHandler:Landroid/os/Handler;

.field private stopConnectDeviceRunnable:Ljava/lang/Runnable;

.field private stopLeDeviceRunnable:Ljava/lang/Runnable;

.field private timeAboveContent:I

.field private timeBelowContent:I

.field private timePos:I

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

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    .line 72
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bUpgrade:Z

    .line 78
    const-string v2, ""

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->filename:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->imageurl:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->dialname:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    .line 89
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    .line 91
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    .line 92
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bAuto:Z

    .line 149
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timePos:I

    .line 150
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timeAboveContent:I

    .line 151
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timeBelowContent:I

    .line 152
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->fontColor:I

    .line 507
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->handler:Landroid/os/Handler;

    .line 508
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$4;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->runnable:Ljava/lang/Runnable;

    .line 514
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 728
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$7;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 754
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bScan:Z

    .line 794
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$9;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$9;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->firmwareUpgradeHandler:Landroid/os/Handler;

    .line 822
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$10;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$10;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->firmwareUpgradeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopDeviceConnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->firmwareUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->firmwareUpgradeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Landroid/content/Intent;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->onError(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopDeviceScan()V

    return-void
.end method

.method private downloadFirmware(Ljava/lang/String;)V
    .locals 6

    .line 715
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/firmware.bin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 719
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;

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

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 721
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const p1, 0x7f130224

    .line 722
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->setText(Ljava/lang/String;)V

    .line 724
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bCheck:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private firmwareUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 837
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

    .line 838
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 839
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 840
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 843
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 845
    const-string p1, ""

    return-object p1
.end method

.method private initData()V
    .locals 4

    .line 161
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 165
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    .line 168
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130180

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "filename"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->filename:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "newFilename"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->imageurl:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "dialname"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->dialname:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "timePos"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timePos:I

    .line 182
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "timeAboveContent"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timeAboveContent:I

    .line 183
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "timeBelowContent"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timeBelowContent:I

    .line 184
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fontColor"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->fontColor:I

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "OTA_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    return-void
.end method

.method private initView()V
    .locals 13

    const v0, 0x7f0a00e3

    .line 239
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f0a0217

    .line 240
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    .line 242
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_WIDTH-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "240"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WALLPAPER_WATCH_HEIGHT-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 245
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x43200000    # 160.0f

    .line 246
    invoke-static {p0, v4}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    .line 247
    invoke-static {p0, v4}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    if-ge v1, v2, :cond_0

    mul-int v2, v2, v5

    .line 249
    div-int v4, v2, v1

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    mul-int v1, v1, v4

    .line 252
    div-int v5, v1, v2

    .line 254
    :cond_1
    :goto_0
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 255
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 257
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_SHAPE-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    .line 265
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_PROCEEDING"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v5, "jringBluetoothGattUpdate"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v5, "jringProgressUpdate"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v5, "jringConnectionState"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 285
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->tvDeviceVersion:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 288
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bAuto:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0a01d5

    .line 289
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->OnClickbCheck()V

    goto :goto_2

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bCheck:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    :goto_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->imageurl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageURI(Landroid/net/Uri;)V

    .line 298
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->imageurl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 301
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->rlWallpaperPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x5

    .line 302
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v6, 0x7

    .line 303
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v7, 0x8

    .line 304
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/high16 v8, 0x41a00000    # 20.0f

    .line 306
    invoke-static {p0, v8}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x420c0000    # 35.0f

    .line 307
    invoke-static {p0, v9}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v9

    .line 309
    iget v10, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timePos:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v10, :cond_8

    if-eq v10, v2, :cond_7

    if-eq v10, v12, :cond_6

    if-eq v10, v11, :cond_5

    goto :goto_3

    .line 328
    :cond_5
    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 329
    invoke-virtual {v1, v8, v9, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 322
    :cond_6
    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 323
    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    invoke-virtual {v1, v8, v4, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 317
    :cond_7
    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 318
    invoke-virtual {v1, v4, v9, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 311
    :cond_8
    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 312
    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 313
    invoke-virtual {v1, v4, v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 336
    :goto_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->rlWallpaperPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timeAboveContent:I

    const v1, 0x7f1001a2

    const v5, 0x7f1001a0

    const v6, 0x7f1001a1

    const v7, 0x7f10019f

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_c

    if-eq v0, v12, :cond_b

    if-eq v0, v11, :cond_a

    if-eq v0, v3, :cond_9

    goto :goto_4

    .line 359
    :cond_9
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 354
    :cond_a
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 349
    :cond_b
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 344
    :cond_c
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :goto_4
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->timeBelowContent:I

    if-eqz v0, :cond_12

    if-eq v0, v2, :cond_11

    if-eq v0, v12, :cond_10

    if-eq v0, v11, :cond_f

    if-eq v0, v3, :cond_e

    goto :goto_5

    .line 388
    :cond_e
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 383
    :cond_f
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 378
    :cond_10
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 373
    :cond_11
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 369
    :cond_12
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    :goto_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 397
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 398
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private onError(Landroid/content/Intent;)V
    .locals 3

    const v0, 0x7f13056b

    .line 673
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->setText(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bCheck:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendRebootSignal()V

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    .line 677
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->disconnect()V

    .line 678
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->reset()V

    .line 705
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 706
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$6;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    invoke-virtual {v0, p1, v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startDeviceScan()V
    .locals 4

    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bScan:Z

    .line 757
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->setText(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 760
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    .line 774
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startUpdate()V
    .locals 5

    const-string v0, "/wallpaper.bin"

    .line 480
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 488
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMemoryType(I)V

    .line 492
    const-string v0, "240"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 493
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setFileBlockSize(I)V

    .line 496
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setCS_GPIO(I)V

    .line 497
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMISO_GPIO(I)V

    .line 498
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setMOSI_GPIO(I)V

    .line 499
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setSCK_GPIO(I)V

    .line 501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 502
    const-string v1, "jringBluetoothGattUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string/jumbo v1, "step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private stopDeviceConnect()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopDeviceScan()V
    .locals 2

    .line 778
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bScan:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 779
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bScan:Z

    .line 780
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 781
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

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

    .line 203
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13050c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    .line 228
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bCheck:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004e

    .line 97
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0a0370

    .line 100
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->rlWallpaperPanel:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a021a

    .line 101
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    const p1, 0x7f0a0219

    .line 102
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    const p1, 0x7f0a0218

    .line 103
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    .line 105
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->initData()V

    .line 106
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->scanLeDeviceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopLeDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 415
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 418
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 419
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "OTA_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    .line 420
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 406
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public startOtaService()V
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f13056b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "/JRing/firmware"

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/wallpaper.bin"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 442
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTA_LAST_ADRESS_NEW"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 443
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTA_LAST_ADRESS_OLD"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bd:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTA_LAST_NAME"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 445
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "OTA_LAST_STATE"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 446
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$2;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V

    .line 452
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 462
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->stopConnectDeviceRunnable:Ljava/lang/Runnable;

    .line 476
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->connectLeDeviceHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
