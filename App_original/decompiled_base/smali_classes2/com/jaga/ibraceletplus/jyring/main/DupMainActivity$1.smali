.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;
.super Landroid/os/Handler;
.source "DupMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 437
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 438
    const-string v0, "batteryState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 439
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "battery state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const v0, 0x7f13016b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f13034d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 444
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 445
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;)V

    .line 446
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 451
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 456
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f13034e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 457
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 458
    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$1;)V

    .line 459
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 464
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
