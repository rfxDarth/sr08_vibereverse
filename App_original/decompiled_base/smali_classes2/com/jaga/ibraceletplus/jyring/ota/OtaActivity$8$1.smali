.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

.field final synthetic val$btDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$scanRecord:[B


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;[BLandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->val$scanRecord:[B

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 572
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->val$scanRecord:[B

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/Uuid;->parseFromAdvertisementData([B)Ljava/util/List;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 574
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v5, 0x7f13021b

    invoke-virtual {v4, v5}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 577
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    .line 578
    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1002(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 580
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const v2, 0x7f130509

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
