.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;
.super Landroid/content/BroadcastReceiver;
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

    .line 5719
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string/jumbo v2, "set appId after setDeviceTime : "

    .line 5722
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/4 v7, 0x4

    const-string v10, "jringACTION_NOTIFY_CLASSIC_BT_NEED_CONNECT"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "jringACTION_NOTIFY_DEVICE_OTA_ENABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "jringACTION_RESET_MUSIC_VOLUME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "jringACTION_NOTIFY_CLASSIC_BT_CREATE_BOND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "jringACTION_NOTIFY_DEVICE_OTA_DISABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "jringACTION_NOTIFY_CLASSIC_BT_RETRY_BOND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    goto :goto_1

    :sswitch_8
    const-string v4, "jringACTION_INCOMING_PHONE_NUM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_9
    const-string v4, "jringFUNCTION_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_a
    const-string v4, "jringACTION_CHECK_PERMISSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_b
    const-string v4, "jringACTION_NOTIFY_PACKAGE_ON_BAR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_c
    const-string v4, "jringACTION_NOTIFY_SYNC_TIME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_d
    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_f
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    :goto_1
    const-string v4, "FUNCTION_HIDE_SETTINGMORE"

    const-string v14, "android.bluetooth.device.extra.DEVICE"

    const/16 p1, 0x3

    const/4 v15, 0x2

    const-wide/16 v8, 0x3e8

    const/16 v16, 0x2

    const-string v15, "false"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    .line 5853
    :pswitch_0
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v3, "bond state changed..."

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5854
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 5855
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5856
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 5857
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    .line 5858
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v12

    aput-object v3, v7, v11

    aput-object v9, v7, v16

    aput-object v10, v7, p1

    const-string v0, "device[%s][%s] bond new state = %d, last state = %d"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5860
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v0, :cond_10

    .line 5861
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string/jumbo v2, "service not available."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 5866
    :cond_10
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5867
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v3, "device is disconnected."

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5871
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_11
    if-ne v4, v5, :cond_13

    .line 5877
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v3, "device bond success..."

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5878
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v3, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    invoke-static {v0, v3, v5, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5879
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v3, "connectA2dpAndHeadSet headset."

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5881
    :cond_12
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v3, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v5

    invoke-static {v0, v3, v5, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5882
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v2, "connectA2dpAndHeadSet a2dp."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_13
    if-ne v4, v6, :cond_14

    .line 5885
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v2, "device bonding ..."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_2

    .line 5887
    :cond_14
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v0

    if-eq v0, v4, :cond_15

    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    if-lez v0, :cond_15

    .line 5888
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v12

    const-string v3, "device bond canceled ... left time = %d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5889
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    sub-int/2addr v3, v11

    iput v3, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    .line 5890
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;)V

    .line 5893
    :cond_15
    :goto_2
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5702(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I

    goto/16 :goto_5

    .line 5833
    :pswitch_1
    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 5834
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 5835
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_FOUND : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5836
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5837
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "device match : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5838
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->boundDeviceAPI(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 5839
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "create bound device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    if-nez v0, :cond_1d

    .line 5841
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 5959
    :pswitch_2
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, v4, v15}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5960
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 5961
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    const v3, 0x7f0801f3

    if-nez v2, :cond_16

    .line 5962
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_16
    if-eqz v0, :cond_17

    .line 5966
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 5968
    :cond_17
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 5921
    :pswitch_3
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->resetVolume()V

    return-void

    .line 5824
    :pswitch_4
    const-string v2, "device"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 5826
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    if-lez v2, :cond_1d

    .line 5827
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v3, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v12

    const-string v3, "create bond left time = %d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5828
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v3, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    sub-int/2addr v3, v11

    iput v3, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    .line 5829
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2, v0, v12}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;I)V

    return-void

    .line 5974
    :pswitch_5
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, v4, v15}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5975
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 5976
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    const v3, 0x7f0801f2

    if-nez v2, :cond_18

    .line 5977
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_18
    if-eqz v0, :cond_19

    .line 5981
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 5983
    :cond_19
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$6000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 5847
    :pswitch_6
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string/jumbo v2, "starting scan..."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 5814
    :pswitch_7
    const-string v2, "deviceMac"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5815
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5816
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    if-lez v2, :cond_1d

    .line 5817
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v3, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v12

    const-string/jumbo v3, "retry bond left time = %d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5818
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget v3, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    sub-int/2addr v3, v11

    iput v3, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    .line 5819
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2, v0, v12}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;I)V

    return-void

    .line 5902
    :pswitch_8
    const-string v2, "incomingNumber"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5903
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    const-string v3, "P_LATEST_INCOMING_PHONE_NUM"

    invoke-virtual {v2, v3, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 5749
    :pswitch_9
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    iput-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 5751
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v2, "FUNCTION_DIAL"

    invoke-virtual {v0, v2, v15}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    .line 5756
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v4, "DIALMARKET_EXPIRE_TIMESTAMP"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5757
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v6, "DIALMARKET_JSON"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1b

    .line 5758
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_3

    .line 5762
    :cond_1a
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 5763
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5764
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5765
    const-string v0, "isLocal"

    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5766
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5767
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 5759
    :cond_1b
    :goto_3
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5770
    :cond_1c
    :goto_4
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v3, "FUNCTION_SHOW_BATTERY_LOW_FULL"

    invoke-virtual {v2, v3, v15}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3302(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z

    .line 5772
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_SHOW_SHORTVIDEO"

    invoke-virtual {v0, v2, v15}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5773
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read short video flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    if-eqz v0, :cond_1d

    .line 5774
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5776
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "try to create bond device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5777
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5778
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 5896
    :pswitch_a
    const-string v2, "permission"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5897
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "listen call need permission now "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 5924
    :pswitch_b
    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 5925
    const-string v2, "isClearable"

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5926
    const-string v2, "isPosted"

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    return-void

    .line 5782
    :pswitch_c
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1d

    .line 5784
    :try_start_1
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceTime()I

    .line 5785
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneUniqueId(Lnet/grandcentrix/tray/AppPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 5786
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 5787
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppId(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 5789
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_NOTIFY_SYNC_TIME exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_5

    .line 5850
    :pswitch_d
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v2, "finish scan..."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void

    .line 5794
    :pswitch_e
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;)V

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5741
    :pswitch_f
    :try_start_2
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1d

    .line 5742
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v12, v13}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppState(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 5745
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_SCREEN_OFF exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_1d
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_f
        -0x72e40e06 -> :sswitch_e
        -0x6a269925 -> :sswitch_d
        -0x69dfd776 -> :sswitch_c
        -0x3e0a7f2d -> :sswitch_b
        -0x2de7766b -> :sswitch_a
        -0x2ca8ad39 -> :sswitch_9
        -0x2023ff95 -> :sswitch_8
        -0x1fdf0bcd -> :sswitch_7
        0x6724d8 -> :sswitch_6
        0x2caf9a3 -> :sswitch_5
        0x910f92d -> :sswitch_4
        0x268bb3f3 -> :sswitch_3
        0x2b548748 -> :sswitch_2
        0x459717c3 -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
