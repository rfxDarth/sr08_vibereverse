.class Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 498
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 499
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 501
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
