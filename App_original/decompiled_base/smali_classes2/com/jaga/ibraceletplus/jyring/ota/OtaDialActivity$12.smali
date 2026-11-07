.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;
.super Ljava/lang/Object;
.source "OtaDialActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 788
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 791
    const-string v0, "fwUrl"

    const-string/jumbo v1, "versionCode"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 792
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 797
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 798
    const-string/jumbo p1, "updateInfo"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 799
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 800
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 802
    new-instance v3, Landroid/content/Intent;

    const-string v4, "jringACTION_NOTIFY_SERVER_FIRMWARE_VERSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {p1, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 807
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    new-instance p1, Landroid/content/Intent;

    const-string v0, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130565

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    const/4 p1, 0x1

    return p1

    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 815
    throw p1
.end method
