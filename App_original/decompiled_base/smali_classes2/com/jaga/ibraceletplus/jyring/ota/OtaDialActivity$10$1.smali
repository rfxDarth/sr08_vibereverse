.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;
.super Ljava/lang/Object;
.source "OtaDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

.field final synthetic val$btDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$scanRecord:[B


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;[BLandroid/bluetooth/BluetoothDevice;)V
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

    .line 729
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$scanRecord:[B

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 732
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$scanRecord:[B

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/Uuid;->parseFromAdvertisementData([B)Ljava/util/List;

    move-result-object v0

    .line 733
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 734
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 735
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const v5, 0x7f13021b

    invoke-virtual {v4, v5}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 737
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->macid:Ljava/lang/String;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$602(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 740
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const v2, 0x7f130509

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    .line 742
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
