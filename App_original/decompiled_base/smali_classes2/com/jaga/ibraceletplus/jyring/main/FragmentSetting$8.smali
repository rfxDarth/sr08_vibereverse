.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;
.super Landroid/content/BroadcastReceiver;
.source "FragmentSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;
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

    .line 1101
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1104
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "jringACTION_NOTIFY_ECARD_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "jringACTION_NOTIFY_SMSRSP_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "jringACTION_NOTIFY_UNBOND_ACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "jringACTION_NOTIFY_DEVICE_OTA_ENABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "jringACTION_NOTIFY_CONTACT_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "jringBATTERYDATA_BROADCAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_6
    const-string v3, "jringSCANDEVICEDATA_BROADCAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "jringDEVICE_DIALINFO_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v8, 0x5

    goto :goto_0

    :sswitch_8
    const-string v3, "jringFUNCTION_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_9
    const-string v3, "jringACTION_NOTIFY_BLE_SYNC_DATA_END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_a
    const-string v3, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_b
    const-string v3, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_c
    const-string v3, "jringACTION_NOTIFY_GET_DEVICE_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v8, 0x0

    :goto_0
    const v2, 0x7f10003c

    const-string v3, ", state = "

    const-string v9, "%"

    const-string/jumbo v10, "state"

    const-string v11, "did"

    const-string v12, "cid"

    const-string v13, "0"

    const/4 v14, 0x0

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_7

    .line 1326
    :pswitch_0
    :try_start_0
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySmsRspInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 1328
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_d

    .line 1330
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1333
    :cond_d
    new-instance v2, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;

    invoke-direct {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;-><init>(Ljava/util/ArrayList;)V

    .line 1334
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setSmsRspInfoCrc(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1336
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_NOTIFY_SMSRSP_CHANGED: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1341
    :goto_2
    :pswitch_1
    :try_start_1
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryECardInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v7, v2, :cond_e

    .line 1345
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    .line 1346
    const-string/jumbo v4, "setECardInfoCrc "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1348
    :cond_e
    new-instance v2, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;

    invoke-direct {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;-><init>(Ljava/util/ArrayList;)V

    .line 1349
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setECardInfoCrc(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 1351
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_NOTIFY_ECARD_CHANGED: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1315
    :pswitch_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8$1;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1356
    :pswitch_3
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    return-void

    .line 1296
    :pswitch_4
    :try_start_2
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v2, "P_LATEST_CONTACT_CRC"

    invoke-virtual {v0, v2, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1297
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1298
    const-string/jumbo v2, "setContactCrc"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setContactCrc(Ljava/lang/String;)I

    .line 1300
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryContactInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 1302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v7, v2, :cond_f

    .line 1304
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    .line 1305
    const-string v4, "FragmentSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1307
    :cond_f
    new-instance v2, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;

    invoke-direct {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;-><init>(Ljava/util/ArrayList;)V

    .line 1308
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 1310
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_NOTIFY_CONTACT_CHANGED: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1216
    :pswitch_5
    const-string v4, "battery"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1217
    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1218
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    int-to-float v8, v4

    invoke-virtual {v5, v7, v8, v14}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setProgress(IFF)V

    .line 1219
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvBattery:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Receive action ACTION_NOTIFY_BATTERY_DATA : battery = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    if-ne v0, v6, :cond_10

    .line 1224
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    const v2, 0x7f10003f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1225
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-virtual {v0, v6}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setCharging(Z)V

    return-void

    .line 1228
    :cond_10
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1229
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-virtual {v0, v7}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setCharging(Z)V

    return-void

    .line 1106
    :pswitch_6
    const-string v2, "device_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1107
    const-string v3, ""

    if-nez v2, :cond_11

    move-object v2, v3

    .line 1109
    :cond_11
    const-string v4, "device_mac_address"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1110
    const-string v5, "device_rssi"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1112
    const-string v8, "device_ver"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1113
    const-string v9, "device_cid"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1114
    const-string v10, "device_did"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1115
    const-string v13, "device_bindflag"

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1116
    const-string v14, "device_bindstate"

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    iget-object v14, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v14}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    const-string v6, " - "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    .line 1120
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1121
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v5, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {v5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;-><init>()V

    invoke-static {v3, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$902(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 1122
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceName(Ljava/lang/String;)V

    .line 1123
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceAddress(Ljava/lang/String;)V

    .line 1124
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setVer(Ljava/lang/String;)V

    .line 1125
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setCid(Ljava/lang/String;)V

    .line 1126
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setDid(Ljava/lang/String;)V

    .line 1127
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBindFlag(Ljava/lang/String;)V

    .line 1128
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBindState(Ljava/lang/String;)V

    .line 1129
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1130
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickivConnect()V

    return-void

    :cond_12
    const/4 v7, 0x0

    .line 1138
    :goto_5
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v7, v3, :cond_14

    .line 1139
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1140
    const-string/jumbo v6, "tvMac"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1142
    const-string/jumbo v0, "tvRssi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1700(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ivSignal"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1149
    :cond_14
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1150
    const-string/jumbo v6, "tvRssi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v6, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1700(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ivSignal"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string/jumbo v5, "tvName"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    const-string/jumbo v2, "tvMac"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string/jumbo v2, "ver"

    invoke-virtual {v3, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    invoke-virtual {v3, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-virtual {v3, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string v2, "bindFlag"

    invoke-virtual {v3, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string v2, "bindState"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f100199

    .line 1159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "ivConnect"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    :goto_6
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/bean/ComparatorDevice;

    invoke-direct {v2}, Lcom/jaga/ibraceletplus/jyring/bean/ComparatorDevice;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1166
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1168
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P_SCAN_DEVICE_CHECK_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 1281
    :pswitch_7
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1282
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_NOTIFY_DEVICE_DIALINFO_CHANGED receive macid:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FUNCTION_DIAL_PRODUCTTYPE-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FUNCTION_DIAL_PRODUCTID-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1286
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1287
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1288
    :cond_15
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2102(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 1290
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->checkDialServerInfoTask()V

    :cond_16
    :goto_7
    return-void

    .line 1276
    :pswitch_8
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string/jumbo v2, "updateDeviceImageByType from ACTION_NOTIFY_FUNCTION_CHANGED"

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1277
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    .line 1278
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    return-void

    .line 1238
    :pswitch_9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-void

    .line 1172
    :pswitch_a
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1173
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceVersion:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const v7, 0x7f130221

    invoke-virtual {v6, v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    const-string v3, "0001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "001C"

    const v6, 0x7f10001e

    if-eqz v4, :cond_17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1177
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1178
    :cond_17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "0020"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1179
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1180
    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "0034"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1181
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1182
    :cond_19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "0017"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1183
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v2, 0x7f10001d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1184
    :cond_1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "004C"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1185
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v2, 0x7f10001d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1186
    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "0022"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1187
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v2, 0x7f10001f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1188
    :cond_1c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "002B"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1189
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v2, 0x7f100020

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1190
    :cond_1d
    const-string v4, "003A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x7f100024

    if-eqz v6, :cond_1e

    const-string v6, "0010"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1191
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1192
    :cond_1e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, "0018"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1193
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1194
    :cond_1f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "0019"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1195
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1196
    :cond_20
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x7f100025

    if-eqz v6, :cond_21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1197
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1198
    :cond_21
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "005B"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1199
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1200
    :cond_22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "0062"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1201
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1202
    :cond_23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1203
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const/high16 v2, 0x7f100000

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1204
    :cond_24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "0048"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1205
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v2, 0x7f100021

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1206
    :cond_25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "0049"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1207
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v2, 0x7f100022

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1208
    :cond_26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "004A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1209
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const v2, 0x7f100023

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1211
    :cond_27
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    const/high16 v2, 0x7f100000

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :pswitch_b
    const/4 v4, 0x1

    .line 1246
    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_29

    .line 1248
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string v4, "receive ble state changed set battery image"

    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1249
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1251
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSync:Landroid/widget/TextView;

    const v2, 0x7f130509

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1253
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "P_TEMP_BATTERY"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    .line 1254
    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-virtual {v0, v2, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1255
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "P_TEMP_BATTERY_STATE"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    .line 1256
    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1255
    invoke-virtual {v2, v4, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1258
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v14}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setProgress(IFF)V

    .line 1259
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvBattery:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init battery = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1261
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_28

    const/4 v6, 0x1

    goto :goto_8

    :cond_28
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v0, v6}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setCharging(Z)V

    .line 1263
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    return-void

    .line 1265
    :cond_29
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string v2, "receive ble state changed set disconnect image"

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1266
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    const v2, 0x7f100050

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1268
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v14, v14}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->setProgress(IFF)V

    .line 1269
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSync:Landroid/widget/TextView;

    const v3, 0x7f13050b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1271
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1360
    :pswitch_c
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cc9a57a -> :sswitch_c
        -0x602db4fa -> :sswitch_b
        -0x45bf1c2a -> :sswitch_a
        -0x318c2ea1 -> :sswitch_9
        -0x2ca8ad39 -> :sswitch_8
        -0x1faa8c9e -> :sswitch_7
        0x35727b9 -> :sswitch_6
        0x15bbe41f -> :sswitch_5
        0x23cafd2e -> :sswitch_4
        0x2b548748 -> :sswitch_3
        0x35e9ab0d -> :sswitch_2
        0x3d9f8eb2 -> :sswitch_1
        0x5b1a9343 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
