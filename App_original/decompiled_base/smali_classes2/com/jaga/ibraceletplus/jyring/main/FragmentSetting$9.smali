.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClicktvLow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1694
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1697
    :try_start_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p1, :cond_0

    .line 1699
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceMode(I)I

    .line 1700
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMacid()Ljava/lang/String;

    move-result-object p1

    .line 1701
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteSportHistory(Ljava/lang/String;)V

    .line 1702
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteHealthHistory(Ljava/lang/String;)V

    .line 1704
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_BATTERY"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1705
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_BATTERY_STATE"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1706
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_STEP"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1707
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_STEP_TIMESTAMP"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1708
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_STEP_TIME"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1709
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_DISTANCE"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1710
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_CALORIE"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1711
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_TEMP_HEARTRATE"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1712
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "WearMode"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1713
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "P_GOAL_STEP"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1714
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string p2, "DistanceUnit"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 1717
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
