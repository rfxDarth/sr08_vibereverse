.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;
.super Ljava/lang/Object;
.source "OtaDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 500
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start ota action without reboot device, mac: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string v2, "getRemoteDevice ..."

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$602(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 508
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string v2, "getRemoteDevice success"

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string/jumbo v1, "start upgrade ..."

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start device is null with mac: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    const-string v1, "code"

    const-string v2, "device is null"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$2;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method
