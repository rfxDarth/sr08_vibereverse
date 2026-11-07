.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2627
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected profile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DupMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2632
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2302(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 2633
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2402(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 2635
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2502(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2636
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2602(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Z)Z

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected profile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DupMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2665
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2302(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2667
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$40;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2502(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_1
    return-void
.end method
