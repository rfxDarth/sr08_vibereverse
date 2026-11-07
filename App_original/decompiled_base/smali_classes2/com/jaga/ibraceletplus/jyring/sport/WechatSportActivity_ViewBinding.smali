.class public Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WechatSportActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

.field private view7f0a006a:Landroid/view/View;

.field private view7f0a01ea:Landroid/view/View;

.field private view7f0a0500:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Landroid/view/View;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    .line 35
    const-string v0, "field \'ivCode\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->ivCode:Landroid/widget/ImageView;

    .line 36
    const-string v0, "field \'tvMac\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04cb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->tvMac:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvDevice\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a048e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->tvDevice:Landroid/widget/TextView;

    const v0, 0x7f0a006a

    .line 38
    const-string v1, "method \'OnClickbAuth\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a006a:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0500

    .line 46
    const-string v1, "method \'OnClicktvSave\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a0500:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ea

    .line 54
    const-string v1, "method \'OnClickivDevice\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a01ea:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    .line 71
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->ivCode:Landroid/widget/ImageView;

    .line 72
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->tvMac:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->tvDevice:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a006a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a006a:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a0500:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a0500:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a01ea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity_ViewBinding;->view7f0a01ea:Landroid/view/View;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
