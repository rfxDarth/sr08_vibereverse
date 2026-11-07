.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 617
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 620
    const-string v0, "fwUrl"

    const-string/jumbo v1, "versionCode"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 621
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 622
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upgrade result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 626
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 627
    const-string/jumbo p1, "updateInfo"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 628
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 629
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 631
    new-instance v3, Landroid/content/Intent;

    const-string v4, "jringACTION_NOTIFY_SERVER_FIRMWARE_VERSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {p1, v3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 636
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1300(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    const/4 p1, 0x1

    return p1

    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$10;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1300(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 639
    throw p1
.end method
