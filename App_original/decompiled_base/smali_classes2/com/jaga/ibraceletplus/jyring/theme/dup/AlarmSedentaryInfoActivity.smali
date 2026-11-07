.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "AlarmSedentaryInfoActivity.java"


# instance fields
.field private alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

.field etName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0170
    .end annotation
.end field

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

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

.field tvSnooze:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0512
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 204
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p0
.end method

.method private initData()V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->macid:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 59
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 60
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const v2, 0x7f1303fe

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setName(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 62
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 63
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 64
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 65
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    .line 67
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 70
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    const-string v1, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initView()V
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->etName:Landroid/widget/EditText;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->etName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->sbEnable:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

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
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->tvSnooze:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

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

    .line 198
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

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

    .line 200
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->tvPeriod:Landroid/widget/TextView;

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekText([Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 84
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    return-void
.end method

.method OnClickivSync()V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v4

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 163
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v6

    const/4 v2, 0x0

    .line 162
    invoke-interface/range {v1 .. v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setIdleTime(IIIII)I

    return-void

    .line 165
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v0

    mul-int/lit8 v2, v0, 0x3c

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v4

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 166
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v6

    .line 165
    invoke-interface/range {v1 .. v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setIdleTime(IIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 170
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

    .line 123
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 132
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 133
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 132
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

    .line 106
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 115
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 116
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 115
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method OnClicktvPeriod()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ee
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnMultiListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;)V

    .line 149
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v1

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object v1

    .line 150
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showMulti([Ljava/lang/String;[Z)V

    return-void
.end method

.method OnClicktvSnooze()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0512
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 99
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    const v2, 0x7f13051d

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xf0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    .line 47
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->initData()V

    .line 50
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 40
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
