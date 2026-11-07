.class public Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ForgetPwdActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    .line 27
    const-string v0, "field \'rlBackground\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a035f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->rlBackground:Landroid/widget/RelativeLayout;

    .line 28
    const-string v0, "field \'bForget\'"

    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a006e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->bForget:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    .line 38
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->rlBackground:Landroid/widget/RelativeLayout;

    .line 39
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->bForget:Landroid/widget/Button;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
