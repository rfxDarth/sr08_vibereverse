.class public Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

.field private view7f0a0204:Landroid/view/View;

.field private view7f0a021b:Landroid/view/View;

.field private view7f0a0450:Landroid/view/View;

.field private view7f0a04aa:Landroid/view/View;

.field private view7f0a04f4:Landroid/view/View;

.field private view7f0a0509:Landroid/view/View;

.field private view7f0a050a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;Landroid/view/View;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    .line 45
    const-string v0, "field \'rlBackground\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a035f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->rlBackground:Landroid/widget/RelativeLayout;

    .line 46
    const-string v0, "field \'llAgreementPrivacy\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a023a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    .line 47
    const-string v0, "field \'cbConfirm\'"

    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f0a00c6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    .line 48
    const-string v0, "field \'bLogin\'"

    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0070

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bLogin:Landroid/widget/Button;

    const v0, 0x7f0a050a

    .line 49
    const-string v1, "method \'tvSkipOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a050a:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04aa

    .line 57
    const-string v1, "method \'tvForgetOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a04aa:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0509

    .line 65
    const-string v1, "method \'tvSignupOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0509:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0450

    .line 73
    const-string v1, "method \'tvAgreementOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0450:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04f4

    .line 81
    const-string v1, "method \'tvPrivacyOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a04f4:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0204

    .line 89
    const-string v1, "method \'OnClickivQq\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0204:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$6;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021b

    .line 97
    const-string v1, "method \'OnClickivWechat\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a021b:Landroid/view/View;

    .line 99
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding$7;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    .line 114
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->rlBackground:Landroid/widget/RelativeLayout;

    .line 115
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    .line 116
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    .line 117
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bLogin:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a050a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a050a:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a04aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a04aa:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0509:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0509:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0450:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0450:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a04f4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a04f4:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0204:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a0204:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a021b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity_ViewBinding;->view7f0a021b:Landroid/view/View;

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
