.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$deleteAccountRunnable;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "deleteAccountRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 654
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$deleteAccountRunnable;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$deleteAccountRunnable;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/String;

    move-result-object v0

    .line 659
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 660
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 661
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 663
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$deleteAccountRunnable;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->deleteAccountHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
