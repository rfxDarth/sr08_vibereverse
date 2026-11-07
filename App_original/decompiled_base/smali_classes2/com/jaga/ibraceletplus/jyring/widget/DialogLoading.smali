.class public Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
.super Landroidx/appcompat/app/AlertDialog;
.source "DialogLoading.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f140133

    .line 13
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0089

    .line 20
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->setContentView(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
