.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "AlarmDrinkActivity.java"


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

    .line 37
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 205
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$6;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p0
.end method

.method private initData()V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->macid:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 60
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 61
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const v2, 0x7f130226

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setName(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 63
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 64
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 65
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 66
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    .line 68
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 71
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    const-string v1, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initView()V
    .locals 8

    .line 175
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->etName:Landroid/widget/EditText;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->etName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->sbEnable:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

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

    .line 196
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->tvSnooze:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v2

    aput-object v5, v7, v3

    const-string v4, "%1$02d:%2$02d"

    invoke-static {v1, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v7, v6, v3

    invoke-static {v1, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->tvPeriod:Landroid/widget/TextView;

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

    .line 85
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    return-void
.end method

.method OnClickivSync()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v4

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 164
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-interface/range {v1 .. v8}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setReminder(IIIIIII)I

    return-void

    .line 166
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v0

    mul-int/lit8 v2, v0, 0x3c

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v4

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 167
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 166
    invoke-interface/range {v1 .. v8}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setReminder(IIIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 171
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

    .line 124
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 133
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 134
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 133
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

    .line 107
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 116
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 117
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 116
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

    .line 141
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnMultiListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;)V

    .line 150
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v1

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object v1

    .line 151
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

    .line 92
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 100
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    const v2, 0x7f13051d

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xf0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 48
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->initData()V

    .line 51
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 41
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
