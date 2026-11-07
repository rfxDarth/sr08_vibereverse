.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$4;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 477
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 480
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 481
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 482
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logout result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 485
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
