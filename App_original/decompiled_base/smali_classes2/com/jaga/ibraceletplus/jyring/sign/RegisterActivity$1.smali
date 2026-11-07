.class Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->cbConfirm:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-boolean v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->bNeedConfirm:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f0a0170

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/16 v0, 0x20

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v1, 0x7f0a0175

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 101
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->username:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->password:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->username:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->username:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->username:Ljava/lang/String;

    const-string v1, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->password:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->password:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->password:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->password:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    if-le p1, v0, :cond_3

    goto :goto_0

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bPrivacyConfirm"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->runnable:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 121
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 122
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    return-void

    .line 114
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Ljava/lang/String;)V

    return-void
.end method
