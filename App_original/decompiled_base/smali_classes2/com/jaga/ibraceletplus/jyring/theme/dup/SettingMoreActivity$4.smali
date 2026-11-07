.class Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;
.super Ljava/lang/Object;
.source "SettingMoreActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->onTvTimeClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 1

    .line 215
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->tvTime:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->saTime:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "P_ENABLE_TIME_24"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHourFormat(Landroid/content/Context;I)I

    move-result p1

    .line 219
    :try_start_0
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p2, :cond_1

    .line 220
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "FUNCTION_TIME"

    const-string v0, "false"

    invoke-virtual {p2, p3, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 222
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHourFormat(I)I

    return-void

    .line 224
    :cond_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHourFormat(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
