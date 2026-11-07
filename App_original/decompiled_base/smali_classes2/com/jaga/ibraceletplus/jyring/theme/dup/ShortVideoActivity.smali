.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "ShortVideoActivity.java"


# instance fields
.field private bInitShortVideoAlwaysChanged:Z

.field private bInitShortVideoEnableChanged:Z

.field private bShortVideoAlways:Z

.field private bShortVideoEnable:Z

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

.field sbShortVideoAlways:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038f
    .end annotation
.end field

.field sbShortVideoEnable:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0390
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bInitShortVideoEnableChanged:Z

    .line 53
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bShortVideoEnable:Z

    .line 54
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bInitShortVideoAlwaysChanged:Z

    .line 55
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bShortVideoAlways:Z

    .line 73
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initData()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v1, 0x0

    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "P_SHORTVIDEO_ENABLE"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bShortVideoEnable:Z

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_SHORTVIDEO_ALWAYS"

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bShortVideoAlways:Z

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v1, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 173
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bShortVideoEnable:Z

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bInitShortVideoEnableChanged:Z

    .line 174
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bShortVideoAlways:Z

    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bInitShortVideoAlwaysChanged:Z

    .line 175
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->sbShortVideoEnable:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->sbShortVideoAlways:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bShortVideoAlways:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method OnCheckedShortVideoAlways(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a038f
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 158
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bInitShortVideoAlwaysChanged:Z

    if-nez p1, :cond_0

    .line 159
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1300a4

    .line 160
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;)V

    const v1, 0x7f13016b

    .line 161
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_SHORTVIDEO_ALWAYS"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bInitShortVideoAlwaysChanged:Z

    return-void
.end method

.method OnCheckedShortVideoEnable(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a0390
        }
    .end annotation

    .line 109
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_SHORTVIDEO_ENABLE"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->bInitShortVideoEnableChanged:Z

    .line 112
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->getMacid()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v1, p1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 v0, 0x16

    .line 120
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 121
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    const/16 v0, 0x8

    .line 122
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 123
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    .line 124
    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 125
    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 127
    :goto_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>()V

    .line 128
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableQuite(Z)V

    .line 129
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartHour(I)V

    .line 130
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteStartMin(I)V

    .line 131
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndHour(I)V

    .line 132
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setQuiteEndMin(I)V

    .line 133
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableVibrate(Z)V

    .line 134
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 p1, 0x1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableLight(Z)V

    .line 136
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Enable_New_Call"

    const-string v2, "false"

    invoke-virtual {p1, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 138
    invoke-virtual {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableCalling(Z)V

    .line 140
    invoke-virtual {v0, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->setEnableShortVideo(Z)V

    .line 142
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    .line 144
    :try_start_0
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 145
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 147
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method OnClickivSync()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0057

    .line 39
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 42
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->initData()V

    .line 43
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 48
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
