.class Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;
.super Ljava/lang/Object;
.source "SimpleAdapterAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

.field final synthetic val$alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

.field final synthetic val$sbEnable:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;Landroid/widget/Switch;Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->val$sbEnable:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->val$alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->val$sbEnable:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->val$alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 93
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->access$100(Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->val$alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->access$000(Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;->val$alarm:Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;)Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    new-instance v1, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;-><init>(Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setOption(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    .line 99
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAlarm()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
