.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "SettingMoreActivity.java"


# instance fields
.field private dp:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

.field ivOtaRedPoint:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01fe
    .end annotation
.end field

.field llFindDevice:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025d
    .end annotation
.end field

.field llSavingPower:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0270
    .end annotation
.end field

.field mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02cd
    .end annotation
.end field

.field mrlTime:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02ce
    .end annotation
.end field

.field rlWechat:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0371
    .end annotation
.end field

.field sLost:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037d
    .end annotation
.end field

.field saTime:[Ljava/lang/String;

.field sbHand:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038b
    .end annotation
.end field

.field private timeLast:J

.field tvOtaTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04eb
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->dp:Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->saTime:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->timeLast:J

    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f130415

    .line 96
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f130413

    .line 97
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f130414

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->saTime:[Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_ENABLE_TIME_24"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->tvTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->saTime:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_TIME"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->mrlTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "P_ENABLE_LOST"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->macid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 108
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sLost:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "FUNCTION_LOST"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setVisibility(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "FUNCTION_WECHAT"

    const/4 v4, 0x0

    .line 115
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v0, v3, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 116
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->rlWechat:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v3, "FUNCTION_HIDE_FINDDEVICE"

    invoke-virtual {v0, v3, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 119
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->llFindDevice:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v3, "FUNCTION_HIDE_QUIETMODE"

    invoke-virtual {v0, v3, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 121
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->llSavingPower:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_OTA_INDICATOR"

    const-string v2, "P_OTA_INDICATOR_DISABLE"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "P_OTA_INDICATOR_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->ivOtaRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->ivOtaRedPoint:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method OnClicktvFind()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04a7
        }
    .end annotation

    .line 135
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->sendVibrationSignal(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method OnClicktvLow()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ca
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130167

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method OnClicktvOta()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ea
        }
    .end annotation

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvQuite()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04f6
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvReset()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04fb
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13016e

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$3;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method OnClicktvRestart()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04fc
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13016f

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$2;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method OnClicktvSleep()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a050b
        }
    .end annotation

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvTest()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0533
        }
    .end annotation

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvWechat()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a054d
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0056

    .line 52
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 55
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->initData()V

    .line 56
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->initView()V

    return-void
.end method

.method public onSLostCheckedChanged()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a037d
        }
    .end annotation

    const-string v0, "P_ENABLE_LOST"

    .line 235
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sLost:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->macid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAntiLost(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onTvTimeClicked()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0535
        }
    .end annotation

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->timeLast:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->timeLast:J

    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->saTime:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->saTime:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 211
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->saTime:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showList([Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    return-void
.end method
