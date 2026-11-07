.class public Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$InsertGoogleFitTask;
    }
.end annotation


# static fields
.field private static final FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x1388L

.field private static final GOOGLE_FIT_PERMISSIONS_REQUEST_CODE:I = 0x7d0

.field private static final KEY_LAST_UPDATED_TIME_STRING:Ljava/lang/String; = "last-updated-time-string"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_REQUESTING_LOCATION_UPDATES:Ljava/lang/String; = "requesting-location-updates"

.field private static final PERMISSIONS_REQUEST_ACTIVITY_RECOGNITION:I = 0x7d1

.field private static final REQUEST_CHECK_SETTINGS:I = 0x1

.field private static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x22

.field private static final REQUEST_RESOLVE_ERROR:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "DupMainActivity"

.field private static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x2710L

.field private static bits:[I

.field private static iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private static isExit:Z

.field public static mResolvingError:Z

.field public static mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

.field public static week:[Ljava/lang/String;


# instance fields
.field private final COLOR_NORMAL:I

.field private final COLOR_SELECTED:I

.field private final actionButtonTimeout:I

.field private adapter:Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;

.field private amazonMusicPackageName:Ljava/lang/String;

.field private audifyMusicPackageName:Ljava/lang/String;

.field private audiomackMusicPackageName:Ljava/lang/String;

.field private bAlerted:Z

.field private bNotifyBatteryFull:Z

.field private bNotifyBatteryLow:Z

.field private bShowBatteryLowFull:Z

.field public bSync:Z

.field public bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

.field private bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private br:Landroid/content/BroadcastReceiver;

.field private btBondDeviceMac:Ljava/lang/String;

.field private bugsPlayerPackageName:Ljava/lang/String;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private checkDialServerInfoHandler:Landroid/os/Handler;

.field private checkDialServerInfoRunnable:Ljava/lang/Runnable;

.field private curMusicVolume:I

.field private curVoiceCallVolume:I

.field private currentPosition:I

.field private doubanMusicPackageName:Ljava/lang/String;

.field private ecgSingle:I

.field private ecgTotal:F

.field private eventtime:J

.field private facebookCallback:Lcom/facebook/FacebookCallback;

.field private fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

.field private fragmentArray:[Ljava/lang/Class;

.field private gaanaMusicPackageName:Ljava/lang/String;

.field private googleMusicPackageName:Ljava/lang/String;

.field gpsUploadHandler:Landroid/os/Handler;

.field gpsUploadRunnable:Ljava/lang/Runnable;

.field private handlerAlarm:Landroid/os/Handler;

.field private handlerCheckGetDataByDay:Landroid/os/Handler;

.field private handlerUpload:Landroid/os/Handler;

.field private hmEcg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private hmEcgTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private hongmiMusicPackageName:Ljava/lang/String;

.field private honorMusicPackageName:Ljava/lang/String;

.field private honorMusicPackageName2:Ljava/lang/String;

.field private huaweiMusicPackageName:Ljava/lang/String;

.field private intentService:Landroid/content/Intent;

.field private isA2dpComplete:Z

.field private isHeadsetComplete:Z

.field private ivSetting:Landroid/widget/ImageView;

.field private jiubangMusicPackageName:Ljava/lang/String;

.field private ktMusicPackageName:Ljava/lang/String;

.field private kugouPackageName:Ljava/lang/String;

.field private kuwoMusicPackageName:Ljava/lang/String;

.field private kuwohdMusicPackageName:Ljava/lang/String;

.field private lastBondState:I

.field protected lastMusicAppName:Ljava/lang/String;

.field private lastSendTimestamp:J

.field protected listMusic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/util/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final listMusicAppNeedAutoPlay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listMusicAppSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lizhiMusicPackageName:Ljava/lang/String;

.field private mBatteryHandler:Landroid/os/Handler;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mBluetoothadapter:Landroid/bluetooth/BluetoothAdapter;

.field private mClassicBtDeviceBtName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentLocation:Landroid/location/Location;

.field private mDialogBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mLastUpdateTime:J

.field private mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

.field private mNotifyReceiveService:Landroid/content/ComponentName;

.field private mOtaHandler:Landroid/os/Handler;

.field private final mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRequestingLocationUpdates:Ljava/lang/Boolean;

.field private final mServiceCallback:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

.field private mVolumeChangeObserver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

.field private maxMusicVolume:I

.field private maxVoiceCallVolume:I

.field private mediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private melonPlayerPackageName:Ljava/lang/String;

.field private miguMusicPackageName:Ljava/lang/String;

.field private miuiMusicPackageName:Ljava/lang/String;

.field private miuiVideoPackageName:Ljava/lang/String;

.field private mixerBoxLiteMusicPackageName:Ljava/lang/String;

.field private mixerBoxProMusicPackageName:Ljava/lang/String;

.field private musicPlayerPackageName:Ljava/lang/String;

.field public nRequestTimes:I

.field private nameShow:[Ljava/lang/Class;

.field private neteaseMusicPackageName:Ljava/lang/String;

.field private numberEcg:I

.field private oppoMusicPackageName:Ljava/lang/String;

.field private piMusicPackageName:Ljava/lang/String;

.field private qingtingMusicPackageName:Ljava/lang/String;

.field private qqMusicPackageName:Ljava/lang/String;

.field private qqMusicPadPackageName:Ljava/lang/String;

.field private requestedOncePermission:Z

.field private final runnableResetAlarm:Ljava/lang/Runnable;

.field private final runnableResetSyncState:Ljava/lang/Runnable;

.field private samsungChnPlayerPackageName:Ljava/lang/String;

.field private samsungChnPlayerPackageName2:Ljava/lang/String;

.field private samsungChnPlayerPackageName3:Ljava/lang/String;

.field private shaibanPlayerPackageName4:Ljava/lang/String;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;

.field private final simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private sonyericssonMusicPackageName:Ljava/lang/String;

.field private spotifyMusicPackageName:Ljava/lang/String;

.field private startSyncTime:J

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private tencentRadioMusicPackageName:Ljava/lang/String;

.field private tidalMusicPackageName:Ljava/lang/String;

.field public timeSyncEnd:J

.field public timeSyncStart:J

.field private unknownMusicPackageName:Ljava/lang/String;

.field private vAudioManager:Landroid/media/AudioManager;

.field private viewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private weatherUtil:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

.field private xiamiMusicPackageName:Ljava/lang/String;

.field private ximalayaKidMusicPackageName:Ljava/lang/String;

.field private ximalayaMusicPackageName:Ljava/lang/String;

.field private yandexMusicPackageName:Ljava/lang/String;

.field private youtubeMusicPackageName:Ljava/lang/String;

.field private youtubeMusicPackageName2:Ljava/lang/String;

.field private yuntinMusicPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 200
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x0

    .line 201
    sput-boolean v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isExit:Z

    const/16 v1, 0x9

    .line 203
    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    const/16 v1, 0x8

    .line 286
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bits:[I

    .line 1357
    sput-boolean v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mResolvingError:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mClassicBtDeviceBtName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 270
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    .line 275
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLastUpdateTime:J

    .line 279
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curMusicVolume:I

    .line 280
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curVoiceCallVolume:I

    .line 281
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxMusicVolume:I

    .line 282
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxVoiceCallVolume:I

    .line 284
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->btBondDeviceMac:Ljava/lang/String;

    .line 289
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bAlerted:Z

    .line 290
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->requestedOncePermission:Z

    .line 291
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startSyncTime:J

    .line 870
    new-instance v4, Landroid/os/Handler;

    new-instance v5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$3;

    invoke-direct {v5, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gpsUploadHandler:Landroid/os/Handler;

    .line 889
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$4;

    invoke-direct {v4, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gpsUploadRunnable:Ljava/lang/Runnable;

    .line 1180
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$6;

    invoke-direct {v4, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->facebookCallback:Lcom/facebook/FacebookCallback;

    const/4 v4, 0x0

    .line 2097
    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->weatherUtil:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    .line 2191
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastSendTimestamp:J

    const/4 v5, 0x4

    .line 2220
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    aput-object v7, v6, v1

    const-class v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fragmentArray:[Ljava/lang/Class;

    .line 2227
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->currentPosition:I

    .line 2229
    const-string v6, "#FF6200EE"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->COLOR_SELECTED:I

    .line 2230
    const-string v6, "#FF757575"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->COLOR_NORMAL:I

    .line 2232
    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    .line 2554
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bSync:Z

    .line 2555
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncStart:J

    .line 2556
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncEnd:J

    .line 2557
    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerCheckGetDataByDay:Landroid/os/Handler;

    .line 2558
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$39;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$39;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->runnableResetSyncState:Ljava/lang/Runnable;

    .line 2627
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2676
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2983
    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerAlarm:Landroid/os/Handler;

    .line 2984
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$42;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$42;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->runnableResetAlarm:Ljava/lang/Runnable;

    .line 2991
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v6, v7, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 2992
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bNotifyBatteryFull:Z

    .line 2993
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bNotifyBatteryLow:Z

    .line 2994
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mServiceCallback:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const/4 v6, 0x0

    .line 4568
    iput v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ecgTotal:F

    const/16 v6, 0x2aa8

    .line 4569
    iput v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ecgSingle:I

    .line 4572
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->numberEcg:I

    .line 4573
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->hmEcg:Ljava/util/HashMap;

    .line 4574
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->hmEcgTime:Ljava/util/HashMap;

    const/4 v6, 0x7

    .line 4679
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    aput-object v7, v6, v1

    const-class v7, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    aput-object v7, v6, v8

    const-class v7, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    aput-object v7, v6, v9

    const-class v7, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;

    aput-object v7, v6, v10

    const-class v7, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;

    aput-object v7, v6, v5

    const-class v5, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    const/4 v7, 0x5

    aput-object v5, v6, v7

    const-class v5, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    const/4 v7, 0x6

    aput-object v5, v6, v7

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nameShow:[Ljava/lang/Class;

    .line 4919
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerUpload:Landroid/os/Handler;

    const/16 v5, 0x1f4

    .line 5073
    iput v5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionButtonTimeout:I

    .line 5307
    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->eventtime:J

    .line 5308
    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->vAudioManager:Landroid/media/AudioManager;

    .line 5323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    .line 5324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppNeedAutoPlay:Ljava/util/List;

    .line 5500
    const-string v2, "com.kugou.android"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kugouPackageName:Ljava/lang/String;

    .line 5501
    const-string v2, "com.netease.cloudmusic"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->neteaseMusicPackageName:Ljava/lang/String;

    .line 5504
    const-string v2, "com.tencent.qqmusic"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qqMusicPackageName:Ljava/lang/String;

    .line 5505
    const-string v2, "com.tencent.qqmusicpad"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qqMusicPadPackageName:Ljava/lang/String;

    .line 5506
    const-string v2, "fm.xiami.main"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->xiamiMusicPackageName:Ljava/lang/String;

    .line 5507
    const-string v2, "cmccwm.mobilemusic"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miguMusicPackageName:Ljava/lang/String;

    .line 5508
    const-string v2, "com.android.mediacenter"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->huaweiMusicPackageName:Ljava/lang/String;

    .line 5509
    const-string v2, "fm.qingting.qtradio"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qingtingMusicPackageName:Ljava/lang/String;

    .line 5510
    const-string v2, "com.yibasan.lizhifm"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lizhiMusicPackageName:Ljava/lang/String;

    .line 5511
    const-string v2, "com.tencent.radio"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tencentRadioMusicPackageName:Ljava/lang/String;

    .line 5512
    const-string v2, "com.ximalaya.ting.android"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ximalayaMusicPackageName:Ljava/lang/String;

    .line 5513
    const-string v2, "com.ximalaya.ting.kid"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ximalayaKidMusicPackageName:Ljava/lang/String;

    .line 5515
    const-string v2, "com.google.android.apps.youtube.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->youtubeMusicPackageName:Ljava/lang/String;

    .line 5516
    const-string v2, "mbinc12.mb32b"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mixerBoxLiteMusicPackageName:Ljava/lang/String;

    .line 5517
    const-string v2, "mb32r.musica.gratis.music.player.free.download"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mixerBoxProMusicPackageName:Ljava/lang/String;

    .line 5518
    const-string v2, "com.jiubang.go.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->jiubangMusicPackageName:Ljava/lang/String;

    .line 5519
    const-string v2, "com.Project100Pi.themusicplayer"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->piMusicPackageName:Ljava/lang/String;

    .line 5520
    const-string v2, "com.audiomack"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->audiomackMusicPackageName:Ljava/lang/String;

    .line 5521
    const-string v2, "com.musicplayer.playermusic"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->audifyMusicPackageName:Ljava/lang/String;

    .line 5523
    const-string v2, "cn.kuwo.player"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kuwoMusicPackageName:Ljava/lang/String;

    .line 5524
    const-string v2, "cn.kuwo.kwmusichd"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kuwohdMusicPackageName:Ljava/lang/String;

    .line 5526
    const-string v2, "com.shinyv.cnr"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->yuntinMusicPackageName:Ljava/lang/String;

    .line 5528
    const-string v2, "com.douban.radio"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->doubanMusicPackageName:Ljava/lang/String;

    .line 5529
    const-string v2, "com.android.bbkmusic"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->unknownMusicPackageName:Ljava/lang/String;

    .line 5530
    const-string v2, "com.vmons.mediaplayer.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->musicPlayerPackageName:Ljava/lang/String;

    .line 5531
    const-string v2, "com.google.android.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->googleMusicPackageName:Ljava/lang/String;

    .line 5532
    const-string v2, "com.miui.player"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miuiMusicPackageName:Ljava/lang/String;

    .line 5533
    const-string v2, "com.miui.video"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miuiVideoPackageName:Ljava/lang/String;

    .line 5534
    const-string v2, "com.iloen.melon"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->melonPlayerPackageName:Ljava/lang/String;

    .line 5535
    const-string v2, "com.ktmusic.geniemusic"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ktMusicPackageName:Ljava/lang/String;

    .line 5536
    const-string v2, "com.neowiz.android.bugs"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bugsPlayerPackageName:Ljava/lang/String;

    .line 5537
    const-string v2, "com.samsung.android.app.music.chn"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName:Ljava/lang/String;

    .line 5538
    const-string v2, "com.sec.android.app.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName2:Ljava/lang/String;

    .line 5539
    const-string v2, "com.samsung.musicplus"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName3:Ljava/lang/String;

    .line 5540
    const-string v2, "com.sonyericsson.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sonyericssonMusicPackageName:Ljava/lang/String;

    .line 5541
    const-string v2, "com.shaiban.audioplayer.mplayer"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->shaibanPlayerPackageName4:Ljava/lang/String;

    .line 5543
    const-string v2, "com.huawei.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->honorMusicPackageName:Ljava/lang/String;

    .line 5544
    const-string v2, "com.huawei.mediacontroller"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->honorMusicPackageName2:Ljava/lang/String;

    .line 5545
    const-string v2, "com.heytap.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->hongmiMusicPackageName:Ljava/lang/String;

    .line 5546
    const-string/jumbo v2, "ru.yandex.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->yandexMusicPackageName:Ljava/lang/String;

    .line 5548
    const-string v2, "com.aspiro.tidal"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tidalMusicPackageName:Ljava/lang/String;

    .line 5550
    const-string v2, "com.google.android.youtube"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->youtubeMusicPackageName2:Ljava/lang/String;

    .line 5551
    const-string v2, "com.oppo.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->oppoMusicPackageName:Ljava/lang/String;

    .line 5553
    const-string v2, "com.gaana"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gaanaMusicPackageName:Ljava/lang/String;

    .line 5554
    const-string v2, "com.spotify.music"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->spotifyMusicPackageName:Ljava/lang/String;

    .line 5555
    const-string v2, "com.amazon.mp3"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->amazonMusicPackageName:Ljava/lang/String;

    .line 5637
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastMusicAppName:Ljava/lang/String;

    .line 5638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusic:Ljava/util/List;

    .line 5716
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bShowBatteryLowFull:Z

    .line 5717
    iput v10, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    const/16 v0, 0xb

    .line 5718
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastBondState:I

    .line 5719
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->br:Landroid/content/BroadcastReceiver;

    .line 6108
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$52;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$52;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkDialServerInfoHandler:Landroid/os/Handler;

    .line 6182
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$53;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$53;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkDialServerInfoRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->showToast(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->weatherUtil:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mDialogBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/location/Location;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mCurrentLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mCurrentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;J)J
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->stopLocationUpdates()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->updateLocationUI()V

    return-void
.end method

.method static synthetic access$1602(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendWeather()V

    return-void
.end method

.method static synthetic access$2000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendWeather2Device(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->updateTabStyle(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isA2dpComplete:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isHeadsetComplete:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mServiceCallback:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;J)J
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastSendTimestamp:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initParam()V

    return-void
.end method

.method static synthetic access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
    .locals 1

    .line 198
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->requestedOncePermission:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->requestedOncePermission:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isIgnoringBatteryOptimizations()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkNotification()V

    return-void
.end method

.method static synthetic access$3300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bShowBatteryLowFull:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bShowBatteryLowFull:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bNotifyBatteryFull:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bNotifyBatteryFull:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBatteryHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bNotifyBatteryLow:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bNotifyBatteryLow:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerAlarm:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerAlarm:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->runnableResetAlarm:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startLocation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gpsUpload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->uploadData()V

    return-void
.end method

.method static synthetic access$4200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerUpload:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->showOta(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mClassicBtDeviceBtName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mClassicBtDeviceBtName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curMusicVolume:I

    return p0
.end method

.method static synthetic access$4502(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I
    .locals 0

    .line 198
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curMusicVolume:I

    return p1
.end method

.method static synthetic access$4600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mVolumeChangeObserver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxMusicVolume:I

    return p0
.end method

.method static synthetic access$4702(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I
    .locals 0

    .line 198
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxMusicVolume:I

    return p1
.end method

.method static synthetic access$4800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curVoiceCallVolume:I

    return p0
.end method

.method static synthetic access$4802(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I
    .locals 0

    .line 198
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curVoiceCallVolume:I

    return p1
.end method

.method static synthetic access$4900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxVoiceCallVolume:I

    return p0
.end method

.method static synthetic access$4902(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I
    .locals 0

    .line 198
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxVoiceCallVolume:I

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->currentPosition:I

    return p0
.end method

.method static synthetic access$5000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tryBondDevice(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$502(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I
    .locals 0

    .line 198
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->currentPosition:I

    return p1
.end method

.method static synthetic access$5100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveMember(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveFitness(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkDialServerInfoRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkDialServerInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->btBondDeviceMac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I
    .locals 0

    .line 198
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastBondState:I

    return p0
.end method

.method static synthetic access$5702(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I
    .locals 0

    .line 198
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastBondState:I

    return p1
.end method

.method static synthetic access$5800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->connectA2dpAndHeadSet(Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startBondRequest(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->adapter:Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkDialServerInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlePageSelected(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object p0
.end method

.method private actionMediaButton(I)V
    .locals 20

    move-object/from16 v1, p0

    .line 5076
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5079
    new-instance v4, Landroid/view/KeyEvent;

    iget-wide v5, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->eventtime:J

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-wide v7, v5

    move/from16 v10, p1

    invoke-direct/range {v4 .. v11}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 5080
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5081
    invoke-virtual {v1, v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5082
    const-string v0, "actionMediaButton: down"

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    .line 5086
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5088
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "actionMediaButton exception: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5091
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5093
    new-instance v12, Landroid/view/KeyEvent;

    iget-wide v13, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->eventtime:J

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-wide v15, v13

    move/from16 v18, p1

    invoke-direct/range {v12 .. v19}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 5094
    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5095
    invoke-virtual {v1, v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5096
    const-string v0, "actionMediaButton: up"

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private actionMediaButton3(I)V
    .locals 4

    .line 5100
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5101
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 5102
    const-string v1, "actionMediaButton3: down"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 5106
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "actionMediaButton3 exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5111
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 5112
    const-string p1, "actionMediaButton3: up"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private actionMediaButtonSpecial(Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 5116
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5117
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5118
    new-instance v5, Landroid/view/KeyEvent;

    iget-wide v6, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->eventtime:J

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-wide v8, v6

    move/from16 v11, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 5119
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5120
    invoke-virtual {v1, v0, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5121
    const-string v0, "actionMediaButtonSpecial: down"

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    .line 5125
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5127
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "actionMediaButtonSpecial exception: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5130
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5131
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5132
    new-instance v13, Landroid/view/KeyEvent;

    iget-wide v14, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->eventtime:J

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-wide/from16 v16, v14

    move/from16 v19, p2

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 5133
    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5134
    invoke-virtual {v1, v0, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5135
    const-string v0, "actionMediaButtonSpecial: up"

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private actionMediaButtonSpecial2(Ljava/lang/String;I)V
    .locals 3

    .line 5139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5140
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5141
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 5142
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5143
    const-string v1, ".playback.mediasession.MediaKeyReceiver"

    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5145
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;

    invoke-direct {v1, p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private actionMediaButtonSpecialAll(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5180
    invoke-direct {p0, p5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionMediaButton3(I)V

    .line 5181
    const-string/jumbo p1, "try standard method."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private actionPlaySpecialMusicApp(Ljava/lang/String;)V
    .locals 5

    .line 5158
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findMediaControl(Ljava/lang/String;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    .line 5159
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5160
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz p1, :cond_2

    .line 5162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playOrPause->pkgName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5163
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x55

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 5164
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    return-void

    .line 5167
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 5170
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    return-void

    .line 5172
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_2
    return-void
.end method

.method private autoSync()V
    .locals 14

    const-string v0, "mainActivity::set appId before autoSync : "

    .line 2368
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jringACTION_START_HISTORY_END"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v4, v1

    .line 2370
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bSync:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v9, v11, v8

    sget-object v9, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v13, 0x2

    aput-object v9, v11, v13

    const/4 v9, 0x3

    aput-object v10, v11, v9

    const-string v9, "mainActivity::sync: interval=%s mac=%s service=%s bSync=%s"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2373
    iget-boolean v9, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bSync:Z

    if-eqz v9, :cond_1

    const-wide/32 v9, 0xea60

    .line 2374
    invoke-virtual {p0, v9, v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkSyncTimeout(J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2375
    const-string v0, "mainActivity::ignore new sync action when syncing"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 2379
    :cond_0
    const-string v9, "mainActivity::reset sync state when last sync time out"

    invoke-virtual {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p0, v12}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    :cond_1
    const-wide/16 v9, 0x12c

    cmp-long v11, v4, v9

    if-ltz v11, :cond_4

    .line 2384
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v4, :cond_4

    .line 2387
    new-instance v4, Ljava/util/Date;

    mul-long v1, v1, v6

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v12}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v6

    .line 2388
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v12}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    sub-long/2addr v4, v1

    long-to-int v1, v4

    const v2, 0x15180

    .line 2389
    div-int/2addr v1, v2

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 2390
    :cond_2
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2393
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncEnd:J

    .line 2394
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    mul-int/lit8 v4, v2, -0x1

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncStart:J

    .line 2395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncStart:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncEnd:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2398
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_3

    .line 2400
    invoke-virtual {p0, v8}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 2401
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceTime()I

    .line 2402
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneUniqueId(Lnet/grandcentrix/tray/AppPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 2403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2404
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppId(Ljava/lang/String;)I

    .line 2405
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v8, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDataByDay(II)I

    .line 2406
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "jring.SYNC_PROGRESS"

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2408
    :cond_3
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_SYNC_HISTORY_DAY"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2410
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mainActivity::autoSync exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private buildLocationSettingsRequest()V
    .locals 2

    .line 1895
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 1896
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 1897
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method public static callRemoteScanDevice(Z)V
    .locals 1

    .line 2710
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    .line 2712
    :try_start_0
    invoke-interface {v0, p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->scanDevice(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2714
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private checkDialServerInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 6201
    :try_start_0
    const-string v0, "http://download.keeprapid.com/apps/smartband/keepfit/dialinfo/%1$s/dail.json"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6202
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 6203
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    .line 6204
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkDialServerInfo exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 6209
    const-string p1, ""

    return-object p1
.end method

.method private checkNotification()V
    .locals 3

    .line 6235
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6237
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bAlerted:Z

    if-eqz v0, :cond_0

    return-void

    .line 6239
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130377

    .line 6240
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13015a

    const/4 v2, 0x0

    .line 6241
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    const v2, 0x7f13016b

    .line 6242
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    .line 6274
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bAlerted:Z

    return-void

    .line 6277
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_ENABLE_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6278
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private checkOta()V
    .locals 4

    .line 4978
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4981
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 4982
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 4983
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "topActivity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4984
    const-class v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4985
    const-string v0, "checkOta cancel when ota is activity is running."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 4990
    :cond_1
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_2

    .line 4991
    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getOtaInfo(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 4994
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkOta exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private checkPermissions()Z
    .locals 1

    .line 1973
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs concatAll([[Z)[Z
    .locals 7

    .line 304
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 305
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_0
    new-array v0, v3, [Z

    .line 309
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    .line 310
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 5698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 5699
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5700
    const-string p1, "Manifest.permission.BLUETOOTH_CONNECT not granted."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 5705
    :cond_0
    const-string v0, "call device create bond function."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5707
    :try_start_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    if-lez v0, :cond_1

    .line 5708
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 5712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createBond failed"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private connectA2dpAndHeadSet(Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/16 v0, 0x64

    .line 6046
    invoke-direct {p0, p3, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 v0, 0x0

    .line 6049
    :try_start_0
    const-string v1, "connect"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6051
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6052
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 6055
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "connectA2dpAndHeadSet exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private createCustomTabView(I)Landroid/view/View;
    .locals 8

    .line 2491
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0117

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a040d

    .line 2493
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a040e

    .line 2494
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0801f2

    const v4, 0x7f0801ef

    const v5, 0x7f0801ee

    const v6, 0x7f0801f6

    .line 2497
    filled-new-array {v5, v6, v3, v4}, [I

    move-result-object v3

    const v4, 0x7f130228

    .line 2501
    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f13022b

    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f130157

    .line 2503
    invoke-virtual {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f130229

    invoke-virtual {p0, v7}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 2506
    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2507
    aget-object p1, v4, p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2510
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->COLOR_NORMAL:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private createLocationCallback()V
    .locals 1

    .line 1856
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method private createLocationRequest()V
    .locals 3

    .line 1837
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    .line 1843
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 1847
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 1849
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private disConnectA2dpAndHeadSet(Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v0, 0x0

    .line 6066
    invoke-direct {p0, p3, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 6069
    :try_start_0
    const-string v1, "disconnect"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6071
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6072
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 6075
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "disConnectA2dpAndHeadSet exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private disableReqNotificationPermission()V
    .locals 3

    .line 4434
    const-string v0, "disableReqNotificationPermission: true"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4435
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_DISABLE_REQ_NOTIFICATION_PERMISSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    return-void
.end method

.method private downloadData()V
    .locals 4

    .line 4823
    new-instance v0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;-><init>(Landroid/content/Context;)V

    .line 4824
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    .line 4825
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4828
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tid:Ljava/lang/String;

    const-string v2, "000001001128"

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->setId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4829
    invoke-virtual {v1, v2}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->setDownloadParam(Lorg/json/JSONObject;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;

    invoke-direct {v2, p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lcom/keeprapid/serverdataload/server/ServerDataDownload;)V

    .line 4830
    invoke-virtual {v1, v2}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->setOnDownloadListener(Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    move-result-object v0

    .line 4858
    invoke-virtual {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadKey()V

    return-void
.end method

.method private downloadDialImg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6224
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/dailimgs"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6225
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6227
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6228
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?t="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jringACTION_NOTIFY_DEVICE_DIALINFO_CHANGED_TEST"

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6230
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private downloadFirmware(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6213
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6214
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6216
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6217
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?t="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jringACTION_NOTIFY_DEVICE_DIALINFO_CHANGED_TEST"

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6219
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static findScrollableView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 2246
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2249
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 2250
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 2251
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2252
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2253
    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findScrollableView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object p0
.end method

.method private getBluetoothAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getBluetoothAddressSdk23(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2944
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getCurrentFragment(Landroidx/viewpager2/widget/ViewPager2;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 2235
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2236
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    .line 2239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2240
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method private getFirstFragmentControl()Landroid/widget/ScrollView;
    .locals 2

    .line 2417
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2421
    const-string v1, "f0"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2423
    instance-of v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    if-eqz v1, :cond_0

    .line 2424
    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    .line 2427
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getSvContent()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLastLocation()Landroid/location/Location;
    .locals 6

    .line 626
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    .line 630
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 631
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 632
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 636
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :cond_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getListByBit(I)[Z
    .locals 5

    const/16 v0, 0x8

    .line 295
    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 296
    :goto_0
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bits:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 297
    aget v3, v3, v2

    and-int/2addr v3, p0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getReqNotificationPermission()Z
    .locals 3

    .line 4427
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_DISABLE_REQ_NOTIFICATION_PERMISSION"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4428
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getReqNotificationPermission: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method public static getSleepLabel(I)Ljava/lang/String;
    .locals 6

    .line 4817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    add-int/lit8 v1, v1, 0x15

    rem-int/lit8 v1, v1, 0x18

    const-string v2, "0"

    const-string v3, ""

    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 p0, p0, 0x3c

    if-ge p0, v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSleepOffset()I
    .locals 1

    const/16 v0, -0x2a30

    return v0
.end method

.method private getWindowHeight()I
    .locals 2

    .line 1349
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1350
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1351
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1353
    div-int/lit8 v1, v0, 0x4

    sub-int/2addr v0, v1

    return v0
.end method

.method private gpsUpload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 911
    const-string v0, ""

    .line 0
    const-string v1, "gpsUpload request "

    .line 912
    new-instance v2, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    const-string v3, "http://api.keeprapid.com:8081/ronaldo-dc"

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 913
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 915
    :try_start_0
    const-string v4, "action_cmd"

    const-string v5, "gps_upload"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 916
    const-string/jumbo v4, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    const-string/jumbo v4, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 919
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "Token"

    invoke-virtual {v4, v5, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 920
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 921
    const-string/jumbo v6, "tid"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    const-string/jumbo v4, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string v4, "long"

    invoke-virtual {v5, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string p1, "lat"

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 925
    const-string p1, "phone_id"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string p1, "phone_name"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 927
    const-string p1, "phone_os"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneOS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    const-string p1, "app_version"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getAppVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    const-string p1, "nation"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getNationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    const-string p1, "body"

    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 933
    const-string p1, "gpsUpload url http://api.keeprapid.com:8081/ronaldo-dc"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 936
    new-instance p1, Lcz/msebera/android/httpclient/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 938
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    .line 939
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 943
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private handlePageSelected(I)V
    .locals 4

    .line 1066
    const-string/jumbo v0, "\u53d1\u73b0"

    const-string/jumbo v1, "\u6211\u7684"

    const-string/jumbo v2, "\u9996\u9875"

    const-string/jumbo v3, "\u5206\u7c7b"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5207\u6362\u5230\u9875\u9762: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PageChange"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->updateActionBarTitle(Ljava/lang/String;)V

    return-void
.end method

.method private initBluetoothSDK()V
    .locals 3

    .line 2581
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2582
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f130508

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkBluetooth(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2585
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->intentService:Landroid/content/Intent;

    .line 2592
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2593
    const-string v0, "bindService SampleBleService"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2594
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->toggleNotificationListenerService()V

    return-void
.end method

.method private initBtBond()V
    .locals 4

    .line 2614
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mContext:Landroid/content/Context;

    .line 2615
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 2616
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothadapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    .line 2617
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isA2dpComplete:Z

    .line 2618
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isHeadsetComplete:Z

    if-eqz v0, :cond_0

    .line 2620
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2621
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothadapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 12

    .line 433
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "OTA_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    .line 434
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBatteryHandler:Landroid/os/Handler;

    .line 471
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mOtaHandler:Landroid/os/Handler;

    const v0, 0x7f130581

    .line 496
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f130585

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f130586

    .line 497
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f130584

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f130580

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f130582

    .line 498
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f130583

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f130587

    .line 499
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v0, 0x7f13057f

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    .line 501
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Token"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/imgs"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/headimg.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->deleteFile(Ljava/lang/String;)Z

    .line 510
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 511
    const-string v1, "jringFUNCTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v1, "jringACTION_NOTIFY_SYNC_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v1, "jringACTION_NOTIFY_CLASSIC_BT_NEED_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v1, "jringACTION_NOTIFY_CLASSIC_BT_RETRY_BOND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v1, "jringACTION_NOTIFY_CLASSIC_BT_CREATE_BOND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v3, "jringACTION_CHECK_PERMISSION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v3, "jringACTION_NOTIFY_PERMISSION_REQUIRED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v3, "jringACTION_INCOMING_PHONE_NUM"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v3, "jringACTION_RESET_MUSIC_VOLUME"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v3, "jringACTION_NOTIFY_PACKAGE_ON_BAR"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v3, "jringACTION_NOTIFY_DEVICE_OTA_ENABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v3, "jringACTION_NOTIFY_DEVICE_OTA_DISABLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 538
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 540
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->weatherUtil:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    .line 541
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    const-string/jumbo v0, "request location permissions."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const v0, 0x7f130372

    .line 543
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 544
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 551
    :cond_1
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->downloadData()V

    .line 553
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initPhotoError()V

    .line 556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->eventtime:J

    .line 557
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->vAudioManager:Landroid/media/AudioManager;

    .line 560
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mVolumeChangeObserver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    .line 561
    invoke-virtual {v0, p0}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->setVolumeChangeListener(Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver$VolumeChangeListener;)V

    .line 588
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mVolumeChangeObserver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->registerReceiver()V

    .line 590
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_ENABLE_GOOGLE_API"

    .line 591
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bGoogleApi "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DupMainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 594
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->googleSignin(Z)V

    :cond_2
    return-void
.end method

.method private initLastLocation()V
    .locals 0

    return-void
.end method

.method private initMedia()V
    .locals 2

    .line 5327
    const-string v0, "media_session"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 5328
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/service/NLService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mNotifyReceiveService:Landroid/content/ComponentName;

    .line 5330
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kugouPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5331
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->neteaseMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5332
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->yuntinMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5333
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->huaweiMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5334
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qqMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5335
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qqMusicPadPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5336
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->xiamiMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5337
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qingtingMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5338
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lizhiMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5339
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ximalayaMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5340
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kuwoMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5341
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kuwohdMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5342
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->doubanMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5343
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->jiubangMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5344
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->piMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5345
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->spotifyMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5346
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mixerBoxLiteMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5347
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mixerBoxProMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5348
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->youtubeMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5349
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miguMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5350
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tencentRadioMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5351
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->audifyMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5352
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->audiomackMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5353
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->unknownMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5354
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->musicPlayerPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5355
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ximalayaKidMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5356
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->googleMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5357
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miuiMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5358
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miuiVideoPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5359
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->melonPlayerPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5360
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ktMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5361
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bugsPlayerPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5362
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5363
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5364
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName3:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5365
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sonyericssonMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5366
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->youtubeMusicPackageName2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5367
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->hongmiMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5368
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->honorMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5369
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->honorMusicPackageName2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5370
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->shaibanPlayerPackageName4:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5371
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->yandexMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5372
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tidalMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5373
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gaanaMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5374
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->oppoMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5375
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppSupported:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->amazonMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5377
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppNeedAutoPlay:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5378
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppNeedAutoPlay:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5379
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppNeedAutoPlay:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName3:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5380
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppNeedAutoPlay:Ljava/util/List;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sonyericssonMusicPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initOtherSdk()V
    .locals 3

    .line 1139
    :try_start_0
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 1140
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    .line 1142
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->callbackManager:Lcom/facebook/CallbackManager;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->facebookCallback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Facebook sdk init error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initOtherSdk exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private initParam()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2732
    const-string v0, "P_SHORTVIDEO_ENABLE"

    const-string v2, "0"

    const-string v3, "false"

    .line 0
    const-string/jumbo v4, "set appId first : "

    .line 2732
    const-string v5, "initParam..."

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2733
    sget-object v5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v5, :cond_0

    .line 2734
    const-string v0, "initParam mService is Null. "

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 2738
    :cond_0
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMacid()Ljava/lang/String;

    .line 2743
    :try_start_0
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneUniqueId(Lnet/grandcentrix/tray/AppPreferences;)Ljava/lang/String;

    move-result-object v5

    .line 2744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2745
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v4, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppId(Ljava/lang/String;)I

    .line 2746
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v4, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppId(Ljava/lang/String;)I

    .line 2751
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "P_ENABLE_TIME_24"

    invoke-virtual {v4, v5, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2754
    sget-object v5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "FUNCTION_TIME"

    invoke-virtual {v5, v6, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 2756
    sget-object v5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHourFormat(Landroid/content/Context;I)I

    move-result v4

    invoke-interface {v5, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHourFormat(I)I

    goto :goto_0

    .line 2758
    :cond_1
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v4, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHourFormat(I)I

    .line 2764
    :goto_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setUserProfile()V

    .line 2767
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setTarget()V

    .line 2770
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2771
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v8, 0x5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_2

    .line 2773
    new-instance v9, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v9}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    int-to-long v10, v5

    .line 2774
    invoke-virtual {v9, v10, v11}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    const v10, 0x7f1303fc

    .line 2775
    invoke-virtual {v1, v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setName(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {v9, v7}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 2777
    invoke-virtual {v9, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 v10, 0x9

    .line 2778
    invoke-virtual {v9, v10}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setHour(I)V

    .line 2779
    invoke-virtual {v9, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setMinute(I)V

    const/16 v10, 0x1f

    .line 2780
    invoke-virtual {v9, v10}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    .line 2781
    invoke-virtual {v9, v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 2782
    invoke-virtual {v9, v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 2783
    sget-object v10, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 2784
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2787
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 2788
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 2789
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;)Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2792
    :cond_3
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2793
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v8

    if-eqz v8, :cond_4

    .line 2794
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 2795
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v10

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v11

    .line 2796
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v12

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v13

    .line 2795
    invoke-interface/range {v8 .. v13}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setIdleTime(IIIII)I

    goto :goto_3

    .line 2798
    :cond_4
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 2799
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v10

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v11

    .line 2800
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v12

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v13

    const/4 v9, 0x0

    .line 2799
    invoke-interface/range {v8 .. v13}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setIdleTime(IIIII)I

    .line 2804
    :goto_3
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {v4, v9, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2805
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v8

    if-eqz v8, :cond_5

    .line 2806
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 2807
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v10

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v11

    .line 2808
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v12

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 2807
    invoke-interface/range {v8 .. v15}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setReminder(IIIIIII)I

    goto :goto_4

    .line 2810
    :cond_5
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 2811
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v10

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v11

    .line 2812
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v12

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/4 v9, 0x0

    .line 2811
    invoke-interface/range {v8 .. v15}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setReminder(IIIIIII)I

    .line 2816
    :goto_4
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v4, v9, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2817
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v8

    if-eqz v8, :cond_6

    .line 2818
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 2819
    sget-object v10, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v8

    mul-int/lit8 v11, v8, 0x3c

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v12

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v13

    .line 2820
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v14

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v15

    const/16 v16, 0x2

    const/16 v17, 0x2

    .line 2819
    invoke-interface/range {v10 .. v17}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setReminder(IIIIIII)I

    goto :goto_5

    .line 2822
    :cond_6
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 2823
    sget-object v10, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v12

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v13

    .line 2824
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v14

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v15

    const/16 v16, 0x2

    const/16 v17, 0x2

    const/4 v11, 0x0

    .line 2823
    invoke-interface/range {v10 .. v17}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setReminder(IIIIIII)I

    .line 2828
    :goto_5
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2829
    new-instance v8, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 2830
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 2831
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    goto :goto_6

    .line 2833
    :cond_7
    invoke-virtual {v8, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 v4, 0x16

    .line 2834
    invoke-virtual {v8, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 2835
    invoke-virtual {v8, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    const/16 v4, 0x8

    .line 2836
    invoke-virtual {v8, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 2837
    invoke-virtual {v8, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 2838
    invoke-virtual {v8, v7}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 2839
    invoke-virtual {v8, v7}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 2841
    :goto_6
    new-instance v4, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {v4}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>()V

    .line 2842
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v10

    if-ne v10, v7, :cond_8

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v4, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableQuite(Z)V

    .line 2843
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartHour(I)V

    .line 2844
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartMin(I)V

    .line 2845
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndHour(I)V

    .line 2846
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndMin(I)V

    .line 2847
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v10

    if-ne v10, v7, :cond_9

    const/4 v10, 0x1

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v4, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableVibrate(Z)V

    .line 2848
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v8

    if-ne v8, v7, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v4, v8}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableLight(Z)V

    .line 2850
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v10, "Enable_New_Call"

    invoke-virtual {v8, v10, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 2852
    invoke-virtual {v4, v8}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableCalling(Z)V

    .line 2854
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v10, "P_SHORTVIDEO_ALWAYS"

    invoke-virtual {v8, v10, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2856
    invoke-virtual {v4, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableShortVideo(Z)V

    .line 2858
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 2859
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    .line 2858
    invoke-virtual {v8, v0, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    if-nez v3, :cond_b

    .line 2862
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2864
    :cond_b
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "WearMode"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2866
    invoke-virtual {v4, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setWearMode(I)V

    .line 2868
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_LIGHTDEGREE_CLASS"

    const-string v3, "4"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v7

    .line 2870
    invoke-virtual {v4, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setLightDegree(I)V

    .line 2873
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/16 v3, 0x102

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2874
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 2875
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2876
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    goto :goto_a

    .line 2878
    :cond_c
    invoke-virtual {v2, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 2879
    invoke-virtual {v2, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    const/16 v0, 0x17

    .line 2880
    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    const/16 v0, 0x3b

    .line 2881
    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 2882
    invoke-virtual {v2, v9}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    const/16 v0, 0x1e

    .line 2883
    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 2884
    invoke-virtual {v2, v7}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 2886
    :goto_a
    sget-object v8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v0

    if-ne v0, v7, :cond_d

    const/4 v9, 0x1

    goto :goto_b

    :cond_d
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v10

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v11

    .line 2887
    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v12

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v13

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v14

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v15

    .line 2886
    invoke-interface/range {v8 .. v15}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAutoHeartMode(ZIIIIII)I

    .line 2890
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    .line 2891
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 2892
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAlarm()I

    .line 2893
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceInfo()I

    .line 2894
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDeviceCode()I

    .line 2906
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkOta()V

    .line 2908
    const-string v0, "calling initLastLocation function ..."

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2909
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initLastLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2912
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initParam exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private initPhotoError()V
    .locals 2

    .line 646
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 647
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 648
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    return-void
.end method

.method private isIgnoringBatteryOptimizations()Z
    .locals 2

    .line 1116
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUseAudioManagerKey(Ljava/lang/String;)Z
    .locals 4

    .line 5311
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.ximalaya.ting.kid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.tencent.qqmusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.musicplayer.playermusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63247631 -> :sswitch_2
        -0x61792011 -> :sswitch_1
        0x1bb4005 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private lastMusic(Ljava/lang/String;)V
    .locals 7

    .line 5473
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isUseAudioManagerKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "audio"

    const/16 v4, 0x58

    if-eqz v0, :cond_0

    .line 5474
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 5475
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 5476
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    .line 5478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findMediaControl(Ljava/lang/String;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    .line 5479
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 5480
    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v0, :cond_3

    .line 5482
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lastMusic->pkgName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5483
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 5484
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    return-void

    .line 5487
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5489
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    .line 5491
    :cond_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppNeedAutoPlay:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v3, :cond_3

    .line 5492
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_3
    return-void
.end method

.method private loadMusicRunningList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/util/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 5661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5662
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isSysNotifyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5664
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mNotifyReceiveService:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 5665
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5666
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 5667
    new-instance v3, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 5668
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/util/MusicInfo;

    invoke-direct {v2}, Lcom/jaga/ibraceletplus/jyring/util/MusicInfo;-><init>()V

    .line 5669
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5672
    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/MusicInfo;->setPkgName(Ljava/lang/String;)V

    .line 5685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMusicRunningList :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5686
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5690
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMusicRunningList exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private nextMusic(Ljava/lang/String;)V
    .locals 7

    .line 5429
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isUseAudioManagerKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "audio"

    const/16 v4, 0x57

    if-eqz v0, :cond_0

    .line 5430
    const-string/jumbo p1, "\u4f7f\u7528audioManger key\u65b9\u5f0f"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5431
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 5432
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 5433
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    .line 5451
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findMediaControl(Ljava/lang/String;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    .line 5452
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 5453
    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v0, :cond_3

    .line 5455
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nextMusic->pkgName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5456
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 5457
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v4, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    return-void

    .line 5460
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5462
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    .line 5464
    :cond_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusicAppNeedAutoPlay:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v3, :cond_3

    .line 5465
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_3
    return-void
.end method

.method private playOrPause(Ljava/lang/String;)V
    .locals 6

    .line 5400
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isUseAudioManagerKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "audio"

    const/16 v4, 0x55

    if-eqz v0, :cond_0

    .line 5401
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 5402
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 5403
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    .line 5405
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findMediaControl(Ljava/lang/String;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    .line 5406
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5407
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz p1, :cond_3

    .line 5409
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "playOrPause->pkgName:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5410
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 5411
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v4, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    return-void

    .line 5414
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 5417
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    return-void

    .line 5419
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_3
    return-void
.end method

.method private reconnectDevice()V
    .locals 4

    .line 5995
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5996
    const-string v0, "reconnectDevice: BLUETOOTH_CONNECT permission not granted."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 5999
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$50;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$50;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestPermissions()V
    .locals 3

    .line 1980
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1986
    const-string v0, "Displaying permission rationale to provide additional context."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1987
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$32;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$32;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    const v1, 0x7f130372

    const v2, 0x104000a

    invoke-direct {p0, v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->showSnackbar(IILandroid/view/View$OnClickListener;)V

    return-void

    .line 1998
    :cond_0
    const-string v1, "Requesting permission"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2002
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private saveFitness(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v1, p0

    .line 4863
    const-string v0, "mode"

    const-string/jumbo v2, "timestamp"

    const-string/jumbo v3, "timezone"

    const-string v4, "calorie"

    const-string v5, "distance"

    const-string/jumbo v6, "step"

    const-string v7, "mac_id"

    const-string/jumbo v8, "vid"

    :try_start_0
    const-string v9, "datalist"

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 4864
    sget-object v10, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v10, 0x0

    .line 4865
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 4866
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 4867
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4868
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4869
    const-string v13, "000001001128"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    .line 4873
    :cond_0
    new-instance v14, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v14}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    const/4 v12, 0x1

    .line 4874
    invoke-virtual {v14, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setSync(I)V

    .line 4875
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4876
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setMacid(Ljava/lang/String;)V

    .line 4877
    :cond_1
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 4878
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v14, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 4879
    :cond_2
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 4880
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v14, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    .line 4881
    :cond_3
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4882
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v14, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 4883
    :cond_4
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4884
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 4885
    :cond_5
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 4886
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 4887
    :cond_6
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4888
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getModeClient(I)I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 4889
    :cond_7
    sget-object v11, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertSportHistory(Ljava/lang/String;Ljava/lang/String;Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;ZZ)J

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 4891
    :cond_8
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4892
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4894
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveFitness exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private saveMember(Lorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 755
    const-string/jumbo v2, "userinfo"

    const-string/jumbo v3, "source"

    const-string v4, "memberid"

    .line 0
    const-string v5, "Exception: "

    .line 755
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 756
    sget-object v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 758
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 760
    :cond_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 761
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 762
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 763
    sget-object v7, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 766
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 767
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 768
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const-string v4, "nickname"

    const-string/jumbo v7, "utf-8"

    const-string/jumbo v8, "userid"

    const-string v9, "StepStride"

    const-string v10, "Weight"

    const-string v11, "Height"

    const-string v12, "Gender"

    const-string v13, "headimg"

    const-string v14, "birth"

    const-string/jumbo v15, "stride"

    const-string/jumbo v6, "weight"

    move/from16 v16, v3

    const-string v3, "height"

    move-object/from16 v17, v13

    const-string v13, "gender"

    move-object/from16 v18, v14

    const-string v14, "name"

    move-object/from16 v19, v9

    const-string/jumbo v9, "uid"

    move-object/from16 v20, v15

    const-string v15, "/headimg.jpg"

    if-eqz v16, :cond_9

    move-object/from16 v16, v15

    const/4 v15, 0x0

    .line 769
    :try_start_1
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 770
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 771
    sget-object v15, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v8, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 773
    :cond_2
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 774
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-static {v0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    sget-object v7, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v7, v4, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 778
    :cond_3
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    if-nez v0, :cond_4

    .line 780
    :try_start_2
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 781
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 780
    invoke-virtual {v0, v12, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 783
    :try_start_3
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v7, "1"

    invoke-virtual {v4, v12, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 788
    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    if-nez v0, :cond_5

    .line 790
    :try_start_4
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 791
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 790
    invoke-virtual {v0, v11, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 793
    :try_start_5
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "170"

    invoke-virtual {v3, v11, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 798
    :cond_5
    :goto_1
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    const-string v3, "60"

    if-nez v0, :cond_6

    .line 800
    :try_start_6
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 801
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 800
    invoke-virtual {v0, v10, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 803
    :catch_2
    :try_start_7
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v10, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :goto_2
    move-object/from16 v15, v20

    .line 807
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v0, :cond_7

    .line 809
    :try_start_8
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 810
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v6, v19

    .line 809
    :try_start_9
    invoke-virtual {v0, v6, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v6, v19

    .line 812
    :goto_3
    :try_start_a
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v4, v6, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_7
    :goto_4
    move-object/from16 v3, v18

    .line 817
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 818
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "Birthday"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    move-object/from16 v3, v17

    .line 820
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 821
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "/JRing/imgs"

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 825
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;

    const-string v4, ""

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 826
    new-array v0, v15, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_6

    :cond_9
    move-object/from16 v16, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v17, v15

    move-object/from16 v15, v20

    .line 831
    :try_start_b
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v18, v1

    .line 832
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_a
    move-object/from16 v18, v1

    .line 834
    :goto_5
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 835
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    invoke-static {v1, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 837
    sget-object v7, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v7, v4, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 839
    :cond_b
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 840
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 842
    :cond_c
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 843
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 845
    :cond_d
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 846
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 848
    :cond_e
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 849
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    :cond_f
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 852
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "Birthday"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_10
    move-object/from16 v1, v18

    .line 854
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 855
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/JRing/imgs"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;

    const-string v3, ""
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    move-object/from16 v4, p0

    :try_start_c
    invoke-direct {v2, v4, v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 860
    new-array v0, v15, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_11
    move-object/from16 v4, p0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_7

    :cond_12
    :goto_6
    move-object v4, v1

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v4, v1

    move-object/from16 v16, v5

    .line 866
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method private sendEcgProgress(FI)V
    .locals 2

    .line 4523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jring.ECG_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4524
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 4525
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4526
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private sendWeather()V
    .locals 22

    move-object/from16 v1, p0

    .line 2099
    const-string v0, " "

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "Latitude"

    const-string v4, "1000.0"

    invoke-virtual {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 2101
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "Longitude"

    invoke-virtual {v3, v5, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 2104
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->weatherUtil:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    if-nez v4, :cond_0

    return-void

    .line 2107
    :cond_0
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;

    invoke-direct {v5, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v4, v5}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->setOnWeatherListener(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;)V

    const/4 v4, 0x1

    .line 2138
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    const-string v7, "WeatherInfo"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2141
    const-string v9, "lWeatherJson"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2142
    const-string/jumbo v10, "timestamp"

    const-string v11, "0"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 2143
    const-string v11, "latitude"

    const-string v12, "0.0"

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    .line 2144
    const-string v13, "longitude"

    invoke-interface {v7, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    .line 2145
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 2147
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v17, v13, v15

    if-eqz v17, :cond_1

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v17, v13, v15

    if-eqz v17, :cond_1

    sget-object v13, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v13, :cond_1

    invoke-interface {v13}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2148
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_1
    if-eqz v9, :cond_5

    .line 2153
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2154
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$36;

    invoke-direct {v5, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$36;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$36;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 2155
    invoke-virtual {v0, v9, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2156
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 2158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Weather "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cur temp: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;

    invoke-virtual {v9}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getCurT()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 2161
    new-array v0, v0, [F

    .line 2162
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-object/from16 v21, v0

    invoke-static/range {v13 .. v21}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendWeather distance: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v21, v8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendWeather data count: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendWeather time after last : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/32 v15, 0xea60

    div-long/2addr v13, v15

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2167
    aget v0, v21, v8

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_4

    .line 2168
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2169
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v11, v9

    const-wide/32 v9, 0x1b7740

    cmp-long v0, v11, v9

    if-lez v0, :cond_3

    goto :goto_1

    .line 2173
    :cond_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    .line 2170
    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2177
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendWeather bNeedRefreshWeather: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2179
    const-string v0, "getWeatherSpecial"

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2180
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->weatherUtil:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherSpecial(DD)V

    return-void

    .line 2183
    :cond_6
    const-string/jumbo v0, "sendWeather2Device now"

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2184
    invoke-direct {v1, v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendWeather2Device(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private sendWeather2Device(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sendWeather2Device at time : "

    .line 2193
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v1, :cond_0

    return-void

    .line 2196
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2197
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastSendTimestamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 2198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendWeather2Device time after last : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastSendTimestamp:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2202
    :cond_1
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v3, "OTA_MODE"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2204
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendWeather2Device cancel by ota mode : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 2208
    :cond_2
    new-instance v2, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2210
    :try_start_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 2211
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->sendWeather()I

    .line 2212
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastSendTimestamp:J

    .line 2213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lastSendTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    .line 6088
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    .line 6090
    :cond_0
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothA2dp;

    const-string/jumbo v1, "setPriority"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6092
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6093
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6095
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setPriority exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public static setTarget()V
    .locals 3

    .line 2720
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    .line 2722
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_GOAL_STEP"

    const-string v2, "4000"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2724
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setGoalStep(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2726
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static setUserProfile()V
    .locals 9

    .line 4716
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    const-string v2, "170"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v3, v0

    .line 4718
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v4, v0

    .line 4721
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4723
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4725
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Birthday"

    const-string v2, "1990-01-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4728
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4730
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v2, v0

    move v8, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4732
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/16 v2, 0x14

    const/16 v8, 0x14

    .line 4735
    :goto_0
    new-instance v1, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;-><init>(IIIIIII)V

    .line 4736
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    .line 4737
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4741
    :cond_0
    :try_start_1
    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 4742
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setUserInfo()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4746
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 4744
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setupPageChangeListener()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private setupTabLayout()V
    .locals 4

    .line 2453
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 2457
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 2460
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$38;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$38;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 2478
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2481
    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->updateTabStyle(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    :cond_0
    return-void
.end method

.method private setupViewPager()V
    .locals 2

    .line 2441
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->adapter:Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;

    .line 2442
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2445
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method

.method private showOta(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "showOta version:  "

    .line 4999
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showOta response:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5000
    const-string v1, ""

    const/4 v2, 0x0

    .line 5003
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5004
    const-string/jumbo p1, "versionCode"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x8

    .line 5005
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5006
    const-string p1, "force"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 5007
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5009
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showOta exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    .line 5015
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5016
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5017
    const-string v3, "auto"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5018
    const-string/jumbo p1, "version"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5019
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5020
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mOtaHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x2

    if-ne v2, p1, :cond_7

    .line 5026
    const-string/jumbo p1, "showOta update P_OTA_INDICATOR: P_OTA_INDICATOR_ENABLE"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5027
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_OTA_INDICATOR"

    const-string v1, "P_OTA_INDICATOR_ENABLE"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5029
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_HIDE_SETTINGMORE"

    const-string v3, "false"

    invoke-virtual {p1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 5030
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "P_OTA_INDICATOR_DISABLE"

    invoke-virtual {v2, v0, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5031
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5032
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 5033
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    const v2, 0x7f0801f3

    if-nez v1, :cond_1

    .line 5034
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5038
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 5040
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 5046
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 5047
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    const v2, 0x7f0801f2

    if-nez v1, :cond_4

    .line 5048
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 5052
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 5054
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5060
    :cond_6
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_DEVICE_OTA_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private showSnackbar(IILandroid/view/View$OnClickListener;)V
    .locals 2

    const v0, 0x1020002

    .line 1963
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1964
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x2

    .line 1962
    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 1966
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private showToast(Ljava/lang/String;Z)V
    .locals 0

    .line 4683
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 4689
    :cond_0
    new-instance p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$45;

    invoke-direct {p2, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$45;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startBondRequest(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 6028
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private startLocationUpdates()V
    .locals 2

    .line 1905
    const-string/jumbo v0, "startLocationUpdates."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1907
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1908
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1920
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private stopLocationUpdates()V
    .locals 2

    .line 2077
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    const-string/jumbo v0, "stopLocationUpdates: updates never requested, no-op."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 2082
    :cond_0
    const-string/jumbo v0, "stopLocationUpdates"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2086
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$34;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$34;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 2087
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private testDemoData()V
    .locals 28

    .line 348
    const-string v16, "25 F8 3A 69 63 16 F5 00 16 AB 01 00 00 00 00 00 00 00 00 00"

    const-string v17, "25 98 9A 69 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v0, "25 40 20 69 63 00 00 00 00 00 00 00 00 00 00 0B 00 00 00 00"

    const-string v1, "25 E0 25 69 63 00 00 00 00 00 00 00 00 00 00 E1 07 00 00 01"

    const-string v2, "25 48 27 69 63 61 04 31 02 51 01 31 02 11 03 21 06 11 11 11"

    const-string v3, "25 B0 28 69 63 81 03 11 03 F1 03 61 04 E1 07 B1 0C 11 11 11"

    const-string v4, "25 18 2A 69 63 61 04 61 04 A1 02 41 05 01 07 41 05 11 11 11"

    const-string v5, "25 80 2B 69 63 A1 09 61 04 E9 00 D9 04 99 06 A9 09 11 11 11"

    const-string v6, "25 E8 2C 69 63 E9 07 59 08 29 06 29 06 89 03 89 0A 11 11 11"

    const-string v7, "25 50 2E 69 63 39 09 39 02 49 05 39 02 C9 01 59 01 11 11 11"

    const-string v8, "25 B8 2F 69 63 E9 07 89 03 19 03 19 03 89 11 19 0A 11 11 11"

    const-string v9, "25 20 31 69 63 19 03 69 04 69 04 09 00 49 05 69 04 11 11 11"

    const-string v10, "25 88 32 69 63 79 0E 49 05 29 06 09 07 C7 01 C7 01 11 11 11"

    const-string v11, "25 F0 33 69 63 47 05 57 01 F7 03 27 06 47 05 A7 02 11 11 11"

    const-string v12, "25 58 35 69 63 67 04 67 0B 87 03 57 01 17 03 F7 03 11 11 11"

    const-string v13, "25 C0 36 69 63 87 03 77 00 A7 02 27 06 C7 01 07 00 11 11 11"

    const-string v14, "25 28 38 69 63 C7 01 07 00 07 00 77 00 07 00 B7 05 11 11 11"

    const-string v15, "25 90 39 69 63 67 04 16 03 06 07 26 06 96 0D 46 13 11 11 11"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    .line 368
    const-string v26, "25 C8 86 6B 63 1E 7A 01 1E A4 01 1E 96 01 1E 81 01 00 00 00"

    const-string v27, "25 98 3D 6C 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v18, "25 98 54 64 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v19, "25 18 A6 65 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v20, "25 98 F7 66 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v21, "25 18 49 68 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v22, "25 98 9A 69 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v23, "25 18 EC 6A 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v24, "25 60 85 6B 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v25, "25 98 3D 6C 63 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    filled-new-array/range {v18 .. v27}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    .line 382
    aget-object v3, v0, v2

    .line 383
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    .line 385
    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v6, 0x12

    .line 386
    aget-object v6, v3, v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x13

    .line 387
    aget-object v7, v3, v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x4

    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    aget-object v11, v3, v10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    aget-object v12, v3, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v13, v3, v12

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-long v13, v8

    .line 389
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v8, v15, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    :goto_1
    const/4 v15, 0x6

    if-ge v1, v15, :cond_6

    const/16 v17, 0x6

    .line 391
    new-instance v15, Ljava/util/Date;

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v13

    const v20, 0xea60

    mul-int v9, v1, v20

    int-to-long v10, v9

    add-long v10, v18, v10

    invoke-direct {v15, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 392
    invoke-virtual {v8, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v11, v10, 0x5

    .line 394
    aget-object v11, v3, v11

    invoke-static {v11, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v10, v10, 0x6

    .line 395
    aget-object v10, v3, v10

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    and-int/lit8 v15, v11, 0xf

    if-eqz v1, :cond_5

    if-eq v1, v12, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/16 v21, 0x4

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    goto :goto_4

    :cond_0
    and-int/lit8 v5, v7, 0xf

    goto :goto_2

    :cond_1
    const/16 v21, 0x4

    and-int/lit16 v5, v7, 0xf0

    goto :goto_3

    :cond_2
    const/16 v21, 0x4

    and-int/lit8 v5, v6, 0xf

    goto :goto_2

    :cond_3
    const/16 v21, 0x4

    and-int/lit16 v5, v6, 0xf0

    goto :goto_3

    :cond_4
    const/16 v21, 0x4

    and-int/lit8 v5, v4, 0xf

    :goto_2
    shl-int/lit8 v5, v5, 0x4

    goto :goto_3

    :cond_5
    const/16 v21, 0x4

    and-int/lit16 v5, v4, 0xf0

    :goto_3
    or-int/2addr v15, v5

    :goto_4
    shr-int/lit8 v5, v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v5

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "testDemoData date = "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mode = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", value = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "DupMainActivity"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x10

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private testDemoData2()V
    .locals 18

    move-object/from16 v0, p0

    .line 317
    const-string v1, "20 6E E8 1B C7 07 BE 00 00 00 00 00 00 00 00 00 00 00 00 00"

    .line 318
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 320
    aget-object v3, v1, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x2

    .line 321
    aget-object v6, v1, v5

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    .line 322
    aget-object v8, v1, v7

    invoke-static {v8, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x4

    .line 323
    aget-object v10, v1, v9

    invoke-static {v10, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x5

    .line 324
    aget-object v12, v1, v11

    invoke-static {v12, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x6

    .line 325
    aget-object v14, v1, v13

    invoke-static {v14, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x7

    const/16 v16, 0x1

    .line 326
    aget-object v2, v1, v15

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v17, 0x2

    const/16 v5, 0x8

    .line 327
    aget-object v1, v1, v5

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 329
    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v3

    .line 330
    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v4

    .line 331
    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v6

    .line 332
    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v8

    .line 333
    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v10

    .line 334
    invoke-static {v14}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v12

    .line 335
    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v2

    .line 336
    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getListByBit(I)[Z

    move-result-object v1

    .line 337
    new-array v5, v5, [[Z

    const/4 v14, 0x0

    aput-object v3, v5, v14

    aput-object v4, v5, v16

    aput-object v6, v5, v17

    aput-object v8, v5, v7

    aput-object v10, v5, v9

    aput-object v12, v5, v11

    aput-object v2, v5, v13

    aput-object v1, v5, v15

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->concatAll([[Z)[Z

    move-result-object v1

    .line 339
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 340
    aget-boolean v2, v1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 343
    const-string v2, ""

    :goto_0
    array-length v3, v1

    if-ge v14, v3, :cond_0

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v2, v1, v14

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onGetBandFunction "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private toggleNotificationListenerService()V
    .locals 4

    .line 2599
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2600
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/service/NLService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2602
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/service/NLService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private tryBondDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 4552
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;

    invoke-direct {v1, p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;I)V

    const-wide/16 p1, 0x2710

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private updateLocationUI()V
    .locals 0

    return-void
.end method

.method private updateTabStyle(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 1

    .line 2519
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f0a040d

    .line 2521
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a040e

    .line 2522
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 2526
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->COLOR_SELECTED:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 2532
    :cond_0
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->COLOR_NORMAL:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private updateUI()V
    .locals 0

    .line 2062
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->updateLocationUI()V

    return-void
.end method

.method private uploadData()V
    .locals 13

    .line 4921
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    .line 4922
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4925
    :cond_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistoryLocal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4926
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 4929
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4931
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 4932
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "timezone"

    if-ge v3, v4, :cond_2

    .line 4933
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    .line 4934
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4935
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v7

    .line 4936
    const-string/jumbo v9, "timestamp"

    invoke-virtual {v6, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4937
    const-string v9, "id"

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4938
    const-string v9, "mac_id"

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getMacid()Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4939
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimezone()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4940
    const-string v5, "datetime"

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v10, Ljava/util/Date;

    const-wide/16 v11, 0x3e8

    mul-long v7, v7, v11

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4941
    const-string v5, "mode"

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getModeServer(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4942
    const-string/jumbo v5, "step"

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4943
    const-string v5, "distance"

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getDistance()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4944
    const-string v5, "calorie"

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4945
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 4947
    :cond_2
    const-string v0, "datalist"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4948
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4951
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadData exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4954
    :goto_2
    new-instance v0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;-><init>(Landroid/content/Context;)V

    .line 4955
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tid:Ljava/lang/String;

    const-string v3, "000001001128"

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->setId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    move-result-object v0

    .line 4956
    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->setUploadParam(Lorg/json/JSONObject;)Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$47;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$47;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 4957
    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->setOnUploadListener(Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;)Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    move-result-object v0

    .line 4974
    invoke-virtual {v0}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadFitness()V

    return-void
.end method


# virtual methods
.method public checkGetDataByDayTask()V
    .locals 4

    .line 2565
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerCheckGetDataByDay:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2566
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerCheckGetDataByDay:Landroid/os/Handler;

    .line 2567
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->runnableResetSyncState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public checkSyncTimeout(J)Z
    .locals 4

    .line 4900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startSyncTime:J

    sub-long/2addr v0, v2

    .line 4901
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSyncTimeout syncDuration = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public findMediaControl(Ljava/lang/String;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 3

    .line 5385
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mNotifyReceiveService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 5386
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 5387
    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 5388
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v2

    :catch_0
    move-exception p1

    .line 5393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "findMediaControl exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentFragment()I
    .locals 1

    .line 2437
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1080
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->currentPosition:I

    return v0
.end method

.method public getDefaultPackage()Ljava/lang/String;
    .locals 3

    .line 5065
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MUSIC_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5066
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5068
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 5069
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 5070
    :cond_0
    const-string v0, "android"

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 3

    .line 2975
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2976
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 2977
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2979
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    .line 1199
    const-string v0, "_data"

    .line 0
    const-string v1, "Exception: "

    const/4 v2, 0x0

    .line 1202
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1203
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1213
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v2

    .line 1210
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 1213
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1215
    :cond_3
    throw v0
.end method

.method public getRunningApp()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5641
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->loadMusicRunningList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusic:Ljava/util/List;

    const/4 v1, 0x0

    .line 5643
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusic:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5644
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->listMusic:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/util/MusicInfo;

    .line 5645
    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/util/MusicInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 5648
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRunningApp running:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5649
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public googleSignin(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1364
    invoke-static {}, Lcom/google/android/gms/fitness/FitnessOptions;->builder()Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 1365
    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->accessActivitySessions(I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 1366
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 1367
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    .line 1368
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    .line 1370
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->build()Lcom/google/android/gms/fitness/FitnessOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    .line 1371
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {p1, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1375
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    const/16 v2, 0x7d0

    .line 1372
    invoke-static {p0, v2, p1, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->requestPermissions(Landroid/app/Activity;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)V

    .line 1377
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_ENABLE_GOOGLE_API"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->insertGoogleFitTask()V

    return-void

    .line 1383
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/Fitness;->getConfigClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/ConfigClient;

    move-result-object p1

    .line 1384
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/ConfigClient;->disableFit()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$13;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$13;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1385
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$12;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$12;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1391
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f0a0594

    .line 2261
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    .line 2262
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    const v0, 0x7f0a040b

    .line 2263
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0a0406

    .line 2266
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2268
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 2280
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnChildScrollUpCallback(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V

    .line 2354
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2356
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$37;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$37;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public insertGoogleFit(Z)V
    .locals 37

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bGoogleApi "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DupMainActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    .line 1427
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1428
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 1429
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1430
    const-string v2, "P_TEMP_STEP"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 1431
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 1433
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v4

    .line 1436
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1437
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    .line 1438
    invoke-virtual {v0, v5}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    const-string v5, "P_TEMP_HEARTRATE"

    .line 1439
    invoke-virtual {v0, v5}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1440
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 1442
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v5

    .line 1445
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1446
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 1447
    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1448
    const-string v6, "P_TEMP_DISTANCE"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1449
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 1451
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v7

    .line 1454
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1455
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    .line 1456
    invoke-virtual {v0, v8}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1457
    const-string v8, "P_TEMP_CALORIE"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1458
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1459
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 1460
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v9

    .line 1462
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1463
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1464
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1466
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    const-string/jumbo v14, "sport_history"

    invoke-virtual {v0, v13, v14, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getSportHistoryNeedSyncGoogleFitCnt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    .line 1471
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    const/16 v15, 0x3e8

    invoke-virtual {v0, v13, v14, v3, v15}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getSportHistoryNeedSyncGoogleFit(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v13

    .line 1477
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v14, v0, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v15, 0x0

    .line 1480
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v16, 0x3b

    if-ge v15, v0, :cond_5

    .line 1482
    :try_start_0
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    .line 1484
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v3

    move-object/from16 v18, v0

    .line 1485
    invoke-virtual/range {v18 .. v18}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    move-object/from16 v25, v13

    const/4 v13, 0x1

    if-ne v3, v13, :cond_0

    if-gtz v0, :cond_0

    .line 1487
    :try_start_1
    const-string v0, "insertGoogleFit steps is 0, cancel pushing"

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1491
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getDistance()I

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    int-to-float v13, v13

    move/from16 v26, v15

    .line 1492
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    int-to-float v15, v15

    move-object/from16 v27, v5

    .line 1493
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getDate()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-object/from16 v28, v9

    .line 1494
    :try_start_4
    new-instance v9, Ljava/text/ParsePosition;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move-object/from16 v29, v7

    const/4 v7, 0x0

    :try_start_5
    invoke-direct {v9, v7}, Ljava/text/ParsePosition;-><init>(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1495
    :try_start_6
    invoke-virtual {v14, v5, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 1496
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v31, v20, v22

    .line 1499
    invoke-virtual/range {v18 .. v18}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getSyncGoogleFitId()Ljava/lang/String;

    move-result-object v7

    .line 1500
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v36, v14

    :try_start_7
    const-string v14, "addDate: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", syncGoogleFitId: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", FIELD_STEPS: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", FIELD_DISTANCE: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", FIELD_CALORIES: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-eqz v7, :cond_2

    .line 1501
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_1

    .line 1520
    :cond_1
    new-instance v3, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1521
    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 1522
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    .line 1523
    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v7, 0x0

    .line 1524
    :try_start_9
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1525
    :try_start_a
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 1526
    invoke-static {v3}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    .line 1528
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v30

    add-long v33, v31, v16

    sget-object v35, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v30 .. v35}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v7

    .line 1529
    sget-object v9, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    .line 1530
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 1531
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertGoogleFit addDate: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", update steps: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1534
    new-instance v3, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1535
    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 1536
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    .line 1537
    invoke-virtual {v3, v6}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    const/4 v7, 0x0

    .line 1538
    :try_start_b
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1539
    :try_start_c
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 1540
    invoke-static {v3}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    .line 1541
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v30

    sget-object v35, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v30 .. v35}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v7

    .line 1542
    sget-object v9, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    .line 1543
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 1544
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    new-instance v3, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1547
    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    .line 1548
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    .line 1549
    invoke-virtual {v3, v8}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    const/4 v7, 0x0

    .line 1550
    :try_start_d
    invoke-virtual {v3, v7}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    .line 1551
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 1552
    invoke-static {v3}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    .line 1553
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v30

    sget-object v35, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v30 .. v35}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v9

    .line 1554
    sget-object v13, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v13

    invoke-virtual {v13, v15}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    .line 1555
    invoke-virtual {v3, v9}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 1556
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-object/from16 v14, v27

    move-object/from16 v13, v28

    move-object/from16 v9, v29

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_2
    :goto_1
    const/4 v7, 0x0

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    .line 1503
    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v30

    add-long v33, v31, v16

    sget-object v35, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v30 .. v35}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 1504
    sget-object v9, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    .line 1505
    invoke-virtual {v4, v3}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 1507
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v30

    sget-object v35, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v30 .. v35}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 1508
    sget-object v9, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-object/from16 v9, v29

    .line 1509
    :try_start_f
    invoke-virtual {v9, v3}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 1511
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v30

    sget-object v35, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v30 .. v35}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 1512
    sget-object v13, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v3, v13}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v13

    invoke-virtual {v13, v15}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    move-object/from16 v13, v28

    .line 1513
    :try_start_10
    invoke-virtual {v13, v3}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v13, v28

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v13, v28

    move-object/from16 v9, v29

    :goto_2
    move-object/from16 v14, v27

    goto/16 :goto_a

    :cond_3
    move-object/from16 v13, v28

    move-object/from16 v9, v29

    const/4 v14, 0x3

    if-ne v3, v14, :cond_4

    .line 1515
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v30

    add-long v33, v31, v16

    sget-object v35, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v30 .. v35}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 1516
    sget-object v14, Lcom/google/android/gms/fitness/data/Field;->FIELD_BPM:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v3, v14}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getHeartrate()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    move-object/from16 v14, v27

    .line 1517
    :try_start_11
    invoke-virtual {v14, v3}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_3
    move-object/from16 v14, v27

    .line 1559
    :goto_4
    sget-object v18, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v19, "sport_history"

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    const/16 v22, 0x1

    move-object/from16 v23, v5

    move/from16 v24, v0

    move-object/from16 v21, v3

    move-object/from16 v20, v5

    invoke-virtual/range {v18 .. v24}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateSportHistoryNeedSyncGoogleFitState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 v36, v14

    :goto_5
    move-object/from16 v14, v27

    move-object/from16 v13, v28

    move-object/from16 v9, v29

    goto :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v36, v14

    :goto_6
    move-object/from16 v14, v27

    move-object/from16 v13, v28

    move-object/from16 v9, v29

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v9, v7

    move-object/from16 v36, v14

    move-object/from16 v14, v27

    move-object/from16 v13, v28

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v13, v9

    move-object/from16 v36, v14

    move-object/from16 v14, v27

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v13, v9

    move-object/from16 v36, v14

    goto :goto_7

    :catch_c
    move-exception v0

    move-object v13, v9

    move-object/from16 v36, v14

    move/from16 v26, v15

    :goto_7
    move-object v14, v5

    goto :goto_8

    :catch_d
    move-exception v0

    move-object/from16 v25, v13

    move-object/from16 v36, v14

    move/from16 v26, v15

    move-object v14, v5

    move-object v13, v9

    :goto_8
    move-object v9, v7

    :goto_9
    const/4 v7, 0x0

    .line 1562
    :goto_a
    const-string v3, "insertGoogleFit error."

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    add-int/lit8 v15, v26, 0x1

    move-object v7, v9

    move-object v9, v13

    move-object v5, v14

    move-object/from16 v13, v25

    move-object/from16 v14, v36

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v14, v5

    move-object v13, v9

    move-object v9, v7

    .line 1577
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1578
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v0

    .line 1579
    invoke-virtual {v0, v4}, Lcom/google/android/gms/fitness/HistoryClient;->insertData(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$15;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$15;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1580
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$14;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$14;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1586
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1594
    :cond_6
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1595
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1596
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update steps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1597
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1598
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1599
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1600
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 1602
    new-instance v3, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->setDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    move-result-object v18

    add-long v21, v19, v16

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->build()Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    move-result-object v2

    .line 1603
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v3

    .line 1604
    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/HistoryClient;->updateData(Lcom/google/android/gms/fitness/request/DataUpdateRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$17;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$17;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1605
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$16;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$16;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1611
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_c

    .line 1620
    :cond_7
    invoke-virtual {v14}, Lcom/google/android/gms/fitness/data/DataSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1621
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v0

    .line 1622
    invoke-virtual {v0, v14}, Lcom/google/android/gms/fitness/HistoryClient;->insertData(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$19;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$19;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1623
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$18;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$18;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1629
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1637
    :cond_8
    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/DataSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1638
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v0

    .line 1639
    invoke-virtual {v0, v9}, Lcom/google/android/gms/fitness/HistoryClient;->insertData(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$21;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$21;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1640
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$20;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$20;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1646
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1654
    :cond_9
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1655
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1656
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1658
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1659
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 1661
    new-instance v3, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->setDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    move-result-object v4

    add-long v7, v5, v16

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->build()Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    move-result-object v2

    .line 1662
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v3

    .line 1663
    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/HistoryClient;->updateData(Lcom/google/android/gms/fitness/request/DataUpdateRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$23;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$23;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1664
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$22;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$22;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1670
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_d

    .line 1679
    :cond_a
    invoke-virtual {v13}, Lcom/google/android/gms/fitness/data/DataSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1680
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v0

    .line 1681
    invoke-virtual {v0, v13}, Lcom/google/android/gms/fitness/HistoryClient;->insertData(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$25;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$25;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1682
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$24;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$24;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1688
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1696
    :cond_b
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1697
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1698
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1699
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1700
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1701
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 1703
    new-instance v3, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->setDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    move-result-object v4

    add-long v7, v5, v16

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->build()Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    move-result-object v2

    .line 1704
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/Fitness;->getHistoryClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/HistoryClient;

    move-result-object v3

    .line 1705
    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/HistoryClient;->updateData(Lcom/google/android/gms/fitness/request/DataUpdateRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$27;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$27;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1706
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$26;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$26;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1712
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_e

    .line 1721
    :cond_c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$28;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$28;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_f
    return-void
.end method

.method public insertGoogleFitTask()V
    .locals 2

    .line 1418
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$InsertGoogleFitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$InsertGoogleFitTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;)V

    const/4 v1, 0x0

    .line 1419
    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$InsertGoogleFitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method synthetic lambda$initView$0$com-jaga-ibraceletplus-jyring-main-DupMainActivity()V
    .locals 2

    .line 2272
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2276
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->autoSync()V

    return-void
.end method

.method synthetic lambda$initView$1$com-jaga-ibraceletplus-jyring-main-DupMainActivity()V
    .locals 4

    .line 2270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$initView$2$com-jaga-ibraceletplus-jyring-main-DupMainActivity(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    .line 2281
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment(Landroidx/viewpager2/widget/ViewPager2;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2283
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0a0401

    .line 2286
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 2289
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$setupTabLayout$3$com-jaga-ibraceletplus-jyring-main-DupMainActivity(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 2455
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->createCustomTabView(I)Landroid/view/View;

    move-result-object p2

    .line 2456
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1739
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1740
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_3

    const/16 p2, 0x401

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 1763
    :cond_0
    const-string/jumbo p1, "url"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1764
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "qrcode scan result = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1767
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/HttpUtil;->getParameter(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1768
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1769
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qrcode key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1771
    const-string v0, "jyname"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 1773
    :cond_1
    const-string v0, "mac"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "find qrcode mac: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->showToast(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1776
    :cond_2
    const-string v0, "jyid"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1746
    sput-boolean p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mResolvingError:Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 982
    const-string v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 983
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0049

    .line 984
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setContentView(I)V

    .line 985
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 986
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/AppMng;->getInstance()Lcom/jaga/ibraceletplus/jyring/AppMng;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->initSdk(Landroid/content/Context;)V

    .line 987
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/AppMng;->getInstance()Lcom/jaga/ibraceletplus/jyring/AppMng;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->addActivity(Landroid/app/Activity;)V

    .line 988
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    if-nez p1, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->init(Landroid/content/Context;)V

    .line 990
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    sput-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 992
    :cond_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bPrivacyConfirm"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 996
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initData()V

    .line 997
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initMedia()V

    .line 998
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initView()V

    .line 999
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setupViewPager()V

    .line 1000
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setupTabLayout()V

    .line 1001
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setupPageChangeListener()V

    .line 1002
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initBluetoothSDK()V

    .line 1003
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initOtherSdk()V

    .line 1004
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initBtBond()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 951
    :try_start_0
    const-string v0, "MainActivity onDestroy"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    const-string v0, "MainActivity is finishing"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_0
    const-string v0, "MainActivity is being destroyed by the system"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 961
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->intentService:Landroid/content/Intent;

    .line 962
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 964
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1

    .line 965
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mServiceCallback:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->unregisterCallback(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;)V

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy exception occured: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 972
    :goto_1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 974
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mVolumeChangeObserver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->unregisterReceiver()V

    .line 975
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    .line 976
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/AppMng;->getInstance()Lcom/jaga/ibraceletplus/jyring/AppMng;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2541
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2542
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2544
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->moveTaskToBack(Z)Z

    return p1

    .line 2547
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2550
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 711
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2014
    const-string v0, "onRequestPermissionResult"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2015
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 2017
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 2020
    const-string p1, "User interaction was cancelled."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2021
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 2022
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2023
    const-string p1, "Permission granted, updates requested, starting location updates"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2024
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    .line 2025
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startLocationUpdates()V

    return-void

    .line 2039
    :cond_1
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$33;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$33;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    const p2, 0x7f130372

    const p3, 0x7f13022a

    invoke-direct {p0, p2, p3, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->showSnackbar(IILandroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 657
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 658
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    .line 660
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "memberid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    .line 661
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMacid()Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "FUNCTION_HIDE_SETTINGMORE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 664
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_OTA_INDICATOR"

    const-string v3, "P_OTA_INDICATOR_DISABLE"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    const-string v2, "P_OTA_INDICATOR_ENABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 667
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const v2, 0x7f0801f3

    if-eqz v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 679
    :cond_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 680
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const v2, 0x7f0801f2

    if-eqz v1, :cond_3

    .line 681
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 685
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 687
    :cond_4
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->intentService:Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 4

    .line 719
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mVolumeChangeObserver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getCurrentMusicVolume()I

    move-result p1

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newMusicVolume = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DupMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mVolumeChangeObserver:Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getCurrentVoiceCallVolume()I

    move-result v0

    .line 739
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v1, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curMusicVolume:I

    if-ne v2, p1, :cond_2

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curVoiceCallVolume:I

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 744
    :cond_2
    :goto_1
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxMusicVolume:I

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->maxVoiceCallVolume:I

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->sendPhoneVolume(IIII)I

    .line 745
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curMusicVolume:I

    .line 746
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->curVoiceCallVolume:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public opMusic(Ljava/lang/String;)V
    .locals 6

    .line 5562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5563
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kugouPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5564
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->neteaseMusicPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5565
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->yuntinMusicPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5566
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->huaweiMusicPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5568
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miuiVideoPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5569
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->melonPlayerPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5570
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ktMusicPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5571
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bugsPlayerPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5573
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5574
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qqMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5575
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qqMusicPadPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5576
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->xiamiMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5577
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->qingtingMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5578
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->lizhiMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5579
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ximalayaMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5580
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kuwoMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5581
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->kuwohdMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5582
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->doubanMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5584
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->jiubangMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5585
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->piMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5586
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->spotifyMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5587
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mixerBoxLiteMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5588
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mixerBoxProMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5589
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->honorMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5590
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->honorMusicPackageName2:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5591
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->yandexMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5592
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->amazonMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5593
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gaanaMusicPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5595
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5596
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->youtubeMusicPackageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5597
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->youtubeMusicPackageName2:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5599
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5600
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miuiMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5601
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->miguMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5602
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tencentRadioMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5603
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->audifyMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5604
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->audiomackMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5605
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->unknownMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5606
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->musicPlayerPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5607
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->ximalayaKidMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5609
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5610
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName2:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5611
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->samsungChnPlayerPackageName3:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5612
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sonyericssonMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5613
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->shaibanPlayerPackageName4:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5614
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->hongmiMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5615
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tidalMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5617
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->oppoMusicPackageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5621
    const-string/jumbo v0, "togglepause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5622
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 5624
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v5, 0x7f

    move-object v0, p0

    .line 5625
    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionMediaButtonSpecialAll(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void

    :cond_0
    const/16 v5, 0x7e

    move-object v0, p0

    .line 5627
    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionMediaButtonSpecialAll(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void

    .line 5628
    :cond_1
    const-string v0, "next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v5, 0x57

    move-object v0, p0

    .line 5629
    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionMediaButtonSpecialAll(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void

    .line 5630
    :cond_2
    const-string v0, "pre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v5, 0x58

    move-object v0, p0

    .line 5631
    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionMediaButtonSpecialAll(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void

    .line 5632
    :cond_3
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v5, 0x56

    move-object v0, p0

    .line 5633
    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionMediaButtonSpecialAll(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    :cond_4
    return-void
.end method

.method public removeCheckGetDataByDayTask()V
    .locals 2

    .line 2571
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerCheckGetDataByDay:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->runnableResetSyncState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2573
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->handlerCheckGetDataByDay:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public requestIgnoreBatteryOptimizations()V
    .locals 3

    const-string v0, "package:"

    .line 1128
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1130
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public saveServiceSyncState(Z)V
    .locals 5

    .line 4906
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bSync:Z

    .line 4907
    const-string v0, "jring.SYNC_PROCESSING"

    if-eqz p1, :cond_0

    .line 4908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startSyncTime:J

    .line 4909
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkGetDataByDayTask()V

    .line 4910
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 4913
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startSyncTime:J

    .line 4914
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->removeCheckGetDataByDayTask()V

    .line 4915
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected sendMessage1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 4440
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 4441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendMessage1 phoneNumber = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4451
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_1

    .line 4452
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 4453
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    .line 4454
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move-object v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    .line 4457
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected sendMessage2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 4463
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 4464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendMessage2 phoneNumber = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4473
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_0

    .line 4474
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    .line 4480
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    move-object v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    .line 4482
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 4494
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 4496
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 4497
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendSMS divideContents size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4499
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 4500
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phoneNumber = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4504
    new-instance v1, Landroid/content/Intent;

    const-string v2, "SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 4505
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendSMSBySystem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4515
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "smsto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4516
    const-string/jumbo p1, "sms_body"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4517
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setMacid(Ljava/lang/String;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    return-void
.end method

.method public setOption()V
    .locals 7

    .line 4752
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4753
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 4754
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 4755
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    goto :goto_0

    .line 4757
    :cond_0
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 v0, 0x16

    .line 4758
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 4759
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    const/16 v0, 0x8

    .line 4760
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 4761
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 4762
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 4763
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 4766
    :goto_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>()V

    .line 4767
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableQuite(Z)V

    .line 4768
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartHour(I)V

    .line 4769
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartMin(I)V

    .line 4770
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndHour(I)V

    .line 4771
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndMin(I)V

    .line 4772
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableVibrate(Z)V

    .line 4773
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableLight(Z)V

    .line 4775
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "Enable_New_Call"

    const-string v5, "false"

    invoke-virtual {v1, v3, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 4777
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableCalling(Z)V

    .line 4779
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "P_SHORTVIDEO_ALWAYS"

    invoke-virtual {v1, v3, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 4781
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableShortVideo(Z)V

    .line 4783
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "WearMode"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4785
    invoke-virtual {v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setWearMode(I)V

    .line 4787
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 4788
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 4787
    const-string v5, "P_SHORTVIDEO_ENABLE"

    invoke-virtual {v3, v5, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    if-nez v1, :cond_4

    .line 4791
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4793
    :cond_4
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_LIGHTDEGREE_CLASS"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    .line 4795
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setLightDegree(I)V

    .line 4798
    new-instance v1, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    .line 4799
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v0, :cond_5

    goto :goto_4

    .line 4803
    :cond_5
    :try_start_0
    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 4804
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4808
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    .line 4806
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public shareBmpByFacebook(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1163
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 1166
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    .line 1167
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p1

    .line 1168
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 1169
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    .line 1170
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p1

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showShareDialog(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 1223
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez p2, :cond_0

    .line 1225
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d0086

    invoke-virtual {p2, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1226
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f140122

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v1, 0x1

    .line 1228
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 1232
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 1234
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mDialogBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1236
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getWindowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    const v0, 0x7f0a025a

    .line 1238
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1239
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0284

    .line 1253
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1254
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0266

    .line 1272
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1273
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0288

    .line 1296
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 1297
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$10;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1322
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 1324
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mDialogBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$11;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$11;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    return-void
.end method

.method public startDiscovery(Ljava/lang/String;)V
    .locals 2

    .line 6100
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->btBondDeviceMac:Ljava/lang/String;

    .line 6101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 6102
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6103
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 6104
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 6105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start class bt discovery to find the device mac: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
