.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "BpAdjustActivity.java"


# instance fields
.field protected bChange:Z

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

.field tvBpAdjustDbp:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046b
    .end annotation
.end field

.field tvBpAdjustSbp:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->bChange:Z

    .line 53
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initData()V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    const-string v1, "jringACTION_NOTIFY_BLE_SET_BPADJUST_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "120"

    invoke-virtual {v0, v1, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "80"

    invoke-virtual {v1, v2, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->tvBpAdjustSbp:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "%1$s mmhg"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->tvBpAdjustDbp:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method OnClickivSync()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->startRotate(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "120"

    invoke-virtual {v0, v1, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "80"

    invoke-virtual {v1, v2, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v2, v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setBPAdjust(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method OnClicktvBpAdjustDbp()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a046b
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "80"

    invoke-virtual {v0, v1, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    const/16 v2, 0xc7

    .line 143
    const-string v3, "mmhg"

    const/16 v4, 0x1e

    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method

.method OnClicktvBpAdjustSbp()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a046c
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "120"

    invoke-virtual {v0, v1, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$2;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    const/16 v2, 0xf9

    .line 112
    const-string v3, "mmhg"

    const/16 v4, 0x3c

    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    .line 34
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->setContentView(I)V

    .line 35
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 37
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->initData()V

    .line 38
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 43
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
