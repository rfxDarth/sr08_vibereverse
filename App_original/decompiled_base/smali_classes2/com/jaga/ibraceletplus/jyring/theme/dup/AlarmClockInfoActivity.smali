.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "AlarmClockInfoActivity.java"


# instance fields
.field private alAlarm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

.field etName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0170
    .end annotation
.end field

.field private id:I

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

.field sSingle:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0380
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

.field tvSnoozeTimes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0513
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->id:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->type:I

    .line 58
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alAlarm:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p0
.end method

.method private initData()V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->type:I

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->macid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos2(ILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alAlarm:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 64
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->type:I

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 65
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 66
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setHour(I)V

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setMinute(I)V

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 70
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    .line 71
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alAlarm:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alAlarm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 74
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->id:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alAlarm:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alAlarm:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->etName:Landroid/widget/EditText;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->etName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->tvSnooze:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->tvSnoozeTimes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->sSingle:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

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

    .line 203
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object v4, v5, v3

    const-string v1, "%1$02d:%2$02d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->tvPeriod:Landroid/widget/TextView;

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekText([Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    const-string v1, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method OnCheckedChangedsSingle(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a0380
        }
    .end annotation

    .line 153
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    return-void
.end method

.method OnClickivSync()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 162
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;)Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    new-instance v2, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 169
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAlarm()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 172
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method OnClickttvSnoozeTimes()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0513
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 128
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method

.method OnClicktvAlarmStartTime()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0454
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 97
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getHour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 98
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getMinute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 97
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

    .line 136
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnMultiListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;)V

    .line 145
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v1

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object v1

    .line 146
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

    .line 105
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 113
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 50
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->id:I

    .line 53
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->initData()V

    .line 54
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 41
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
