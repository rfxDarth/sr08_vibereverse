.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BpAdjustActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a046b:Landroid/view/View;

.field private view7f0a046c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    .line 35
    const-string v0, "field \'ivSync\' and method \'OnClickivSync\'"

    const v1, 0x7f0a0213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    const-string v2, "field \'ivSync\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->ivSync:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-string v0, "field \'tvBpAdjustSbp\' and method \'OnClicktvBpAdjustSbp\'"

    const v1, 0x7f0a046c

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    const-string v2, "field \'tvBpAdjustSbp\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->tvBpAdjustSbp:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a046c:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const-string v0, "field \'tvBpAdjustDbp\' and method \'OnClicktvBpAdjustDbp\'"

    const v1, 0x7f0a046b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 54
    const-string v0, "field \'tvBpAdjustDbp\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->tvBpAdjustDbp:Landroid/widget/TextView;

    .line 55
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a046b:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    .line 71
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->ivSync:Landroid/widget/ImageView;

    .line 72
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->tvBpAdjustSbp:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->tvBpAdjustDbp:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a046c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a046c:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a046b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;->view7f0a046b:Landroid/view/View;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
