.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2676
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 2679
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "onServiceConnected"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 2680
    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    move-result-object p1

    sput-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    .line 2682
    :try_start_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2685
    :cond_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const-string p2, "/JRing/log/"

    const-string v0, "bluetooth.log"

    const/4 v2, 0x1

    invoke-interface {p1, v2, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->openSDKLog(ZLjava/lang/String;Ljava/lang/String;)I

    .line 2686
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->registerCallback(Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;)V

    .line 2688
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p1

    .line 2689
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    .line 2690
    :cond_1
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p2

    const-string v0, "cur_ble_state"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2693
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    if-nez v1, :cond_2

    .line 2694
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->connectBt(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 2697
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 2703
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "onServiceDisconnected"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 2704
    sput-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    .line 2705
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$41;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2802(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;J)J

    return-void
.end method
