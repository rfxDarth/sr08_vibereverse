.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1021
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1024
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkDialServerInfoRunnable in fragment settings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FUNCTION_DIAL_PRODUCTTYPE-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FUNCTION_DIAL_PRODUCTID-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1031
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1032
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1034
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
