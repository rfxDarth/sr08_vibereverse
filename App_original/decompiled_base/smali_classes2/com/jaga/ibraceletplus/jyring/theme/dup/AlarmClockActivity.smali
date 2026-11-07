.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "AlarmClockActivity.java"


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

.field lvAlarmDaily:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028e
    .end annotation
.end field

.field private mAdapterAlarm:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->alAlarm:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->alAlarm:Ljava/util/ArrayList;

    return-object p0
.end method

.method private initData()V
    .locals 7

    .line 42
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->alAlarm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->alAlarm:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->macid:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos2(ILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->alAlarm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 46
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    int-to-long v5, v0

    .line 47
    invoke-virtual {v2, v5, v6}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    const v5, 0x7f1303fc

    .line 48
    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 50
    invoke-virtual {v2, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 v5, 0x9

    .line 51
    invoke-virtual {v2, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setHour(I)V

    .line 52
    invoke-virtual {v2, v4}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setMinute(I)V

    const/16 v5, 0x1f

    .line 53
    invoke-virtual {v2, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    .line 54
    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 55
    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 56
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    .line 57
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->alAlarm:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .line 66
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    const v1, 0x7f0d00a9

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->alAlarm:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->mAdapterAlarm:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    .line 67
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->setWeek([Ljava/lang/String;Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->mAdapterAlarm:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->setbInit(Z)V

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->lvAlarmDaily:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->mAdapterAlarm:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->mAdapterAlarm:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->setbInit(Z)V

    .line 72
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->lvAlarmDaily:Landroid/widget/ListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 28
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->initData()V

    .line 31
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->initView()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    .line 37
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->initData()V

    .line 38
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->mAdapterAlarm:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->notifyDataSetChanged()V

    return-void
.end method
