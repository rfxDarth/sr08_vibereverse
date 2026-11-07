.class Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;
.super Ljava/lang/Object;
.source "ForgetPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->init()V
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

    .line 61
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    const v0, 0x7f0a0170

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/16 v0, 0x20

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->username:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->username:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->username:Ljava/lang/String;

    const-string v1, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->operateRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 79
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 80
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    return-void

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
