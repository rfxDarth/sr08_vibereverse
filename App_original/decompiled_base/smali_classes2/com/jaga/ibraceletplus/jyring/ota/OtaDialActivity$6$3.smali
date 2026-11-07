.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;
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

    .line 560
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 563
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->disableNotifications()V

    .line 564
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$602(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 565
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->disconnect()V

    .line 566
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bluetoothManager:Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;->reset()V

    .line 568
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const v2, 0x7f130566

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$6$3;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
