.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "SleepActivity.java"


# instance fields
.field private alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

.field private alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

.field tvNightEnd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e1
    .end annotation
.end field

.field tvNightStart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e2
    .end annotation
.end field

.field tvNoonEnd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e3
    .end annotation
.end field

.field tvNoonStart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 46
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 84
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p0
.end method

.method private initData()V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->macid:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 52
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    .line 53
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 54
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 55
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 56
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v3, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 58
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 61
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 64
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->macid:Ljava/lang/String;

    const/16 v2, 0x101

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 67
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    .line 68
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 69
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 70
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 71
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1, v3, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 73
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 76
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    const-string v1, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initView()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNoonStart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v2, "%1$02d:%2$02d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNoonEnd:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v5

    aput-object v6, v7, v1

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNightStart:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v5

    aput-object v6, v7, v1

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNightEnd:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

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

    return-void
.end method


# virtual methods
.method OnClickivSync()V
    .locals 12
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 109
    :try_start_0
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v4

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v6

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 110
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v8

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v9

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v10

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v11

    .line 109
    invoke-interface/range {v3 .. v11}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setSleepTime(IIIIIIII)I

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V
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
            0x7f0a04e1
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 181
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 182
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 181
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method OnClicktvAlarmStartTime()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e2
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 164
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNight:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 165
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 164
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method OnClicktvNoonEnd()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e3
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 147
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 148
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 147
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method OnClicktvNoonStart()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e4
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 130
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v3

    const v1, 0x7f13051c

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->alarmNoon:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 131
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v7

    const v1, 0x7f13051d

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x3b

    .line 130
    invoke-virtual/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0058

    .line 33
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->initData()V

    .line 36
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 41
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
