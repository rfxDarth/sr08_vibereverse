.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$13;
.super Ljava/lang/Object;
.source "OtaDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 821
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 824
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 827
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 828
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 830
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1500(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
