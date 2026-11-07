.class Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "OtaWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 518
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 519
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_PROCEEDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x8

    goto :goto_0

    :sswitch_1
    const-string v0, "jringConnectionState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "jringProgressUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "jringBluetoothGattUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_0
    const p1, 0x7f130016

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 612
    :pswitch_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V

    .line 613
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    return-void

    .line 533
    :pswitch_1
    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_9

    .line 534
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 535
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f13050c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Landroid/content/Intent;)V

    return-void

    .line 618
    :pswitch_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    const p2, 0x7f13056c

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V

    .line 619
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bCheck:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->sendRebootSignal()V

    .line 624
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$3;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 524
    :pswitch_3
    const-string v0, "progress"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 525
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {v2, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V

    .line 526
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->pbOta:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 528
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    .line 529
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 563
    :pswitch_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 565
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    const p2, 0x7f130567

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V

    .line 569
    :try_start_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;)V

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 593
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 543
    :pswitch_5
    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 544
    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 545
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    const p2, 0x7f130225

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V

    .line 547
    :try_start_1
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceMode(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 549
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 551
    :goto_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_2
    return-void

    .line 556
    :cond_a
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    const p2, 0x7f130223

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 600
    :pswitch_6
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Ljava/lang/String;)V

    .line 601
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$2;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 666
    :pswitch_7
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Landroid/content/Intent;)V

    return-void

    .line 521
    :pswitch_8
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->processStep(Landroid/content/Intent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a120469 -> :sswitch_8
        -0x66aee90a -> :sswitch_7
        -0x65e8f6b0 -> :sswitch_6
        -0x5f2b9d26 -> :sswitch_5
        -0x40eee385 -> :sswitch_4
        0x3183ed90 -> :sswitch_3
        0x7243fd71 -> :sswitch_2
        0x78ee5b59 -> :sswitch_1
        0x7a2bbc26 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
