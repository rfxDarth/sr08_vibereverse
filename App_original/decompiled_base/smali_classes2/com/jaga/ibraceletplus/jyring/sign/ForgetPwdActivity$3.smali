.class Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$3;
.super Ljava/lang/Object;
.source "ForgetPwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 124
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
