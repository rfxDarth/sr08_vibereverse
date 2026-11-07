.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$11;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 645
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1500(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 651
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 652
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 654
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1600(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
