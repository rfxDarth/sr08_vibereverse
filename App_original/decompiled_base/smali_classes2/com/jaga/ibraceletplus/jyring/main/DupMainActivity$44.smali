.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->tryBondDevice(Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field final synthetic val$bd:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$leftTimes:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;I)V
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

    .line 4552
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->val$bd:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->val$leftTimes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4555
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->val$bd:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->boundDeviceAPI(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 4556
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create bond device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->val$leftTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4557
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->val$leftTimes:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 4559
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$44;->val$bd:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    return-void
.end method
