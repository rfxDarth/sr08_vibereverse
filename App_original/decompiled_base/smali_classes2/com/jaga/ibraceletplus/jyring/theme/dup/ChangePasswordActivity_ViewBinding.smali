.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChangePasswordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

.field private view7f0a006b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    .line 30
    const-string v0, "field \'etOldPwd\'"

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0174

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etOldPwd:Landroid/widget/EditText;

    .line 31
    const-string v0, "field \'etNewPwd\'"

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0171

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etNewPwd:Landroid/widget/EditText;

    .line 32
    const-string v0, "field \'etNewPwd2\'"

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0172

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etNewPwd2:Landroid/widget/EditText;

    const v0, 0x7f0a006b

    .line 33
    const-string v1, "method \'OnClickbChange\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;->view7f0a006b:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    .line 50
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etOldPwd:Landroid/widget/EditText;

    .line 51
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etNewPwd:Landroid/widget/EditText;

    .line 52
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etNewPwd2:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;->view7f0a006b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity_ViewBinding;->view7f0a006b:Landroid/view/View;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
