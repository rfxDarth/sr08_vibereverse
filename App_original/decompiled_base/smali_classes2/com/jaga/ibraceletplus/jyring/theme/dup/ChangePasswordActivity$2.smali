.class Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->OnClickbChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

.field final synthetic val$changePwdHandler:Landroid/os/Handler;

.field final synthetic val$newPwd:Ljava/lang/String;

.field final synthetic val$oldPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->val$oldPwd:Ljava/lang/String;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->val$newPwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->val$changePwdHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->val$oldPwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->val$newPwd:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 171
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;->val$changePwdHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
