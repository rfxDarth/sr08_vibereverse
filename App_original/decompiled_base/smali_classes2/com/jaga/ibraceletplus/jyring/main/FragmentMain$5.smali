.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;
.super Landroid/content/BroadcastReceiver;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1226
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "jringTEMPERATURE_DATA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "jringWALK_DATA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "jringBATTERYDATA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "jringACTION_NOTIFY_BLE_SET_TEMPERATURE_MODE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "jringSENSORDATA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "jringACTION_NOTIFY_BLE_SYNC_DATE_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "jringACTION_NOTIFY_BLE_SYNC_DATA_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "jringACTION_NOTIFY_BLE_SYNC_DATA_BY_DAY_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "jringFUNCTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "jringACTION_NOTIFY_BLE_SYNC_DATA_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_a
    const-string v0, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_b
    const-string v0, "jringRUN_DATA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_c
    const-string v0, "jringBLOOD_DATA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_d
    const-string v0, "jringACTION_NOTIFY_BLE_SET_TEMPERATURE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_e
    const-string v0, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_f
    const-string v0, "jringACTION_NOTIFY_BLE_SYNC_TOTAL_DATA_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x0

    :goto_0
    const-string p1, "%"

    const/4 v0, 0x0

    const-string/jumbo v4, "state"

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1301
    :pswitch_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V

    .line 1303
    const-string/jumbo p1, "surfaceTemp"

    const/16 v0, -0x7fff

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1304
    const-string v1, "bodyTemp"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-lez v1, :cond_11

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_10

    goto :goto_1

    .line 1320
    :cond_10
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "DATA_LAST_SURFACETEMP"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1321
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v0, "DATA_LAST_BODYTEMP"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1323
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initTempTask(I)V

    :cond_11
    :goto_1
    return-void

    .line 1255
    :pswitch_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initStepTask(Z)V

    return-void

    .line 1233
    :pswitch_2
    const-string v3, "battery"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1234
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1235
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    int-to-float v5, v3

    invoke-virtual {v4, v2, v5, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;->setProgress(IFF)V

    .line 1236
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBattery:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Receive action ACTION_NOTIFY_BATTERY_DATA : battery = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-ne p2, v1, :cond_12

    .line 1242
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    invoke-virtual {p1, v1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;->setCharging(Z)V

    return-void

    .line 1246
    :cond_12
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    invoke-virtual {p1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;->setCharging(Z)V

    return-void

    .line 1326
    :pswitch_3
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    return-void

    .line 1266
    :pswitch_4
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1267
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receive ACTION_NOTIFY_SENSOR_DATA sHeart : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-nez p1, :cond_13

    .line 1270
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCloseHeartTask when state : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 1271
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/16 p2, 0x5dc

    invoke-virtual {p1, v1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startCloseHeartTask(II)V

    .line 1272
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V

    return-void

    .line 1274
    :cond_13
    const-string p1, "data"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1275
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initHeartTask data : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 1276
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initHeartTask(I)V

    return-void

    .line 1336
    :pswitch_5
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v2, 0x7f13021e

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1339
    :pswitch_6
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    .line 1340
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;->notifyDataSetChanged()V

    return-void

    .line 1351
    :pswitch_7
    const-string/jumbo p1, "version"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1352
    const-string p1, "cid"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1353
    const-string v0, "did"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1354
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1258
    :pswitch_8
    const-string/jumbo p1, "time_walk"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1259
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p1, 0xe10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbTime:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    .line 1283
    :pswitch_9
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_14

    .line 1286
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V

    return-void

    .line 1288
    :cond_14
    const-string/jumbo p1, "systolic"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1289
    const-string v1, "diastolic"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1290
    const-string v3, "oxygen"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1291
    const-string v4, "fatigue"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1292
    const-string/jumbo v5, "stress"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    .line 1293
    const-string/jumbo v6, "sugar"

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 1294
    const-string v6, "hrv"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1295
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p2, p1, v1, v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initBloodTask(IIII)V

    .line 1296
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    float-to-int p2, v5

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initPressureTask(I)V

    .line 1297
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initBloodSugarTask(F)V

    return-void

    .line 1332
    :pswitch_a
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    return-void

    .line 1251
    :pswitch_b
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1252
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)V

    return-void

    .line 1346
    :pswitch_c
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 1347
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 1348
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fdd46a6 -> :sswitch_f
        -0x602db4fa -> :sswitch_e
        -0x5a3323d5 -> :sswitch_d
        -0x57a6ec15 -> :sswitch_c
        -0x4cb15246 -> :sswitch_b
        -0x45bf1c2a -> :sswitch_a
        -0x318c2ea1 -> :sswitch_9
        -0x2ca8ad39 -> :sswitch_8
        -0xba7f794 -> :sswitch_7
        0x18cf7e6 -> :sswitch_6
        0x6e07d25 -> :sswitch_5
        0x9a55d20 -> :sswitch_4
        0xa76b97a -> :sswitch_3
        0x15bbe41f -> :sswitch_2
        0x295877a8 -> :sswitch_1
        0x4ecb89b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
