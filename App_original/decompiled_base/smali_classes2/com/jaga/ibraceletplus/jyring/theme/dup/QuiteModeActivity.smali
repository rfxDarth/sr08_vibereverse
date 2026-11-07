.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "QuiteModeActivity.java"


# instance fields
.field private alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

.field private device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

.field dndListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field lightListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field receiver:Landroid/content/BroadcastReceiver;

.field rlVibrate:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036e
    .end annotation
.end field

.field sbDnd:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0389
    .end annotation
.end field

.field sbLight:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038d
    .end annotation
.end field

.field sbVibrate:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0391
    .end annotation
.end field

.field tvAlarmEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0452
    .end annotation
.end field

.field tvAlarmStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0454
    .end annotation
.end field

.field vibrateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 117
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 132
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    .line 167
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$4;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->dndListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 182
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$5;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->vibrateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 194
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$6;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->lightListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->initView()V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->macid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 138
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 139
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 140
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 141
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    .line 142
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 143
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 144
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 145
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 146
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 149
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    const-string v1, "jringNOTIFY_QUITE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "jring.DEVICE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initView()V
    .locals 7

    .line 207
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_VIBRATE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->rlVibrate:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbDnd:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->dndListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbVibrate:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->vibrateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbLight:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->lightListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbDnd:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 216
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbVibrate:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbLight:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    const-string v1, "%1$02d:%2$02d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method OnClickivSync()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableQuite(Z)V

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartHour(I)V

    .line 93
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartMin(I)V

    .line 94
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndHour(I)V

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndMin(I)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableVibrate(Z)V

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableLight(Z)V

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Enable_New_Call"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableCalling(Z)V

    .line 104
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_SHORTVIDEO_ALWAYS"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableShortVideo(Z)V

    .line 108
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->device:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    .line 110
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 111
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method OnClicktvAlarmEndTime()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0452
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 81
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 82
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 81
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method OnClicktvAlarmStartTime()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0454
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 64
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 65
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 64
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0050

    .line 39
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->initData()V

    .line 42
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 47
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
