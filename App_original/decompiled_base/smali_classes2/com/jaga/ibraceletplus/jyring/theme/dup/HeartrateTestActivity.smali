.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "HeartrateTestActivity.java"


# instance fields
.field private alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

.field rlPeriod:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036a
    .end annotation
.end field

.field sbEnable:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038a
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

.field tvPeriod:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ee
    .end annotation
.end field

.field tvPeriodName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ef
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a053c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 90
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p0
.end method

.method private initData()V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->macid:Ljava/lang/String;

    const/16 v2, 0x102

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 71
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    .line 72
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v4, 0x17

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 73
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 74
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 75
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 76
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 77
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 78
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 80
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 83
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    const-string v1, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initView()V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvPeriodName:Landroid/widget/TextView;

    const v1, 0x7f1303fd

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f13051d

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v2, "%s(%s)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->sbEnable:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object v4, v6, v1

    const-string v2, "%1$02d:%2$02d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    aput-object v6, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvPeriod:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "FUNCTION_HEART_AUTO_INTERVAL"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->rlPeriod:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->updateOfflineOxygenUI()V

    return-void
.end method

.method private updateOfflineOxygenUI()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_HAS_OXYGEN_OFFLINE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v0, 0x7f130411

    goto :goto_0

    :cond_0
    const v0, 0x7f13040f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method OnCheckedChangedsbEnable(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a038a
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    return-void
.end method

.method OnClickivSync()V
    .locals 11
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 110
    :try_start_0
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v6

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 111
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v7

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v8

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v9

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v10

    .line 110
    invoke-interface/range {v3 .. v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAutoHeartMode(ZIIIIII)I
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

    .line 148
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 157
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 158
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 157
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

    .line 130
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 139
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 140
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 139
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0044

    .line 46
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->setContentView(I)V

    .line 47
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->initData()V

    .line 50
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 55
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onViewClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ee
        }
    .end annotation

    .line 181
    const-string v0, "45"

    const-string v1, "60"

    const-string v2, "15"

    const-string v3, "30"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 190
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showList([Ljava/lang/String;)V

    return-void
.end method
