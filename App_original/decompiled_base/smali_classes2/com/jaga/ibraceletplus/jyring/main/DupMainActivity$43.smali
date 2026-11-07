.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;
.super Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;
.source "DupMainActivity.java"


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

    .line 2994
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthDeviceResult(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3085
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAuthDeviceResult : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onAuthSdkResult(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3096
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAuthSdkResult : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCharacteristicChanged(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCharacteristicWrite(Ljava/lang/String;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onConnectStateChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3007
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectStateChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3009
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v1, "cur_ble_state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringBLESTATECHANGED_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3011
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3012
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3013
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    .line 3015
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMacid()Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 3017
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2802(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;J)J

    .line 3019
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 3020
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "P_TEMP_BATTERY_STATE"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3021
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P_ENABLE_LOST"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {p1, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3024
    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->playSystem(I)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 3028
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 3029
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "call getReqNotificationPermission when ble connected"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3040
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3041
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3002(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z

    .line 3042
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onDeviceConnectedWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDeviceTestCmd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onEditDeviceDialCustom()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3911
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "onEditDeviceDialCustom"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onGetAdvSensorOfflineData(JIIIII)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 4363
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 4364
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v7, v7, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-string v6, "BP_UPDATETIME"

    invoke-virtual {v7, v6, v8, v9}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;J)Z

    int-to-float v6, v4

    const/high16 v7, 0x41200000    # 10.0f

    div-float v12, v6, v7

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 4376
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v13

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v14, v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v15, v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v2, v2

    const/16 v16, 0x4

    move-wide/from16 v19, p1

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v13 .. v20}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_0
    if-lez v3, :cond_1

    .line 4379
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v17

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v3, v3

    const/16 v22, 0x0

    const/16 v20, 0x11

    move-wide/from16 v23, p1

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v21, v3

    invoke-virtual/range {v17 .. v24}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_1
    if-lez v4, :cond_2

    .line 4382
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v8

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/16 v11, 0x12

    const/4 v13, 0x0

    move-wide/from16 v14, p1

    invoke-virtual/range {v8 .. v15}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_2
    if-lez v5, :cond_3

    .line 4385
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v3

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v7, v5

    const/4 v8, 0x0

    const/16 v6, 0x13

    move-wide/from16 v9, p1

    move-object v5, v1

    invoke-virtual/range {v3 .. v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_3
    return-void
.end method

.method public onGetAdvSensorOfflineDataEnd(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetAiAction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetAiCommandType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetAiState(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetBandFunction(I[Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3390
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "onGetBandFunction"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3392
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 3393
    aget-boolean v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3395
    :cond_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_TIME"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3396
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_LOST"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3397
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_BLOOD"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3398
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x1c

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_BLOOD_ONLY"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3399
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x1d

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_BLOOD_OXYGEN"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3400
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x1e

    aget-boolean v2, p2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FUNCTION_BLOOD_BOTH"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3401
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/4 v2, 0x6

    aget-boolean v3, p2, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUNCTION_HEART"

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3402
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    aget-boolean v2, p2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3403
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v2, 0x18

    aget-boolean v2, p2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FUNCTION_SPORT"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3404
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/4 v2, 0x2

    aget-boolean v2, p2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FUNCTION_WEATHER"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3405
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v2, 0x9

    aget-boolean v2, p2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FUNCTION_ECG"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3406
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v2, 0x14

    aget-boolean v3, p2, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUNCTION_REMINDER"

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3408
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v3, 0x12

    aget-boolean v4, p2, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FUNCTION_HEART_AUTO_INTERVAL"

    invoke-virtual {v0, v5, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3409
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    aget-boolean v3, p2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3411
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v3, 0x13

    aget-boolean v3, p2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUNCTION_NOTIFY"

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3412
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v3, 0x13

    aget-boolean v3, p2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3414
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    aget-boolean v3, p2, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUNCTION_WECHAT"

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3415
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v3, 0x15

    aget-boolean v3, p2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUNCTION_ECG_XT"

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3416
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v3, 0x16

    aget-boolean v3, p2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUNCTION_BLOOD_ADJUST"

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3417
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v3, 0xa

    aget-boolean v3, p2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FUNCTION_TEMPERATURE"

    invoke-virtual {v0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3418
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    aget-boolean v3, p2, v2

    aget-boolean v1, p2, v1

    and-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "FUNCTION_REMINDER_NATEON"

    invoke-virtual {v0, v3, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3419
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x19

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "FUNCTION_DIAL"

    invoke-virtual {v0, v3, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3420
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x1a

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "FUNCTION_WALLPAPER"

    invoke-virtual {v0, v3, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3421
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x1f

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "FUNCTION_DIAL_CUSTOM"

    invoke-virtual {v0, v3, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3422
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x20

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "FUNCTION_FEMALE_REMINDER"

    invoke-virtual {v0, v3, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3423
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    aget-boolean v1, p2, v2

    const/16 v2, 0x21

    aget-boolean v2, p2, v2

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_REMINDER_VIBER_TELEGRAM"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3424
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x22

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_CLASSIC_BT"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3425
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const/16 v1, 0x23

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FUNCTION_VIBRATE"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3431
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v1, "FUNCTION_MORE_CONTACT"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    .line 3432
    aget-boolean v1, p2, v1

    const/16 v2, 0x28

    aget-boolean v2, p2, v2

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 3433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3434
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3438
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteContactInfoData()J

    .line 3439
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 3440
    const-string v0, "lastCrc"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v2, "P_LATEST_CONTACT_CRC"

    invoke-virtual {v0, v2, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3444
    :cond_1
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v0, "FUNCTION_MORE_CONTACT"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3445
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x29

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_NEW_DISTANCE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3446
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x2a

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_CUSTOM_NOTIFY"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3447
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x2b

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_NEW_DISTANCE3"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3448
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x2c

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SMS_AUTO_RSP"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3449
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x2d

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_ECARD"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3452
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x2f

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_NEW_NOTIFY"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3453
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x2f

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_NEW_NOTIFY"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3455
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x30

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_CHATGPT"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3456
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x30

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_CHATGPT"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3457
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x31

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_CALL"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3458
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x31

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_CALL"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3459
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x32

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_SMS"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3460
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x32

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_SMS"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3461
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x33

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_NOTIFICATION"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3462
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x33

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_NOTIFICATION"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3463
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x34

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_ALARM"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3464
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x34

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_ALARM"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3465
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x35

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_SEDENTARY"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3466
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x35

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_SEDENTARY"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3467
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x36

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_FINDDEVICE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3468
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x36

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_FINDDEVICE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3469
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x37

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_QUIETMODE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3470
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x37

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_QUIETMODE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3472
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x38

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SPORT_FROM_APP"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3473
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x38

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SPORT_FROM_APP"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3474
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x39

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_SETTINGMORE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3475
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x39

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HIDE_SETTINGMORE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3477
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x3b

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_BATTERY_LOW_FULL"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3478
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x3b

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_BATTERY_LOW_FULL"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3480
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x3c

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_BATTERY_DATA"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3481
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x3c

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_BATTERY_DATA"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3483
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x3d

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_SPORT_STEP"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3484
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x3d

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_SPORT_STEP"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3486
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x3e

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_MEASUREMENT"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3487
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x3e

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_MEASUREMENT"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3489
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x3f

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_SHORTVIDEO"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3490
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x3f

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_SHORTVIDEO"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3491
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_SHOW_SHORTVIDEO : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3f

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3493
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x41

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_BP_OXYGEN_MODE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3494
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x41

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_BP_OXYGEN_MODE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3495
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_SHOW_BP_OXYGEN_MODE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x41

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3497
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x44

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_WIFI"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3498
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x44

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_WIFI"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3499
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_SHOW_WIFI : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x44

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3501
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x45

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_WEARMODE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3502
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x45

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_WEARMODE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3503
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_SHOW_SWITCHHAND : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x45

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3505
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x46

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_LIGHTDEGREE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3506
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x46

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_LIGHTDEGREE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3507
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_SHOW_LIGHTDEGREE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x46

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3509
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x4e

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_CONNECT_WATCH"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3510
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x4e

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_CONNECT_WATCH"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3511
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_CONNECT_WATCH : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x4e

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3513
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x4f

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_CONNECT_BRACELET"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3514
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x4f

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_CONNECT_BRACELET"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3515
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_CONNECT_BRACELET : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x4f

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3517
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x50

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_AUTO_LIGHTSCREEN"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3518
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x50

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_SHOW_AUTO_LIGHTSCREEN"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3519
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_SHOW_AUTO_LIGHTSCREEN : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x50

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3521
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x51

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_OXYGEN_OFFLINE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3522
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x51

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_OXYGEN_OFFLINE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3523
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_HAS_OXYGEN_OFFLINE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x51

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3525
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x52

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_AITRANSFER"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3526
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x52

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_AITRANSFER"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3527
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_HAS_AITRANSFER : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x52

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3529
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x53

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_PRESSURE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3530
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x53

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_PRESSURE"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3531
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_HAS_PRESSURE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x53

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3533
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x54

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_BLOODSUGAR"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3534
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x54

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_BLOODSUGAR"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3535
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_HAS_BLOODSUGAR : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x54

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3537
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x55

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_DEVICE_SN"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3538
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x55

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_DEVICE_SN"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3539
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_HAS_DEVICE_SN : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x55

    aget-boolean v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3541
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const/16 v0, 0x56

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_HRV"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3542
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const/16 v0, 0x56

    aget-boolean v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUNCTION_HAS_HRV"

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3543
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetBandFunction FUNCTION_HAS_HRV : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x56

    aget-boolean p2, p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3545
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string p2, "onGetBandFunction ACTION_NOTIFY_FUNCTION_CHANGED"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3546
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jringFUNCTION_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3547
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3548
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    return-void
.end method

.method public onGetChatgptAction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetCurSportData(IJIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3129
    iget-object p7, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance p8, Ljava/lang/StringBuilder;

    const-string p9, "onGetCurSportData : "

    invoke-direct {p8, p9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p9, ", "

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    const/4 p9, 0x0

    invoke-static {p7, p8, p9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3130
    iget-object p7, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p7, p7, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_0

    if-nez p1, :cond_0

    .line 3131
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p7, Ljava/lang/StringBuilder;

    const-string p8, "P_TEMP_STEP_TIMESTAMP"

    invoke-direct {p7, p8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p8, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p8, p8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p7, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3132
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "P_TEMP_STEP"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3133
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "P_TEMP_DISTANCE"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3134
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "P_TEMP_CALORIE"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3135
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jringWALK_DATA_BROADCAST"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3136
    const-string/jumbo p2, "step"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3137
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3138
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onGetDataByDay(IJII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p2

    .line 3248
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3251
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3252
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3253
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGetDataByDay : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_DATE_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3255
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3256
    const-string/jumbo p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3257
    const-string/jumbo p1, "step"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3258
    const-string p1, "heart"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3259
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3261
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->removeCheckGetDataByDayTask()V

    return-void
.end method

.method public onGetDataByDayEnd(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_DATA_BY_DAY_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3267
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3268
    const-string/jumbo p1, "timestamp"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3269
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onGetDeviceAction(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3321
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetDeviceAction : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3325
    const-string p1, "alarm.mp3"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->playShortMax(Ljava/lang/String;F)V

    .line 3326
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3327
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3702(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3328
    const-string p1, "DupMainActivity"

    const-string v0, "playShortMax new handle"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3331
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringDEVICE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3334
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3335
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 3337
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->endCall(Landroid/content/Context;)V

    return-void

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 3339
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v0, "FUNCTION_WEATHER"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3342
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z

    return-void

    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    .line 3345
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->answerRinging(Landroid/content/Context;)V

    return-void

    :cond_5
    const/16 v1, 0x10

    if-ne p1, v1, :cond_6

    .line 3348
    const-string/jumbo p1, "togglepause"

    .line 3349
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->opMusic(Ljava/lang/String;)V

    return-void

    :cond_6
    const/16 v1, 0x20

    if-ne p1, v1, :cond_7

    .line 3352
    const-string p1, "next"

    .line 3353
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->opMusic(Ljava/lang/String;)V

    return-void

    :cond_7
    const/16 v1, 0x40

    if-ne p1, v1, :cond_8

    .line 3356
    const-string p1, "pre"

    .line 3357
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->opMusic(Ljava/lang/String;)V

    return-void

    :cond_8
    const/16 v1, 0x41

    if-ne p1, v1, :cond_9

    .line 3360
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, ""

    const-string v1, "android.permission.CAMERA"

    invoke-static {p1, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3361
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3362
    const-string v0, "notifyBle"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3363
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_9
    const/16 v1, 0x42

    if-ne p1, v1, :cond_a

    .line 3367
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringCLOSE_CAMERA_BROADCAST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3368
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    :cond_a
    const/16 v1, 0x43

    if-ne p1, v1, :cond_b

    .line 3371
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_SYNC_TIME"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3372
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    :cond_b
    const/16 v1, 0x44

    const/4 v2, 0x3

    .line 3373
    const-string v3, "audio"

    if-ne p1, v1, :cond_c

    .line 3375
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 3376
    invoke-virtual {p1, v2, v0, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :cond_c
    const/16 v1, 0x45

    if-ne p1, v1, :cond_d

    .line 3381
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v1, -0x1

    .line 3382
    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_d
    return-void
.end method

.method public onGetDeviceBatery(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3190
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMacid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    .line 3191
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P_TEMP_BATTERY"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3192
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P_TEMP_BATTERY_STATE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringBATTERYDATA_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3194
    const-string v1, "battery"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3195
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3196
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3198
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z

    move-result v0

    const-string v1, "batteryState"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p2, v2, :cond_0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 3199
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3402(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z

    .line 3200
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 3201
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3202
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3203
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3204
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3206
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    const/16 p2, 0xa

    if-gt p1, p2, :cond_1

    .line 3207
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3602(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z

    .line 3208
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 3209
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    .line 3210
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3211
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3212
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onGetDeviceCode([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3746
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/AsciiUtils;->decodeFirst18Ascii([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3749
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "code"

    invoke-virtual {v1, v2, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3752
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_GET_DEVICE_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3753
    const-string v1, "bytes"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3754
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onGetDeviceDial(Ljava/lang/String;Ljava/lang/String;IIIIIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3880
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetDeviceDial macid:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3881
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FUNCTION_DIAL_PRODUCTTYPE-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3882
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FUNCTION_DIAL_PRODUCTID-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3883
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "FUNCTION_DIAL_ID-"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1, p2, p8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3885
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p8, "WALLPAPER_WATCH_COLORMODE-"

    invoke-direct {p2, p8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p8, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p8, p8, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3886
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "WALLPAPER_WATCH_SHAPE-"

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p6, p6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3887
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "WALLPAPER_WATCH_WIDTH-"

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p6, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p6, p6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3888
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WALLPAPER_WATCH_HEIGHT-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3889
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WALLPAPER_WATCH_UNITWIDTH-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3890
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WALLPAPER_WATCH_REVIEWWIDTH-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3891
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WALLPAPER_WATCH_REVIEWHEIGHT-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3893
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WALLPAPER_WATCH_IS_CUSTOM-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3895
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringDEVICE_DIALINFO_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3896
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ACTION_NOTIFY_DEVICE_DIALINFO_CHANGED init macid:  "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onGetDeviceDialCustom(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3916
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetDeviceDialCustom "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3918
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_TIME_POS-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3919
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WALLPAPER_WATCH_TIME_ABOVE_CONTENT-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3920
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WALLPAPER_WATCH_TIME_BELOW_CONTENT-"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3921
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WALLPAPER_WATCH_FONT_COLOR_TYPE-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onGetDeviceFileState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetDeviceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3218
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetDeviceInfo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    if-nez p5, :cond_0

    .line 3220
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string p2, "onGetDeviceInfo : Check CRC ERROR"

    invoke-static {p1, p2, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3221
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_CHECK_CRC"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 3223
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "V"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3224
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    iput-object v0, p5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 3225
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p5, p5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {p5, p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setNickname(Ljava/lang/String;)V

    .line 3226
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p5, p5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {p5, p3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setCid(Ljava/lang/String;)V

    .line 3227
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p5, p5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {p5, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setDid(Ljava/lang/String;)V

    .line 3228
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {p5, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertDeviceInfo(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    .line 3229
    new-instance p5, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-direct {p5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3230
    const-string/jumbo v0, "version"

    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3231
    const-string p1, "address"

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3232
    const-string p1, "cid"

    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3233
    const-string v0, "did"

    invoke-virtual {p5, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3234
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1, p5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3236
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p5, p5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "macid"

    invoke-virtual {p5, v1, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3237
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p5, p5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, p3}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3238
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onGetDeviceRssi(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetDeviceState(ZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetDeviceState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4101
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    .line 4103
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4104
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    .line 4105
    invoke-virtual {v0, v4, v5}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 4106
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 4107
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    const/16 v2, 0x16

    .line 4108
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 4109
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    const/16 v2, 0x8

    .line 4110
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 4111
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    const/4 v2, 0x1

    .line 4112
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 4113
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 4114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4115
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J

    goto :goto_0

    .line 4117
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 4120
    :goto_0
    invoke-virtual {v0, p3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 4121
    invoke-virtual {v0, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    .line 4122
    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    .line 4123
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I

    .line 4125
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jring.DEVICE_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4126
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onGetDeviceTime(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3091
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetDeviceTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onGetEcgHistory(JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3784
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetEcgHistory : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onGetEcgHistoryData(I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetEcgStartEnd(IIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3797
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetEcgStartEnd : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onGetEcgValue(I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringECG_DATA_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3777
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "values"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3778
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3779
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    return-void
.end method

.method public onGetEqInfo2(III[I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onGetFactoryTestData([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetGSensorData(I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetMultipleSportData(ILjava/lang/String;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 3627
    const-string/jumbo v2, "timestamp"

    const-string v3, "onGetMultipleSportData exception: "

    .line 0
    const-string v4, "[debug: sleep] onGetMultipleSportData getDataByDay : syncDay = "

    .line 3627
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v0, v9, v6

    const/4 v11, 0x2

    aput-object v7, v9, v11

    const/4 v7, 0x3

    aput-object v8, v9, v7

    const-string v7, "onGetMultipleSportData %s %s %s %s"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3628
    new-instance v5, Landroid/content/Intent;

    const-string v7, "jringACTION_NOTIFY_BLE_SYNC_DATE_TIME"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    const-wide/16 v12, 0x0

    .line 3631
    :try_start_0
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    div-long v12, v14, v7

    .line 3632
    invoke-virtual {v5, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3634
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v0, p3, 0x64

    .line 3637
    const-string/jumbo v9, "type"

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3638
    const-string/jumbo v14, "step"

    move/from16 v15, p4

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3639
    const-string v14, "heart"

    invoke-virtual {v5, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3640
    iget-object v14, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v14, v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    move/from16 v5, p1

    if-ne v5, v11, :cond_1

    .line 3643
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v5

    const-string v11, "-1"

    const-string v14, "P_SYNC_HISTORY_DAY"

    invoke-virtual {v5, v14, v11}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3644
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    neg-int v15, v5

    add-int/2addr v15, v6

    invoke-static {v11, v15}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    div-long v7, v15, v7

    .line 3645
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "onSyncEnd : "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6, v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3648
    new-instance v6, Landroid/content/Intent;

    const-string v7, "jringACTION_NOTIFY_BLE_SYNC_DATA_END"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3649
    invoke-virtual {v6, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3650
    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3651
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    add-int/lit8 v5, v5, -0x1

    .line 3655
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "syncDay "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3656
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "[debug: sleep] onGetMultipleSportData : syncDay = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    if-ltz v5, :cond_0

    .line 3658
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3660
    :try_start_1
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1

    .line 3661
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3662
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDataByDay(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3665
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_1

    .line 3668
    :cond_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jringACTION_START_HISTORY_END"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-wide v3, v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncEnd:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3671
    new-instance v0, Landroid/content/Intent;

    const-string v2, "jringACTION_NOTIFY_BLE_SYNC_TOTAL_DATA_END"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3672
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3673
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v2, "[debug: sleep] onGetMultipleSportData ACTION_NOTIFY_BLE_SYNC_TOTAL_DATA_END"

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3675
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 3676
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 3677
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$2;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void
.end method

.method public onGetOfflineSpeechRecognitionMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetOtaInfo(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3718
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetOtaInfo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3719
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;ZLjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetOtaUpdate(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetOxygenOfflineData(JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4344
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4345
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4346
    invoke-virtual {p3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    return-void
.end method

.method public onGetOxygenOfflineDataEnd(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4352
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4353
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4354
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    return-void
.end method

.method public onGetPhoneVolume()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4029
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getCurrentMusicVolume()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4502(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I

    .line 4030
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curMusicVolume = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DupMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getMaxMusicVolume()I

    move-result v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4702(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I

    .line 4032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "maxMusicVolume = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getCurrentVoiceCallVolume()I

    move-result v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4802(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I

    .line 4035
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "curVoiceCallVolume = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/service/VolumeChangeObserver;->getMaxVoiceCallVolume()I

    move-result v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4902(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I

    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "maxVoiceCallVolume = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    .line 4040
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->sendPhoneVolume(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 4043
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGetPhoneVolume exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onGetRawData(IIII[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetScreenLightTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetSenserData(IJII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3144
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetSenserData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p5, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    if-lez p4, :cond_1

    .line 3146
    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    .line 3147
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string p5, "HR_UPDATETIME"

    invoke-virtual {v0, p5, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;J)Z

    if-gtz p4, :cond_0

    goto :goto_0

    .line 3152
    :cond_0
    new-instance p5, Landroid/content/Intent;

    const-string v0, "jringSENSORDATA_BROADCAST"

    invoke-direct {p5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3153
    const-string/jumbo v0, "type"

    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3154
    const-string p1, "data"

    invoke-virtual {p5, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3155
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, p5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3156
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v4, p4

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_1
    :goto_0
    return-void
.end method

.method public onGetSportSteps(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SPORTS_STEPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4241
    const-string/jumbo v1, "steps"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4242
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onGetTemperatureData(II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3274
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetTemperatureData : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 3278
    :cond_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v3

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v7, v0, v1

    int-to-float v0, p2

    div-float v8, v0, v1

    .line 3279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    div-long v9, v0, v9

    const/16 v6, 0x10

    .line 3278
    invoke-virtual/range {v3 .. v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    .line 3280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringTEMPERATURE_DATA_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3281
    const-string/jumbo v1, "surfaceTemp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3282
    const-string p1, "bodyTemp"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3283
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3285
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->removeCheckGetDataByDayTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGetTouchMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetWifiSsid(IIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetWifiSsidCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetWifiState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetWorshipInfo(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onGetWorshipTimesData(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotifyAiConnectionMethod(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotifyAppId(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4024
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyAppId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onNotifyBindedInfo(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4049
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyBindedInfo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 p2, 0x6

    .line 4050
    const-string v2, "jringACTION_NOTIFY_UNBOND_ACK"

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    const/4 v3, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 4082
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string p2, "onNotifyBindedInfo : bonded confirm"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 4074
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string p2, "onNotifyBindedInfo : disconnect device"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4076
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 4078
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4079
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 4066
    :cond_2
    :try_start_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p1, :cond_5

    .line 4067
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v3, v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setBindedInfo(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4070
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNotifyBindedInfo BOND_ACTION_ACK exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4085
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string p2, "onNotifyBindedInfo : unbond device ack"

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4088
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 4090
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4091
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    :cond_4
    if-nez p2, :cond_5

    .line 4054
    :try_start_1
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p1, :cond_5

    .line 4055
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setBindedInfo(III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 4058
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNotifyBindedInfo BOND_STATE_NO exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onNotifyClassicBtInfo(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3937
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyClassicBtInfo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3938
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, ""

    invoke-static {p4, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4402(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3939
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p4, p4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p4, p4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {p4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 3940
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p4, p4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {p4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object p4

    .line 3941
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "P_DEVICE_BT_MAC"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getMacString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 p4, 0x1

    if-ne p1, p4, :cond_3

    .line 3948
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 3949
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    .line 3950
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3951
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3953
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3956
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "device bonded already"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eq p2, p4, :cond_3

    .line 3964
    const-string p1, "(.{2})"

    .line 3965
    const-string p2, "$1:"

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3966
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p4

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3967
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "device mac: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3968
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 3979
    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_CLASSIC_BT_CREATE_BOND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3980
    const-string p3, "device"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3981
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onNotifyClassicBtName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3931
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyClassicBtName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3932
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4402(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onNotifyContactCrc(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "setContactCrc : "

    .line 3994
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNotifyContactCrc : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4000
    :try_start_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    const-string v2, "P_LATEST_CONTACT_CRC"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 4001
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 4002
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4003
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4004
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p1, :cond_1

    .line 4005
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setContactCrc(Ljava/lang/String;)I

    .line 4006
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryContactInfos()Ljava/util/ArrayList;

    move-result-object p1

    .line 4008
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4010
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    .line 4011
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4013
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;

    invoke-direct {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;-><init>(Ljava/util/ArrayList;)V

    .line 4014
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 4018
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyContactCrc exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onNotifyDeviceSystemStateInfo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotifyDeviceWifiApState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotifyDialJsonContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotifyECardNeedUpdate([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4132
    :try_start_0
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->byte2int([B)I

    move-result p1

    .line 4133
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryECardInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 4135
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 4139
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    shr-int v5, p1, v3

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    .line 4143
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4144
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4147
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4148
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;

    invoke-direct {p1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;-><init>(Ljava/util/ArrayList;)V

    .line 4149
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_2

    .line 4150
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setECardInfoContent(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 4154
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyECardNeedUpdate exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onNotifyFtpStateInfo(ILjava/lang/String;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotifyNewMediaInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotifySmsRspNeedUpdate([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4161
    :try_start_0
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->byte2int([B)I

    move-result p1

    .line 4162
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySmsRspInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 4164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4168
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    shr-int v5, p1, v3

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    .line 4172
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4173
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4176
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4177
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;

    invoke-direct {p1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;-><init>(Ljava/util/ArrayList;)V

    .line 4178
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_2

    .line 4179
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setSmsRspInfoContent(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 4183
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifySmsRspNeedUpdate exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onNotifySmsRspSend(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifySmsRspSend id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", phoneNum = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onOpenRawDataNotificationState(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReadCurrentSportData(ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveSensorData(IIIIIIII)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 3573
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v18, v10

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v19, v11

    const/4 v11, 0x0

    aput-object v18, v10, v11

    const/16 v18, 0x1

    aput-object v19, v10, v18

    const/16 v18, 0x2

    aput-object v12, v10, v18

    const/4 v12, 0x3

    aput-object v13, v10, v12

    const/4 v12, 0x4

    aput-object v14, v10, v12

    const/4 v12, 0x5

    aput-object v15, v10, v12

    const/4 v12, 0x6

    aput-object v16, v10, v12

    const/4 v12, 0x7

    aput-object v17, v10, v12

    const-string v12, "onReceiveSensorData : %s %s %s %s %s"

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 3576
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 3577
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v10, v10, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const-string v9, "BP_UPDATETIME"

    invoke-virtual {v10, v9, v11, v12}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;J)Z

    .line 3579
    new-instance v9, Landroid/content/Intent;

    const-string v10, "jringBLOOD_DATA_BROADCAST"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3580
    const-string/jumbo v10, "systolic"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3581
    const-string v10, "diastolic"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3582
    const-string v10, "oxygen"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3583
    const-string v10, "fatigue"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3584
    const-string/jumbo v10, "stress"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    int-to-float v10, v7

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    .line 3586
    const-string/jumbo v11, "sugar"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 3587
    const-string v11, "hrv"

    invoke-virtual {v9, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3588
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v11, v9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 3590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    div-long v21, v11, v13

    if-lez v1, :cond_0

    .line 3593
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v15

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v9, v9, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v11, v11, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v1, v1

    const/16 v20, 0x0

    const/16 v18, 0x1

    move/from16 v19, v1

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    invoke-virtual/range {v15 .. v22}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_0
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 3596
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v15

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v9, v9, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v2, v2

    int-to-float v3, v3

    const/16 v18, 0x4

    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v17, v9

    invoke-virtual/range {v15 .. v22}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_1
    if-lez v4, :cond_2

    .line 3599
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v15

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v3, v4

    const/16 v20, 0x0

    const/16 v18, 0xf

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v19, v3

    invoke-virtual/range {v15 .. v22}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_2
    if-lez v5, :cond_3

    .line 3602
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v15

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v3, v5

    const/16 v20, 0x0

    const/16 v18, 0xd

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v19, v3

    invoke-virtual/range {v15 .. v22}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_3
    if-lez v6, :cond_4

    .line 3605
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v15

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v3, v6

    const/16 v20, 0x0

    const/16 v18, 0x11

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v19, v3

    invoke-virtual/range {v15 .. v22}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_4
    if-lez v7, :cond_5

    .line 3608
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v15

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    const/16 v18, 0x12

    const/16 v20, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v19, v10

    invoke-virtual/range {v15 .. v22}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_5
    if-lez v8, :cond_6

    .line 3611
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->macid:Ljava/lang/String;

    int-to-float v4, v8

    const/4 v5, 0x0

    const/16 v6, 0x13

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p5, v4

    move-wide/from16 p7, v21

    const/16 p4, 0x13

    const/16 p6, 0x0

    invoke-virtual/range {p1 .. p8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    :cond_6
    return-void
.end method

.method public onReceiveSensorOxygenData(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onRecvDeviceVoiceCommandConfirm(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onScanCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3060
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScanCallback : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    if-eqz p9, :cond_1

    .line 3063
    const-string v0, "F5FE"

    invoke-virtual {p9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p9

    if-nez p9, :cond_0

    goto :goto_0

    .line 3066
    :cond_0
    new-instance p9, Landroid/content/Intent;

    const-string v0, "jringSCANDEVICEDATA_BROADCAST"

    invoke-direct {p9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3067
    const-string v0, "device_name"

    invoke-virtual {p9, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3068
    const-string v0, "device_mac_address"

    invoke-virtual {p9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3069
    const-string p2, "device_rssi"

    invoke-virtual {p9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3070
    const-string p2, "device_ver"

    invoke-virtual {p9, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3071
    const-string p2, "device_cid"

    invoke-virtual {p9, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3072
    const-string p2, "device_did"

    invoke-virtual {p9, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3073
    const-string p2, "device_bindflag"

    invoke-virtual {p9, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3074
    const-string p2, "device_bindstate"

    invoke-virtual {p9, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 3075
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3076
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, p9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSendVibrationSignal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3162
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSendVibrationSignal : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3163
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13017a

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSendWeather(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3558
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSendWeather : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSensorStateChange(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3699
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v2, "onSensorStateChange : %s %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3700
    const-string/jumbo v0, "state"

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 3701
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jringSENSORDATA_BROADCAST"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3702
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3703
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    .line 3705
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jringBLOOD_DATA_BROADCAST"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3707
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onSetAlarm(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3303
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetAlarm : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3304
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13017a

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3305
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3306
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSetAntiLost(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3563
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetAntiLost : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetBPAdjust(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3856
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetBpAdjust : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3857
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_BLE_SET_BPADJUST_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3858
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSetBloodOxygenMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSetBloodPressureMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3568
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetBloodPressureMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetDeviceCode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3739
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetDeviceCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetDeviceDialState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3901
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "onSetDeviceDialState"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetDeviceHeartRateArea(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSetDeviceInfo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetDeviceInfo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3108
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13017a

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3109
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringNOTIFY_QUITE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSetDeviceMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3311
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetDeviceMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3312
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v1, 0x7f13017a

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3314
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3315
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onSetDeviceName(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSetDeviceTime(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetDeviceTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetDeviceWallpaperState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3906
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "onSetDeviceWallpaperState"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetEcgMode(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3769
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetEcgMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetEqInfo2(III[I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onSetFemaleReminder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3926
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "onSetFemaleReminder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetGoalStep(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3689
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetGoalStep : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetHourFormat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3115
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetHourFormat : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetIdleTime(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3173
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetIdleTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3174
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13017a

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3175
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3176
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSetLanguage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3553
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetLanguage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetNotify(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3290
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetNotify : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetPhontMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3168
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetPhontMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetReminder(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3843
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetReminder : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3844
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13017a

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3845
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3846
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSetReminderText(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3851
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetReminderText : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetSleepTime(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3181
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetSleepTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3182
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13017a

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3183
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3184
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSetTemperatureMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3863
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetTemperatureMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_BLE_SET_TEMPERATURE_MODE_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3865
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3866
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSetUserInfo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetUserInfo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v1, 0x7f13017a

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_BLE_SET_PERSONAL_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3123
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3124
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onTemperatureModeChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3871
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTemperatureModeChange : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_BLE_SET_TEMPERATURE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3873
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3874
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public setAutoHeartMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3295
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAutoHeartMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3296
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13017a

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 3297
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3298
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method
