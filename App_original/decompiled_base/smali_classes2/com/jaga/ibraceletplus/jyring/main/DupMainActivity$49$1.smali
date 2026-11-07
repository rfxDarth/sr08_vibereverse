.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5794
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5797
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v3, 0x7f13030a

    .line 5798
    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$49$1;)V

    const v2, 0x7f130158

    .line 5799
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13015a

    const/4 v2, 0x0

    .line 5806
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 5807
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
