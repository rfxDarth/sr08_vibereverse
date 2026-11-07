.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "OtaDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 407
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string/jumbo v2, "unmatch curFileMd5: "

    const-string v3, "cur filename: "

    const-string v4, "/firmware.bin"

    .line 411
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 412
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const-string v8, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR_NOACTION"

    const-string v9, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    const/4 v10, 0x0

    const/4 v11, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_PROCEEDING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v11, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "jringConnectionState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v11, 0x8

    goto :goto_0

    :sswitch_2
    const-string v6, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v11, 0x7

    goto :goto_0

    :sswitch_3
    const-string v6, "jringProgressUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v11, 0x6

    goto :goto_0

    :sswitch_4
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v11, 0x5

    goto :goto_0

    :sswitch_5
    const-string v6, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v11, 0x4

    goto :goto_0

    :sswitch_6
    const-string v6, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v11, 0x3

    goto :goto_0

    :sswitch_7
    const-string v6, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v11, 0x2

    goto :goto_0

    :sswitch_8
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    const/4 v11, 0x1

    goto :goto_0

    :sswitch_9
    const-string v6, "jringBluetoothGattUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    const/4 v11, 0x0

    :goto_0
    const-wide/16 v5, 0x1f4

    const v12, 0xea60

    const v13, 0x7f130018

    const-string v14, "error"

    const v15, 0x7f130223

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1

    .line 546
    :pswitch_0
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0, v13}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 547
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 548
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    return-void

    .line 429
    :pswitch_1
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    .line 430
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13050c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2, v0, v7}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Intent;Z)V

    return-void

    .line 553
    :pswitch_2
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const v2, 0x7f130566

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 554
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 555
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bCheck:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendRebootSignal()V

    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 417
    :pswitch_3
    const-string v2, "progress"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 418
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)I

    move-result v2

    if-ge v2, v0, :cond_a

    .line 419
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$202(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;I)I

    .line 420
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v4, v13}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 421
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->pbOta:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 424
    :cond_a
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c

    if-nez v0, :cond_c

    .line 425
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 607
    :pswitch_4
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 608
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2, v0, v10}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Intent;Z)V

    return-void

    .line 467
    :pswitch_5
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const v7, 0x7f130567

    invoke-virtual {v0, v7}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 469
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 470
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->startWatcherTask(I)V

    .line 473
    :try_start_0
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "/JRing/firmware"

    invoke-static {v0, v7}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_c

    .line 475
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/MD5Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 478
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 479
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 480
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , md5String: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 481
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-static/range {p1 .. p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 500
    :cond_b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130565

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 439
    :pswitch_6
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 440
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v2, v12}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->startWatcherTask(I)V

    .line 441
    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 443
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const v2, 0x7f130225

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 449
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 454
    :cond_d
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 455
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v2, v15}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 456
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download error code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 457
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v15, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-static/range {p1 .. p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 538
    :pswitch_7
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0, v13}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 539
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 540
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const v2, 0x493e0

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->startWatcherTask(I)V

    .line 541
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->startOtaService()V

    return-void

    .line 601
    :pswitch_8
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 602
    const-string v2, "finish"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 603
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Intent;Z)V

    return-void

    .line 414
    :pswitch_9
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->processStep(Landroid/content/Intent;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a120469 -> :sswitch_9
        -0x66aee90a -> :sswitch_8
        -0x65e8f6b0 -> :sswitch_7
        -0x5f2b9d26 -> :sswitch_6
        -0x40eee385 -> :sswitch_5
        -0x2e1609a0 -> :sswitch_4
        0x3183ed90 -> :sswitch_3
        0x7243fd71 -> :sswitch_2
        0x78ee5b59 -> :sswitch_1
        0x7a2bbc26 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
