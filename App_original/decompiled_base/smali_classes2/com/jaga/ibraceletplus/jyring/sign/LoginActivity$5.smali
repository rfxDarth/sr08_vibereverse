.class Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->init()V
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

    .line 219
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 223
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 224
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-boolean v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bNeedConfirm:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    return-void

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f0a0170

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/16 v0, 0x20

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 232
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v1, 0x7f0a0175

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 234
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->username:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->password:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->username:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->password:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->password:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bPrivacyConfirm"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 251
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 252
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    :cond_3
    return-void

    .line 243
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130187

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 238
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
