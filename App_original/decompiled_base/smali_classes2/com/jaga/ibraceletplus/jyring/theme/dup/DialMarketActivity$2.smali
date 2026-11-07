.class Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;
.super Ljava/lang/Object;
.source "DialMarketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->TAG:Ljava/lang/String;

    const-string v1, "checkDialServerInfoRunnable in dial market activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDialServerInfoRunnable macid:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FUNCTION_DIAL_PRODUCTTYPE-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FUNCTION_DIAL_PRODUCTID-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->macid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 427
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 428
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 430
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
