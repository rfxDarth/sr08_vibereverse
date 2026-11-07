.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startBondRequest(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6028
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 6031
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    .line 6033
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5702(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I

    .line 6034
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$51;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start device bond request result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
