.class public Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RegisterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

.field private view7f0a0450:Landroid/view/View;

.field private view7f0a04f4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Landroid/view/View;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    .line 35
    const-string v0, "field \'rlBackground\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a035f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->rlBackground:Landroid/widget/RelativeLayout;

    .line 36
    const-string v0, "field \'llAgreementPrivacy\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a023a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    .line 37
    const-string v0, "field \'cbConfirm\'"

    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f0a00c6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->cbConfirm:Landroid/widget/CheckBox;

    .line 38
    const-string v0, "field \'bSignup\'"

    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0073

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->bSignup:Landroid/widget/Button;

    const v0, 0x7f0a0450

    .line 39
    const-string v1, "method \'tvAgreementOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->view7f0a0450:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04f4

    .line 47
    const-string v1, "method \'tvPrivacyOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->view7f0a04f4:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    .line 64
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->rlBackground:Landroid/widget/RelativeLayout;

    .line 65
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->cbConfirm:Landroid/widget/CheckBox;

    .line 67
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->bSignup:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->view7f0a0450:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->view7f0a0450:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->view7f0a04f4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity_ViewBinding;->view7f0a04f4:Landroid/view/View;

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
