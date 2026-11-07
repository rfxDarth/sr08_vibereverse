.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;
.super Lcom/jaga/ibraceletplus/jyring/BaseFragment;
.source "FragmentSetting.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$DownLoadImageTask;
    }
.end annotation


# static fields
.field public static final CALLLOG:[Ljava/lang/String;

.field public static final MIN_BLUETOOTH:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private ad:Landroid/graphics/drawable/AnimationDrawable;

.field private alhmDevice:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private bInitControll:Z

.field private bSearch:Z

.field private bShowBatteryData:Z

.field private bondDeviceMac:Ljava/lang/String;

.field private bondDeviceName:Ljava/lang/String;

.field private br:Landroid/content/BroadcastReceiver;

.field bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ae
    .end annotation
.end field

.field private checkDialServerInfoHandler:Landroid/os/Handler;

.field private checkDialServerInfoRunnable:Ljava/lang/Runnable;

.field private currentMacid:Ljava/lang/String;

.field cvAutoHeartTest:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a010c
    .end annotation
.end field

.field cvBleAdd:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a010d
    .end annotation
.end field

.field cvCall:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0110
    .end annotation
.end field

.field cvFindDevice:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0114
    .end annotation
.end field

.field cvNotify:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0117
    .end annotation
.end field

.field cvShortVideoTitle:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a011c
    .end annotation
.end field

.field cvSms:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a011d
    .end annotation
.end field

.field cvTimeFormat:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a011f
    .end annotation
.end field

.field protected delay_show_ui_timeout:I

.field private device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

.field dial_img_1:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0137
    .end annotation
.end field

.field dial_img_2:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0138
    .end annotation
.end field

.field dial_img_3:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0139
    .end annotation
.end field

.field private dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field ivBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d5
    .end annotation
.end field

.field ivBattery:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d6
    .end annotation
.end field

.field ivDevice:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ea
    .end annotation
.end field

.field ivDisconnect:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ed
    .end annotation
.end field

.field ivMoreRedPoint:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01fb
    .end annotation
.end field

.field ivOtaRedPoint:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01fe
    .end annotation
.end field

.field ivSearch:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a020c
    .end annotation
.end field

.field private lightDegreeLast:J

.field llAlarm:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023b
    .end annotation
.end field

.field llContact:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024c
    .end annotation
.end field

.field llDevice:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0252
    .end annotation
.end field

.field llDeviceSearch:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0254
    .end annotation
.end field

.field llDial:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0255
    .end annotation
.end field

.field llEmptyDevice:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0259
    .end annotation
.end field

.field llFindDevice:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025d
    .end annotation
.end field

.field llHint:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0264
    .end annotation
.end field

.field llReminder:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a026e
    .end annotation
.end field

.field llSavingPower:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0270
    .end annotation
.end field

.field llSearch:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0272
    .end annotation
.end field

.field llSedentary:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0273
    .end annotation
.end field

.field llSettingMore:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0274
    .end annotation
.end field

.field llSettingMoreContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0275
    .end annotation
.end field

.field loadingOverlay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028c
    .end annotation
.end field

.field lvDevice:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0290
    .end annotation
.end field

.field mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02cd
    .end annotation
.end field

.field mrlTime:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02ce
    .end annotation
.end field

.field pvBattery:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a034c
    .end annotation
.end field

.field private request_ble_connect_code:I

.field private request_ble_scan_code:I

.field private request_location_code:I

.field rlCustomAlarm:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0362
    .end annotation
.end field

.field rlECard:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0365
    .end annotation
.end field

.field rlLightDegree:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0116
    .end annotation
.end field

.field rlSmsRsp:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036c
    .end annotation
.end field

.field rlWallpaper:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036f
    .end annotation
.end field

.field rlWechat:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0371
    .end annotation
.end field

.field sCall:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037b
    .end annotation
.end field

.field sLost:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037d
    .end annotation
.end field

.field sMessage:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037e
    .end annotation
.end field

.field sMusic:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037f
    .end annotation
.end field

.field private saDevice:Landroid/widget/SimpleAdapter;

.field saLightDegree:[Ljava/lang/String;

.field saTime:[Ljava/lang/String;

.field sbHand:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038b
    .end annotation
.end field

.field private timeLast:J

.field tvAlarm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0451
    .end annotation
.end field

.field tvBattery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045d
    .end annotation
.end field

.field tvCamera:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0471
    .end annotation
.end field

.field tvCustome:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0488
    .end annotation
.end field

.field tvDeviceMac:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048f
    .end annotation
.end field

.field tvDeviceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0490
    .end annotation
.end field

.field tvDeviceSn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0491
    .end annotation
.end field

.field tvDeviceSync:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0492
    .end annotation
.end field

.field tvDeviceVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0493
    .end annotation
.end field

.field tvHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c1
    .end annotation
.end field

.field tvHint2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c2
    .end annotation
.end field

.field tvLightDegree:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c4
    .end annotation
.end field

.field tvMedicine:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04cf
    .end annotation
.end field

.field tvMessage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d1
    .end annotation
.end field

.field tvMore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d8
    .end annotation
.end field

.field tvMoreTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d9
    .end annotation
.end field

.field tvNotify:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e7
    .end annotation
.end field

.field tvOtaTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04eb
    .end annotation
.end field

.field tvSedentary:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0504
    .end annotation
.end field

.field tvTestTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0534
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field

.field tvTimeFormat:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0537
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a053c
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 248
    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "android.permission.READ_CALL_LOG"

    const-string v3, "android.permission.ANSWER_PHONE_CALLS"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->CALLLOG:[Ljava/lang/String;

    .line 2052
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->MIN_BLUETOOTH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;-><init>()V

    .line 176
    const-string v0, "FragmentSetting"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->TAG:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bondDeviceName:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bondDeviceMac:Ljava/lang/String;

    const/4 v1, 0x0

    .line 184
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bShowBatteryData:Z

    .line 752
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    .line 755
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saLightDegree:[Ljava/lang/String;

    .line 945
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->checkDialServerInfoHandler:Landroid/os/Handler;

    .line 1021
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->checkDialServerInfoRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x32

    .line 1052
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->delay_show_ui_timeout:I

    .line 1099
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->alhmDevice:Ljava/util/ArrayList;

    .line 1100
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->currentMacid:Ljava/lang/String;

    .line 1101
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->br:Landroid/content/BroadcastReceiver;

    .line 1566
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bInitControll:Z

    const-wide/16 v2, 0x0

    .line 1763
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->timeLast:J

    .line 1837
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->lightDegreeLast:J

    .line 1984
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bSearch:Z

    const/16 v0, 0x400

    .line 1993
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->request_location_code:I

    const/16 v0, 0x401

    .line 1994
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->request_ble_scan_code:I

    const/16 v0, 0x402

    .line 1995
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->request_ble_connect_code:I

    .line 2177
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ad:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method private OnClickbStop()V
    .locals 2

    const/4 v0, 0x0

    .line 1968
    :try_start_0
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bSearch:Z

    .line 1969
    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->callRemoteScanDevice(Z)V

    .line 1970
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1971
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->alhmDevice:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llHint:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1972
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f130171

    .line 1975
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1976
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint2:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v1, 0x7f130215

    .line 1977
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 1980
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateCallState(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->checkDialServerInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bInitControll:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/os/Handler;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->checkDialServerInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bondDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bondDeviceMac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/widget/SimpleAdapter;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saDevice:Landroid/widget/SimpleAdapter;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->alhmDevice:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;I)I
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getSignal(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateDeviceImageByType()V

    return-void
.end method

.method static synthetic access$1900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateControll()V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateOfflineOxygenUI()V

    return-void
.end method

.method static synthetic access$2100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->currentMacid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->currentMacid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initOtaIndicator()V

    return-void
.end method

.method static synthetic access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateSnInfo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->requestBlePermission()V

    return-void
.end method

.method static synthetic access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bSearch:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bSearch:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ad:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickbStop()V

    return-void
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->disconnectDeviceBatch()V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->hideLoading()V

    return-void
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dicconnect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Landroid/widget/ImageView;Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->changeImageState(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    return-object p0
.end method

.method static synthetic access$902(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    return-object p1
.end method

.method private changeImageState(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 688
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p2, 0x4

    .line 690
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private checkDialServerInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "checkDialServerInfo url : "

    .line 1040
    :try_start_0
    const-string v1, "http://download.keeprapid.com/apps/smartband/keepfit/dialinfo/%1$s/dail.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1041
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1043
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    .line 1044
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1049
    const-string p1, ""

    return-object p1
.end method

.method private cleanup()V
    .locals 2

    .line 894
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u6e05\u7406\u7528\u6237\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dicconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 632
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 633
    const-string p1, "can not be disconnected when context is null."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void

    .line 636
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    const-string p1, "Manifest.permission.BLUETOOTH_CONNECT not granted."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void

    .line 645
    :cond_1
    const-string v0, "call removeBoundDeviceAPI."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->removeBoundDeviceAPI(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method

.method private disconnectDevice()V
    .locals 8

    .line 651
    const-string v0, "FUNCTION_SHOW_BATTERY_DATA"

    const-string v1, ""

    .line 0
    const-string v2, "disconnectDevice mac: "

    const-string v3, "P_DEVICE_BT_MAC"

    .line 651
    :try_start_0
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteDeviceInfoData()J

    .line 652
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 653
    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 654
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->currentMacid:Ljava/lang/String;

    .line 655
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "P_LAST_TIME_DATA"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 656
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v5, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setMacid(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_1:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->changeImageState(Landroid/widget/ImageView;Z)V

    .line 658
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_2:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->changeImageState(Landroid/widget/ImageView;Z)V

    .line 659
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_3:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->changeImageState(Landroid/widget/ImageView;Z)V

    .line 660
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 661
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 662
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->disconnectBt(Z)V

    .line 663
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initSearch()V

    .line 665
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 668
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$5;

    invoke-direct {v2, p0, v0, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnectDevice: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private disconnectDeviceBatch()V
    .locals 4

    .line 594
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->showLoading()V

    .line 595
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->disconnectDevice()V

    .line 604
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_OTA_INDICATOR"

    const-string v2, "P_OTA_INDICATOR_DISABLE"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_DEVICE_OTA_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 606
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initOtaIndicator()V

    .line 607
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 609
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    :cond_0
    return-void
.end method

.method private getSignal(I)I
    .locals 1

    const/16 v0, -0x32

    if-le p1, v0, :cond_0

    const p1, 0x7f100085

    return p1

    :cond_0
    const/16 v0, -0x41

    if-le p1, v0, :cond_1

    const p1, 0x7f100084

    return p1

    :cond_1
    const/16 v0, -0x50

    if-le p1, v0, :cond_2

    const p1, 0x7f100083

    return p1

    :cond_2
    const/16 v0, -0x5f

    if-le p1, v0, :cond_3

    const p1, 0x7f100082

    return p1

    :cond_3
    const p1, 0x7f100081

    return p1
.end method

.method private hideLoading()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 628
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->loadingOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V
    .locals 9

    .line 1399
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDevice:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1400
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvBleAdd:Landroidx/cardview/widget/CardView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1401
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llEmptyDevice:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1402
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDeviceSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1403
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDisconnect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1405
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTitle:Landroid/widget/TextView;

    const v2, 0x7f130157

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1407
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceMac:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f13021b

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateSnInfo()V

    .line 1412
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "cur_ble_state"

    const-string v4, "0"

    invoke-virtual {v0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v5, 0x0

    if-ne v0, v2, :cond_1

    .line 1414
    const-string v0, "initDevice connect state."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "P_TEMP_BATTERY"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1415
    invoke-virtual {v0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1417
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "P_TEMP_BATTERY_STATE"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1417
    invoke-virtual {v2, v6, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1419
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v7, "FUNCTION_SHOW_BATTERY_DATA"

    const-string v8, "false"

    invoke-virtual {v6, v7, v8}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bShowBatteryData:Z

    .line 1421
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->pvBattery:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    mul-int/lit16 v7, v0, 0x168

    div-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    invoke-virtual {v6, v1, v7, v5}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 1422
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    int-to-float v7, v0

    invoke-virtual {v6, v1, v7, v5}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setProgress(IFF)V

    .line 1423
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initDevice : battery = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 1426
    const-string v1, "initDevice update charging image"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1427
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    const v2, 0x7f10003f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1428
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setCharging(Z)V

    goto :goto_0

    .line 1430
    :cond_0
    const-string v2, "initDevice set battery image"

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1431
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    const v5, 0x7f10003c

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1432
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setCharging(Z)V

    .line 1434
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvBattery:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSync:Landroid/widget/TextView;

    const v1, 0x7f130509

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1437
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateDeviceImageByType()V

    goto :goto_1

    .line 1440
    :cond_1
    const-string v0, "initDevice disconnect state."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->pvBattery:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    invoke-virtual {v0, v1, v5, v5}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 1442
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-virtual {v0, v1, v5, v5}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setProgress(IFF)V

    .line 1443
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1444
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1445
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSync:Landroid/widget/TextView;

    const v1, 0x7f13050b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1446
    const-string v0, "initDevice update disconnect image"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1450
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P_LAST_TIME_SYNC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1450
    invoke-virtual {v0, v1, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1452
    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1456
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 1457
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1458
    :cond_2
    const-string p1, ""

    :goto_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f130221

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    const-string/jumbo p1, "updateDeviceImageByType from initDevice"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1461
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateControll()V

    return-void
.end method

.method private initDeviceVersion()V
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 876
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    :cond_0
    return-void
.end method

.method private initOtaIndicator()V
    .locals 3

    .line 811
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_OTA_INDICATOR"

    const-string v2, "P_OTA_INDICATOR_DISABLE"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    const-string v1, "P_OTA_INDICATOR_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivMoreRedPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivOtaRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivMoreRedPoint:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivOtaRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initSearch()V
    .locals 3

    .line 2183
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDevice:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2184
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvBleAdd:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 2185
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llEmptyDevice:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2186
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDeviceSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2187
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDisconnect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2188
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llHint:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTitle:Landroid/widget/TextView;

    const v1, 0x7f130213

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2190
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint2:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2191
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint2:Landroid/widget/TextView;

    const v1, 0x7f130214

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2194
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSearch:Landroid/widget/LinearLayout;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2195
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ad:Landroid/graphics/drawable/AnimationDrawable;

    .line 2197
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->lvDevice:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saDevice:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2198
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->lvDevice:Landroid/widget/ListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 9

    .line 760
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 762
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->alhmDevice:Ljava/util/ArrayList;

    const-string/jumbo v0, "tvMac"

    const-string v4, "ivConnect"

    const-string v5, "ivSignal"

    const-string/jumbo v6, "tvRssi"

    const-string/jumbo v7, "tvName"

    filled-new-array {v5, v6, v7, v0, v4}, [Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0a04cb

    const v4, 0x7f0a01e5

    const v6, 0x7f0a020f

    const v7, 0x7f0a04ff

    const v8, 0x7f0a04da

    filled-new-array {v6, v7, v8, v0, v4}, [I

    move-result-object v6

    const v4, 0x7f0d00ab

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saDevice:Landroid/widget/SimpleAdapter;

    .line 766
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initSearch()V

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f130508

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkBluetooth(Landroid/content/Context;Ljava/lang/String;)Z

    .line 771
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    .line 773
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 774
    const-string v1, "jringSCANDEVICEDATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v1, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v1, "jringBATTERYDATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_DATA_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v1, "jringACTION_NOTIFY_CHECK_CRC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    const-string v1, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    const-string v1, "jringFUNCTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 781
    const-string v1, "jringDEVICE_DIALINFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v1, "jringACTION_NOTIFY_CONTACT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    const-string v1, "jringACTION_NOTIFY_UNBOND_ACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v1, "jringACTION_NOTIFY_SMSRSP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v1, "jringACTION_NOTIFY_ECARD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    const-string v1, "jringACTION_NOTIFY_DEVICE_OTA_ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string v1, "jringACTION_NOTIFY_GET_DEVICE_CODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 792
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "DIALMARKET_EXPIRE_TIMESTAMP"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 793
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "DIALMARKET_JSON"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    cmp-long v5, v0, v2

    if-gtz v5, :cond_2

    .line 794
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 798
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 799
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 800
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v2, "isLocal"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 803
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->checkDialServerInfoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 796
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->checkDialServerInfoTask()V

    .line 806
    :goto_2
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initOtaIndicator()V

    .line 807
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateOfflineOxygenUI()V

    return-void
.end method

.method static synthetic lambda$OnClicktvLightDegree$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1876
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$OnClicktvTimeFormat$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1803
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private refreshData()V
    .locals 2

    .line 863
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u5237\u65b0\u8bbe\u7f6e\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestBlePermission()V
    .locals 2

    .line 2057
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->MIN_BLUETOOTH:[Ljava/lang/String;

    .line 2061
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission([Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    .line 2066
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method private sendAnalyticsEvent(Ljava/lang/String;)V
    .locals 2

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u53d1\u9001\u4e8b\u4ef6: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendDeviceInfo()V
    .locals 5

    .line 355
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getMacid()Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    .line 360
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 v0, 0x16

    .line 363
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 364
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    const/16 v0, 0x8

    .line 365
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 366
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 367
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 368
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 371
    :goto_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>()V

    .line 372
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableQuite(Z)V

    .line 373
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartHour(I)V

    .line 374
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartMin(I)V

    .line 375
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndHour(I)V

    .line 376
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndMin(I)V

    .line 377
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableVibrate(Z)V

    .line 378
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableLight(Z)V

    .line 380
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Enable_New_Call"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 382
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableCalling(Z)V

    .line 384
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_SHORTVIDEO_ALWAYS"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 386
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableShortVideo(Z)V

    .line 388
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_LIGHTDEGREE_CLASS"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    .line 390
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setLightDegree(I)V

    .line 392
    new-instance v1, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    .line 394
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 395
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceInfo()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendDeviceInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private showLoading()V
    .locals 4

    .line 615
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 620
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%s ..."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->loadingOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateCallState(Z)V
    .locals 7

    .line 301
    const-string v0, "false"

    const-string v1, "com.jaga.ibraceletplus.jyring"

    const-string v2, "Enable_New_Call"

    .line 0
    const-string/jumbo v3, "updateCallState: "

    .line 301
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 306
    new-instance p1, Landroid/content/Intent;

    const-string v4, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    .line 309
    new-instance p1, Landroid/content/Intent;

    const-string v4, "jringACTION_NOTIFY_PERMISSION"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    const-string v4, "permission"

    const-string v5, "android.permission.READ_CALL_LOG"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackage(Landroid/content/Intent;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackageToService(Landroid/content/Intent;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getMacid()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 317
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_0

    .line 319
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 p1, 0x16

    .line 322
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 323
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    const/16 p1, 0x8

    .line 324
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 325
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 326
    invoke-virtual {v1, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 327
    invoke-virtual {v1, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 329
    :goto_0
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>()V

    .line 330
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableQuite(Z)V

    .line 331
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartHour(I)V

    .line 332
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartMin(I)V

    .line 333
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndHour(I)V

    .line 334
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndMin(I)V

    .line 335
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v5

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableVibrate(Z)V

    .line 336
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    if-ne v1, v6, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {p1, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableLight(Z)V

    .line 338
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 340
    invoke-virtual {p1, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableCalling(Z)V

    .line 342
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_SHORTVIDEO_ALWAYS"

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 344
    invoke-virtual {p1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableShortVideo(Z)V

    .line 346
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    .line 347
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 348
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceInfo()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private updateControll()V
    .locals 9

    const/4 v0, 0x1

    .line 1569
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bInitControll:Z

    .line 1570
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sCall:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Enable_New_Call"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1572
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sMessage:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Enable_New_Sms"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1574
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sMusic:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_ENABLE_MUSIC"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v0, 0x0

    .line 1577
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bInitControll:Z

    .line 1581
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_HIDE_CALL"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1582
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvCall:Landroidx/cardview/widget/CardView;

    const/16 v4, 0x8

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1583
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_HIDE_SMS"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1584
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvSms:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1585
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_HIDE_NOTIFICATION"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1586
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvNotify:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1588
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1590
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSedentary:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1593
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSettingMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1594
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSettingMoreContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f130415

    .line 1597
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f130413

    .line 1598
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f130414

    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    .line 1599
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_ENABLE_TIME_24"

    const-string v5, "0"

    invoke-virtual {v1, v2, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1602
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTimeFormat:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    aget-object v1, v6, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1303f2

    .line 1604
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1303f3

    .line 1605
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f1303f4

    invoke-virtual {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f1303f5

    .line 1606
    invoke-virtual {p0, v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1303f6

    invoke-virtual {p0, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v1, v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saLightDegree:[Ljava/lang/String;

    .line 1607
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_LIGHTDEGREE_CLASS"

    const-string v6, "4"

    invoke-virtual {v1, v2, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1609
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvLightDegree:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saLightDegree:[Ljava/lang/String;

    aget-object v1, v6, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1611
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "FUNCTION_TIME"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1613
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvTimeFormat:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1614
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->mrlTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 1617
    :cond_3
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvTimeFormat:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1618
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->mrlTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1621
    :goto_3
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "P_ENABLE_LOST"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getMacid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1623
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sLost:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1627
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {v1, v4}, Lcom/balysv/materialripple/MaterialRippleLayout;->setVisibility(I)V

    .line 1630
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlWechat:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1632
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_HIDE_FINDDEVICE"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1633
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvFindDevice:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1635
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSavingPower:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1640
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llReminder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1643
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llContact:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1646
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDial:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1650
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlWallpaper:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1653
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlCustomAlarm:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1656
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlECard:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1659
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlSmsRsp:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1661
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_SHOW_SHORTVIDEO"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1662
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvShortVideoTitle:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1664
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "cur_ble_state"

    invoke-virtual {v1, v2, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1666
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_SHOW_BATTERY_DATA"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bShowBatteryData:Z

    .line 1672
    :cond_6
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_HEART"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1673
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvAutoHeartTest:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1675
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_SHOW_LIGHTDEGREE"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1676
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlLightDegree:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    const/16 v0, 0x8

    :goto_7
    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    return-void
.end method

.method private updateDeviceImageByType()V
    .locals 9

    .line 1466
    const-string v0, ""

    const-string v1, "003A"

    const-string v2, "0001"

    .line 0
    const-string/jumbo v3, "updateDeviceImageByType deviceCid = "

    const-string v4, "did"

    const-string v5, "cid"

    .line 1466
    :try_start_0
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-nez v6, :cond_0

    goto/16 :goto_0

    .line 1469
    :cond_0
    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    .line 1472
    :cond_1
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    .line 1475
    :cond_2
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1476
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v7, v7, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v0}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1477
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v7, v7, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v0}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", deviceDid = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    if-eqz v5, :cond_14

    .line 1480
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1481
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "001C"

    const v6, 0x7f10001e

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1482
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1483
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "0020"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1484
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1485
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "0034"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1486
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1487
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v6, 0x7f10001d

    if-eqz v3, :cond_6

    const-string v3, "0017"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1488
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1489
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "004C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1490
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1491
    :cond_7
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "0022"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1492
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v1, 0x7f10001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1493
    :cond_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "002B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1494
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v1, 0x7f100020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1495
    :cond_9
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v6, 0x7f100024

    if-eqz v3, :cond_a

    const-string v3, "0010"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1496
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1497
    :cond_a
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "0018"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1498
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1499
    :cond_b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "0019"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1500
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1501
    :cond_c
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v6, 0x7f100025

    if-eqz v3, :cond_d

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1502
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1503
    :cond_d
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "005B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1504
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1505
    :cond_e
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "0062"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1506
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1507
    :cond_f
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/high16 v4, 0x7f100000

    if-eqz v3, :cond_10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1508
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1509
    :cond_10
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "0048"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1510
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v1, 0x7f100021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1511
    :cond_11
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "0049"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1512
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v1, 0x7f100022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1513
    :cond_12
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "004A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1514
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1516
    :cond_13
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_14
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDeviceImageByType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private updateOfflineOxygenUI()V
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_HAS_OXYGEN_OFFLINE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 884
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v0, 0x7f130411

    goto :goto_0

    :cond_0
    const v0, 0x7f13040f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateSnInfo()V
    .locals 4

    .line 1370
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_HAS_DEVICE_SN"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    .line 1372
    const-string v2, ""

    if-nez v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1374
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v3, "code"

    invoke-virtual {v0, v3, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1378
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1382
    :cond_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1379
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1384
    :goto_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSn:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f13021d

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 868
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u66f4\u65b0\u8bbe\u7f6eUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initDeviceVersion()V

    .line 870
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initOtaIndicator()V

    .line 871
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateOfflineOxygenUI()V

    return-void
.end method


# virtual methods
.method OnCheckedChangedsCall(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a037b
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 256
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bInitControll:Z

    if-nez p1, :cond_0

    .line 257
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;

    move-result-object p1

    const-string p2, "android.permission.READ_CALL_LOG"

    .line 259
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->permission(Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object p1

    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->CALLLOG:[Ljava/lang/String;

    .line 261
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->permission([Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object p1

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    .line 266
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void

    .line 295
    :cond_0
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateCallState(Z)V

    return-void
.end method

.method OnCheckedChangedsMessage(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a037e
        }
    .end annotation

    .line 439
    const-string p1, "Enable_New_Sms"

    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 441
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 443
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkNotificationPermission()V

    .line 445
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "OnCheckedChangedsMessage: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method OnCheckedChangedsMusic(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a037f
        }
    .end annotation

    .line 407
    const-string p1, "P_ENABLE_MUSIC"

    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkNotificationPermission()V

    .line 413
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 415
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "OnCheckedChangedsMusic: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method OnClickivBack(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01d5
        }
    .end annotation

    .line 2276
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvBleAdd:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 2277
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llEmptyDevice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2278
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDeviceSearch:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2279
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickbStop()V

    return-void
.end method

.method OnClickivConnect()V
    .locals 3

    .line 2149
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-nez v0, :cond_0

    .line 2150
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f130180

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2153
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickbStop()V

    .line 2154
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->alhmDevice:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2155
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saDevice:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 2157
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertDeviceInfo(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    .line 2158
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LAST_TIME_DATA"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2159
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->connectBt(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "macid"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2167
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    if-eqz v0, :cond_1

    .line 2168
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setMacid(Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    goto :goto_1

    .line 2171
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->next()V

    :goto_1
    return-void
.end method

.method OnClickivDisconnect()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01ed
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    const/4 v1, 0x1

    const v2, 0x7f130220

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBindFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBindFlag()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$2;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 562
    :cond_1
    :goto_0
    const-string v0, "OnClickivDisconnect disconnectDeviceBatch when not connect bt."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->disconnectDeviceBatch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnClickivDisconnect"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void

    .line 582
    :cond_2
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$3;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method OnClickivSearch()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04c1
        }
    .end annotation

    .line 1990
    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startSearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method OnClickllBleAdd(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0240
        }
    .end annotation

    .line 2267
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvBleAdd:Landroidx/cardview/widget/CardView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 2268
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llEmptyDevice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2269
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDeviceSearch:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2270
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2271
    const-string p1, ""

    invoke-virtual {p0, p1, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startSearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method OnClicktvAlarmn(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0451
        }
    .end annotation

    .line 496
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvCamera()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0471
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    const-string v1, "notifyBle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method OnClicktvContact(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a047d
        }
    .end annotation

    .line 491
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvCustom(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0488
        }
    .end annotation

    .line 511
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvDialCustom(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0494
        }
    .end annotation

    .line 480
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvDialMarket(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0256
        }
    .end annotation

    .line 475
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvDrink(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0499
        }
    .end annotation

    .line 516
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvECard()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a049a
        }
    .end annotation

    .line 534
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvFind()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04a8
        }
    .end annotation

    .line 1685
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1687
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method OnClicktvLightDegree()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04c4
        }
    .end annotation

    .line 1840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->lightDegreeLast:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1842
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->lightDegreeLast:J

    const v0, 0x7f1303f2

    .line 1844
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1303f3

    .line 1845
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1303f4

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1303f5

    .line 1846
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1303f6

    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saLightDegree:[Ljava/lang/String;

    .line 1847
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LIGHTDEGREE_CLASS"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1850
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saLightDegree:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1852
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v2, v3, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1853
    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->setSelectedPosition(I)V

    .line 1855
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f130163

    .line 1856
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1857
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda0;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1876
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda1;-><init>()V

    const v2, 0x7f13015a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1878
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1879
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method OnClicktvLow()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ca
        }
    .end annotation

    .line 1693
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13015b

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method OnClicktvMedicine(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04cf
        }
    .end annotation

    .line 506
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvMore()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04d8
        }
    .end annotation

    .line 546
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvNotify()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e7
        }
    .end annotation

    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvOta()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ea
        }
    .end annotation

    .line 1545
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvQuite()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04f6
        }
    .end annotation

    .line 1540
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvReset()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04fb
        }
    .end annotation

    .line 1740
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13016e

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$11;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$11;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method OnClicktvRestart()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04fc
        }
    .end annotation

    .line 1725
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13016f

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$10;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$10;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method OnClicktvSedentary(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0504
        }
    .end annotation

    .line 501
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvShortVideo()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0507
        }
    .end annotation

    .line 1908
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvSleep()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a050b
        }
    .end annotation

    .line 1755
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvSmsRsp()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0511
        }
    .end annotation

    .line 540
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvTest()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0533
        }
    .end annotation

    .line 1760
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvTimeFormat()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0537
        }
    .end annotation

    .line 1766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->timeLast:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1768
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->timeLast:J

    .line 1770
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_ENABLE_TIME_24"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1773
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1775
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v2, v3, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1776
    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->setSelectedPosition(I)V

    .line 1778
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f130412

    .line 1779
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1780
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1803
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$$ExternalSyntheticLambda3;-><init>()V

    const v2, 0x7f13015a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1805
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1806
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method OnClicktvWechat()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a054d
        }
    .end annotation

    .line 1960
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1963
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public checkDialServerInfoTask()V
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->TAG:Ljava/lang/String;

    const-string v1, "checkDialServerInfoTask start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;)V

    const/4 v1, 0x0

    .line 1096
    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getMacid()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 427
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method synthetic lambda$OnClicktvLightDegree$2$com-jaga-ibraceletplus-jyring-main-FragmentSetting(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1859
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1862
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvLightDegree:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saLightDegree:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1863
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_LIGHTDEGREE_CLASS"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1864
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, p3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHourFormat(Landroid/content/Context;I)I

    .line 1865
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p1, :cond_0

    .line 1866
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "FUNCTION_SHOW_LIGHTDEGREE"

    const-string v0, "false"

    invoke-virtual {p1, p3, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1869
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setOption()V

    .line 1872
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$OnClicktvTimeFormat$0$com-jaga-ibraceletplus-jyring-main-FragmentSetting(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1782
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1785
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTimeFormat:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_ENABLE_TIME_24"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1787
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, p3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHourFormat(Landroid/content/Context;I)I

    move-result p1

    .line 1789
    :try_start_0
    sget-object p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p3, :cond_1

    .line 1790
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "FUNCTION_TIME"

    const-string v1, "false"

    invoke-virtual {p3, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1792
    sget-object p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p3, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHourFormat(I)I

    goto :goto_0

    .line 1794
    :cond_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHourFormat(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1797
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "OnClicktvTimeFormat: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1799
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 2240
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x400

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2244
    :try_start_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p2, "P_LATEST_CONTACT_CRC"

    const-string p3, "0"

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 2245
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    .line 2246
    const-string/jumbo p2, "setContactCrc"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setContactCrc(Ljava/lang/String;)I

    .line 2248
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryContactInfos()Ljava/util/ArrayList;

    move-result-object p1

    .line 2249
    new-instance p2, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;

    invoke-direct {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;-><init>(Ljava/util/ArrayList;)V

    .line 2250
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2252
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 188
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->view:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f0d009b

    const/4 p3, 0x0

    .line 189
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->view:Landroid/view/View;

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 192
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->unbinder:Lbutterknife/Unbinder;

    .line 194
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->setStatusMain()V

    .line 195
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 197
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initView()V

    .line 198
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickbStop()V

    .line 205
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 209
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentSelected()V
    .locals 1

    .line 850
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->refreshData()V

    .line 851
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateUI()V

    .line 852
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->updateDeviceImageByType()V

    .line 853
    const-string/jumbo v0, "setting_page_show"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendAnalyticsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentUnselected()V
    .locals 0

    .line 858
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cleanup()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 835
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onPause()V

    .line 838
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 840
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->onFragmentUnselected()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p3, 0x3e8

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    .line 216
    :goto_0
    array-length p3, p2

    if-ge p1, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 823
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onResume()V

    .line 825
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 827
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->onFragmentSelected()V

    :cond_0
    return-void
.end method

.method public onSLostCheckedChanged()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a037d
        }
    .end annotation

    const-string v0, "P_ENABLE_LOST"

    .line 1948
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sLost:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    .line 1950
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getMacid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1951
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    .line 1952
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAntiLost(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1954
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSLostCheckedChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onTvTimeClicked()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0535
        }
    .end annotation

    .line 1913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->timeLast:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1915
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->timeLast:J

    const/4 v0, 0x0

    .line 1918
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1919
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1923
    :cond_1
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 1924
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saTime:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showList([Ljava/lang/String;)V

    .line 1925
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$12;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$12;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    return-void
.end method

.method public sendBroadcastWithPackage(Landroid/content/Intent;)V
    .locals 1

    .line 454
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public sendBroadcastWithPackage(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 459
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public sendBroadcastWithPackageToService(Landroid/content/Intent;)V
    .locals 1

    .line 464
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcastWithPackageToService(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 469
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1999
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bondDeviceName:Ljava/lang/String;

    .line 2000
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bondDeviceMac:Ljava/lang/String;

    .line 2001
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bSearch:Z

    if-eqz p1, :cond_0

    .line 2002
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickbStop()V

    return-void

    .line 2004
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint:Landroid/widget/TextView;

    const p2, 0x7f130172

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 2005
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint2:Landroid/widget/TextView;

    const p2, 0x7f130214

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 2008
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f130508

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkBluetooth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2012
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    const/4 v0, 0x0

    const-string v1, ""

    if-lt p1, p2, :cond_2

    .line 2013
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p1, v1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2014
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p1, v1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 2020
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2026
    :cond_3
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f130370

    .line 2027
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$14;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$14;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    const v0, 0x7f13015a

    .line 2028
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$13;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$13;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    const v0, 0x7f13016b

    .line 2033
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2040
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 2044
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->requestBlePermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
