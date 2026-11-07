.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a0473:Landroid/view/View;

.field private view7f0a048c:Landroid/view/View;

.field private view7f0a04c9:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    .line 40
    const-string v0, "field \'rlChange\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0361

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->rlChange:Landroid/widget/RelativeLayout;

    .line 41
    const-string v0, "field \'rlDeletion\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0363

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->rlDeletion:Landroid/widget/RelativeLayout;

    .line 42
    const-string v0, "field \'tvLogin\' and method \'OnClicktvLogin\'"

    const v1, 0x7f0a04c9

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    const-string v2, "field \'tvLogin\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvLogin:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a04c9:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-string v0, "field \'ivSync\' and method \'OnClickivSync\'"

    const v1, 0x7f0a0213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    const-string v2, "field \'ivSync\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivSync:Landroid/widget/ImageView;

    .line 53
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-string v0, "field \'civUserIcon\'"

    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f0a00e2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 61
    const-string v0, "field \'etNickName\'"

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0173

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->etNickName:Landroid/widget/EditText;

    .line 62
    const-string v0, "field \'tvUserName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0543

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    .line 63
    const-string v0, "field \'ivMale\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01f8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivMale:Landroid/widget/ImageView;

    .line 64
    const-string v0, "field \'ivFemale\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivFemale:Landroid/widget/ImageView;

    .line 65
    const-string v0, "field \'tvBirthday\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvBirthday:Landroid/widget/TextView;

    .line 66
    const-string v0, "field \'tvHeight\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    .line 67
    const-string v0, "field \'tvWeight\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a054e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvWeight:Landroid/widget/TextView;

    const v0, 0x7f0a0473

    .line 68
    const-string v1, "method \'OnClicktvChange\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a0473:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a048c

    .line 76
    const-string v1, "method \'OnClicktvDeletion\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a048c:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    .line 93
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->rlChange:Landroid/widget/RelativeLayout;

    .line 94
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->rlDeletion:Landroid/widget/RelativeLayout;

    .line 95
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvLogin:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivSync:Landroid/widget/ImageView;

    .line 97
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 98
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->etNickName:Landroid/widget/EditText;

    .line 99
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    .line 100
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivMale:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivFemale:Landroid/widget/ImageView;

    .line 102
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvBirthday:Landroid/widget/TextView;

    .line 103
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvWeight:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a04c9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a04c9:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a0473:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a0473:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a048c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity_ViewBinding;->view7f0a048c:Landroid/view/View;

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
