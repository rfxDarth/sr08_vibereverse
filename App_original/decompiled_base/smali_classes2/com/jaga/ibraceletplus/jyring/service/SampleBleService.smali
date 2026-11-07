.class public Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;
.super Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;
.source "SampleBleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$CallStateListener;,
        Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;
    }
.end annotation


# static fields
.field private static final strSmsReceived:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private NLServerReceiver:Landroid/content/BroadcastReceiver;

.field private TAG:Ljava/lang/String;

.field private bEnableDingding:Z

.field private bEnableFacebook:Z

.field private bEnableGmail:Z

.field private bEnableInstagram:Z

.field private bEnableKakaotalk:Z

.field private bEnableLine:Z

.field private bEnableLinkedin:Z

.field private bEnableMmsSamsung:Z

.field private bEnableMobileQQ:Z

.field private bEnableNateon:Z

.field private bEnablePinterest:Z

.field private bEnableSkype:Z

.field private bEnableSms:Z

.field private bEnableSnapchat:Z

.field private bEnableTelegram:Z

.field private bEnableTumblr:Z

.field private bEnableTwitter:Z

.field private bEnableViber:Z

.field private bEnableVkontakte:Z

.field private bEnableWangwang:Z

.field private bEnableWechat:Z

.field private bEnableWeibo:Z

.field private bEnableWhatsapp:Z

.field private bMusic:Z

.field private bNewCallEnable:Z

.field private bNewNotify:Z

.field private bNotify:Z

.field private bStartInterval:Z

.field private callStateListener:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$CallStateListener;

.field private callStateListenerRegistered:Z

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private curUUID:Ljava/lang/String;

.field private ecgSession2:Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;

.field protected gattServiceIntent:Landroid/content/Intent;

.field private iRemoteService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

.field private lastNumber:Ljava/lang/String;

.field private listener:Landroid/telephony/PhoneStateListener;

.field private mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private mHandler:Landroid/os/Handler;

.field private mRecordRunnable:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;

.field private macid:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field protected notificationManager:Landroid/app/NotificationManager;

.field protected notifyId:I

.field private notifyLast:J

.field private phoneState:I

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private recordStartTime:J

.field private sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

.field private startIntervalDuration:I

.field private thread:Ljava/lang/Thread;

.field private timeInterval:I

.field private timeLost:I

.field private timeTest:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 50
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->thread:Ljava/lang/Thread;

    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->timestamp:J

    .line 58
    const-string v3, ""

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->curUUID:Ljava/lang/String;

    .line 59
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;

    invoke-direct {v4}, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;-><init>()V

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->ecgSession2:Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;

    .line 61
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->gattServiceIntent:Landroid/content/Intent;

    .line 151
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x400

    .line 152
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyId:I

    const/4 v4, 0x0

    .line 197
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewCallEnable:Z

    .line 198
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSms:Z

    .line 199
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWechat:Z

    .line 200
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableMobileQQ:Z

    .line 201
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableFacebook:Z

    .line 202
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTwitter:Z

    .line 203
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSkype:Z

    .line 204
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableLine:Z

    .line 205
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWhatsapp:Z

    .line 206
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableKakaotalk:Z

    .line 208
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNotify:Z

    .line 210
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableDingding:Z

    .line 211
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWangwang:Z

    .line 212
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableInstagram:Z

    .line 213
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableLinkedin:Z

    .line 214
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSnapchat:Z

    .line 215
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWeibo:Z

    .line 216
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTumblr:Z

    .line 217
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableNateon:Z

    .line 218
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableMmsSamsung:Z

    .line 219
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableViber:Z

    .line 220
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTelegram:Z

    .line 222
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewNotify:Z

    .line 223
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableVkontakte:Z

    .line 224
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnablePinterest:Z

    .line 225
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableGmail:Z

    .line 229
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bMusic:Z

    .line 347
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->callStateListenerRegistered:Z

    .line 349
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_0

    .line 350
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$1;

    invoke-direct {v5, p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$1;-><init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 356
    :goto_0
    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->callStateListener:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$CallStateListener;

    .line 358
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v6, :cond_1

    .line 359
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$2;

    invoke-direct {v5, p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$2;-><init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 365
    :goto_1
    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 368
    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->lastNumber:Ljava/lang/String;

    .line 369
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->phoneState:I

    .line 370
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;

    invoke-direct {v5, p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;-><init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->listener:Landroid/telephony/PhoneStateListener;

    .line 411
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->iRemoteService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    .line 447
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyLast:J

    .line 491
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;

    invoke-direct {v5, p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;-><init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->NLServerReceiver:Landroid/content/BroadcastReceiver;

    .line 795
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mHandler:Landroid/os/Handler;

    .line 797
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mRecordRunnable:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;

    .line 798
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->recordStartTime:J

    .line 800
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->timeLost:I

    const v0, 0xc350

    .line 801
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startIntervalDuration:I

    const/16 v0, 0xfa

    const/16 v1, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    const v2, 0xc737

    add-int/2addr v0, v2

    .line 802
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->timeTest:I

    .line 803
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->timeInterval:I

    .line 804
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bStartInterval:Z

    .line 822
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$5;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->timeTest:I

    int-to-long v7, v0

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->timeInterval:I

    int-to-long v9, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$5;-><init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JJ)V

    iput-object v5, v6, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->countDownTimer:Landroid/os/CountDownTimer;

    .line 946
    iput-object v3, v6, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mid:Ljava/lang/String;

    .line 947
    iput-object v3, v6, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->macid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableFacebook:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTwitter:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSkype:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableLine:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWhatsapp:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableKakaotalk:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNotify:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableDingding:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWangwang:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableInstagram:Z

    return p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewCallEnable:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableLinkedin:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSnapchat:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWeibo:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTumblr:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableNateon:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableViber:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTelegram:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewNotify:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableVkontakte:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnablePinterest:Z

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->lastNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableGmail:Z

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->lastNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->loadData()V

    return-void
.end method

.method static synthetic access$3300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startForeground()V

    return-void
.end method

.method static synthetic access$3500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bStartInterval:Z

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->callRemoteSendPhoneState()V

    return-void
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->phoneState:I

    return p0
.end method

.method static synthetic access$502(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->phoneState:I

    return p1
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->callRemoteSendNotification(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSms:Z

    return p0
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWechat:Z

    return p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableMobileQQ:Z

    return p0
.end method

.method private callRemoteSendNotification(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 450
    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object p4, p5

    .line 452
    :cond_0
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->iRemoteService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p5, :cond_1

    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyLast:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0, p3, p4, p6}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setNotify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 454
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyLast:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private callRemoteSendNotificationSamsung(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 463
    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object p4, p5

    .line 465
    :cond_0
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->iRemoteService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p5, :cond_1

    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyLast:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0, p3, p4, p6}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setNotify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 467
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyLast:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 470
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private callRemoteSendPhoneState()V
    .locals 2

    .line 476
    :try_start_0
    const-string v0, "callRemoteSendPhoneState"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->iRemoteService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 478
    invoke-interface {v0, v1, v1, v1, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->sendPhoneCallState(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private loadData()V
    .locals 4

    .line 232
    new-instance v0, Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/grandcentrix/tray/AppPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    .line 234
    const-string v1, "Enable_New_Call"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewCallEnable:Z

    .line 235
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "Enable_New_Sms"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSms:Z

    .line 236
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_WECHAT"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWechat:Z

    .line 237
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_MOBILEQQ"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableMobileQQ:Z

    .line 238
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_FACEBOOK"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableFacebook:Z

    .line 239
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_TWITTER"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTwitter:Z

    .line 240
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_SKYPE"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSkype:Z

    .line 241
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_LINE"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableLine:Z

    .line 242
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_WHATSAPP"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWhatsapp:Z

    .line 243
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_NEW_KAKAOTALK"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableKakaotalk:Z

    .line 245
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "FUNCTION_NOTIFY"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNotify:Z

    .line 247
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_DINGDING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableDingding:Z

    .line 248
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WANGWANG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWangwang:Z

    .line 249
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_INSTAGRAM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableInstagram:Z

    .line 250
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_LINKEDIN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableLinkedin:Z

    .line 251
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_SNAPCHAT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableSnapchat:Z

    .line 252
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WEIBO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableWeibo:Z

    .line 253
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TUMBLR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTumblr:Z

    .line 254
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_NATEON:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableNateon:Z

    .line 255
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_MMS_SAMSUNG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableMmsSamsung:Z

    .line 256
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VIBER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableViber:Z

    .line 257
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TELEGRAM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableTelegram:Z

    .line 259
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "FUNCTION_NEW_NOTIFY"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewNotify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNotify:Z

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VKONTAKTE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableVkontakte:Z

    .line 265
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_PINTEREST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnablePinterest:Z

    .line 266
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_GMAIL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bEnableGmail:Z

    .line 268
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "memberid"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mid:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "macid"

    invoke-virtual {v0, v1, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->macid:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "P_ENABLE_MUSIC"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bMusic:Z

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction loadData bNewCallEnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewCallEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , bNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , bNewNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    return-void
.end method

.method private logSave(Ljava/lang/String;)V
    .locals 5

    .line 486
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-notify.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/JRing/log/"

    invoke-static {v0, p1, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyCheckPermission(Ljava/lang/String;)V
    .locals 2

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_CHECK_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    const-string v1, "permission"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private registerCallStateListener()V
    .locals 0

    return-void
.end method

.method private startForeground()V
    .locals 6

    .line 154
    const-string/jumbo v0, "startForeground"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 157
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    .line 158
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 159
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notificationManager:Landroid/app/NotificationManager;

    .line 160
    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 161
    const-string/jumbo v1, "startForeground create notification channel"

    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 164
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    .line 165
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 166
    const-string/jumbo v2, "startForeground create pending intent"

    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v3, "P_LAST_TIME_SYNC"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startForeground sync timestamp: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 179
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p0, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f100036

    .line 180
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 181
    invoke-virtual {v0, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f13018b

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130509

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 185
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 186
    const-string/jumbo v1, "startForeground create notification builder"

    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 187
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x62

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 190
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyId:I

    const/16 v2, 0x10

    invoke-static {p0, v1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;ILandroid/app/Notification;I)V

    return-void

    .line 193
    :cond_1
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyId:I

    invoke-virtual {p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private toggleNotificationListenerService()V
    .locals 4

    .line 439
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 440
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/service/NLService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 443
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/service/NLService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public getMacid()Ljava/lang/String;
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->macid:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public listenCall()V
    .locals 5

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listenCall in service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewCallEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->bNewCallEnable:Z

    if-eqz v0, :cond_2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listenCall in service ver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/16 v2, 0x20

    const-string v3, "phone"

    if-lt v0, v1, :cond_1

    .line 280
    const-string v0, "android.permission.READ_PHONE_STATE"

    const/4 v1, 0x0

    const-string v4, ""

    invoke-static {p0, v4, v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "listenCall in service has permission: android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 285
    :try_start_0
    const-string v1, "listenCall in service has been called."

    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->listener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listenCall in service exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    const-string v0, "listenCall in service need permission: android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    return-void

    .line 299
    :cond_1
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 302
    :try_start_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->listener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listenCall 2 in service exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 414
    const-string v0, "onBind"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 415
    invoke-super {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 416
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->iRemoteService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 117
    invoke-super {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->onCreate()V

    .line 118
    const-string v0, "SampleBleService onCreate"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->loadData()V

    .line 120
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startForeground()V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "jringACTION_NOTIFY_NLS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "jringACTION_NOTIFY_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "jringACTION_ECG_FUNCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "jringECG_DATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "jringFUNCTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "jringWALK_DATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "jringACTION_NOTIFY_BLE_CUR_SYNC_TIMESTAMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "jringACTION_NOTIFY_ENABLE_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->NLServerReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->NLServerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->listenCall()V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->gattServiceIntent:Landroid/content/Intent;

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v1, "cmd"

    const-string/jumbo v2, "test"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->gattServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->gattServiceIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 422
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 423
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->NLServerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 424
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->thread:Ljava/lang/Thread;

    .line 428
    :cond_0
    invoke-super {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->TAG:Ljava/lang/String;

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startForeground()V

    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 433
    const-string v0, "onUnbind"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->logSave(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->gattServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 435
    invoke-super {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected sendBroadcastWithPackage(Landroid/content/Intent;)V
    .locals 1

    .line 807
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public setMacid(Ljava/lang/String;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->macid:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->mid:Ljava/lang/String;

    return-void
.end method
