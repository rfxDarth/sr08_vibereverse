.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "OtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string/jumbo v2, "start device is null with mac: "

    const-string/jumbo v3, "start ota action without reboot device, mac: "

    .line 272
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 273
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v7, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    const-string v9, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    const/16 v10, 0x8

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_PROCEEDING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "jringConnectionState"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "jringACTION_NOTIFY_DIALOG_DISMISS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_VERSION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "jringProgressUpdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x8

    goto :goto_1

    :sswitch_6
    const-string v5, "jringACTION_NOTIFY_LOCAL_UPGRADE_ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_7
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_8
    const-string v5, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_9
    const-string v5, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_a
    const-string v5, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_c
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_d
    const-string v5, "jringBluetoothGattUpdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    :goto_1
    const-string v5, "error"

    const v14, 0x7f130568

    const-string/jumbo v15, "state"

    const-string v6, "code"

    const v8, 0x7f130569

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 421
    :pswitch_0
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 422
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string/jumbo v2, "start upgrade service 2 ..."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 423
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1100(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    return-void

    .line 283
    :pswitch_1
    invoke-virtual {v0, v15, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_17

    .line 284
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 285
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONNECTION_STATE_UPDATE code\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 286
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f13050c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 428
    :pswitch_2
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string v2, "ACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS update P_OTA_INDICATOR: P_OTA_INDICATOR_DISABLE"

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 429
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_OTA_INDICATOR"

    const-string v3, "P_OTA_INDICATOR_VIEWED"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 431
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v2, 0x7f13056a

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 432
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bCheck:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 433
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$402(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 434
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 435
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendRebootSignal()V

    .line 436
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    .line 437
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$3;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;)V

    invoke-virtual {v0, v2, v3, v12}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 463
    :pswitch_3
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1300(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    return-void

    .line 306
    :pswitch_4
    const-string/jumbo v2, "versionCode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->tvServerVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v6, 0x7f13016a

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v11, :cond_e

    .line 311
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 313
    :cond_e
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v11, :cond_f

    .line 315
    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 317
    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-gtz v3, :cond_11

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_2

    .line 336
    :cond_10
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v2, 0x7f1301f5

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v12}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 318
    :cond_11
    :goto_2
    const-string v3, "fwUrl"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 320
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    return-void

    .line 322
    :cond_12
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    .line 323
    invoke-virtual {v7, v6}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$1;

    invoke-direct {v3, v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;Ljava/lang/String;)V

    const v0, 0x7f130178

    .line 324
    invoke-virtual {v2, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f13015a

    .line 331
    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 333
    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    .line 278
    :pswitch_5
    const-string v2, "progress"

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 279
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v4, v8}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 280
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->pbOta:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    .line 466
    :pswitch_6
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 467
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bCheck:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 468
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$402(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 469
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 470
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    return-void

    .line 368
    :pswitch_7
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v4, 0x7f130567

    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 390
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string v4, "getRemoteDevice ..."

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 391
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1002(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 392
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string v4, "getRemoteDevice success"

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 393
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 394
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string/jumbo v2, "start upgrade ..."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 395
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 398
    :cond_13
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    const-string v2, "device is null"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 405
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRemoteDevice: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 294
    :pswitch_8
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v3, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v3

    iput-object v3, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 297
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setNickname(Ljava/lang/String;)V

    .line 299
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$402(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 300
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "V100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 301
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 302
    :cond_14
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 346
    :pswitch_9
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 348
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v2, 0x7f130225

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 349
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string/jumbo v2, "send enter switch ota mode command 1"

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 356
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 361
    :cond_15
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v2, 0x7f130223

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 362
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 473
    :pswitch_a
    invoke-virtual {v0, v15, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    .line 476
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->alInfoDailog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 477
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->alInfoDailog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void

    .line 481
    :cond_16
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->alInfoDailog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 482
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->alInfoDailog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_17
    :goto_3
    return-void

    .line 414
    :pswitch_b
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 415
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string/jumbo v2, "start upgrade service ..."

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 416
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->startOtaService()V

    return-void

    .line 447
    :pswitch_c
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v2, v14}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 448
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bCheck:Landroid/widget/Button;

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 449
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v2, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$402(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 450
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v2, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Z)Z

    .line 451
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 453
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendRebootSignal()V

    .line 454
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    .line 455
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$4;

    invoke-direct {v3, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5$4;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;)V

    invoke-virtual {v0, v2, v3, v12}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 275
    :pswitch_d
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->processStep(Landroid/content/Intent;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a120469 -> :sswitch_d
        -0x66aee90a -> :sswitch_c
        -0x65e8f6b0 -> :sswitch_b
        -0x602db4fa -> :sswitch_a
        -0x5f2b9d26 -> :sswitch_9
        -0x45bf1c2a -> :sswitch_8
        -0x40eee385 -> :sswitch_7
        -0x3d604cb6 -> :sswitch_6
        0x3183ed90 -> :sswitch_5
        0x3aba2a89 -> :sswitch_4
        0x6fc5777a -> :sswitch_3
        0x7243fd71 -> :sswitch_2
        0x78ee5b59 -> :sswitch_1
        0x7a2bbc26 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
