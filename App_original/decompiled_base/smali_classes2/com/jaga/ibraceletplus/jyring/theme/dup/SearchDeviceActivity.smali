.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "SearchDeviceActivity.java"


# instance fields
.field ivDevice:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ea
    .end annotation
.end field

.field tvSearchTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0503
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initView()V
    .locals 6

    .line 44
    const-string v0, "003A"

    .line 0
    const-string v1, "initView deviceCid = "

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 49
    :cond_0
    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 52
    :cond_1
    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 55
    :cond_2
    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getCid()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceDid = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->saveLog(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const v4, 0x7f1303dc

    const v5, 0x7f100025

    if-eqz v1, :cond_3

    const-string v1, "001C"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->tvSearchTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 68
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "005B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->tvSearchTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 72
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "0062"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->tvSearchTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->ivDevice:Landroid/widget/ImageView;

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->tvSearchTips:Landroid/widget/TextView;

    const v1, 0x7f1303db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDeviceImageByType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0055

    .line 32
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->setContentView(I)V

    .line 33
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 35
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->initData()V

    .line 36
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->initView()V

    return-void
.end method

.method public onTvSearchClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0502
        }
    .end annotation

    .line 88
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->sendVibrationSignal(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 91
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
