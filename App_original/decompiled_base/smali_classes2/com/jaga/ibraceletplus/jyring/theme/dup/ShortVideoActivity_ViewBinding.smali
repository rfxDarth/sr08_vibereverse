.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShortVideoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a038f:Landroid/view/View;

.field private view7f0a0390:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;

    .line 36
    const-string v0, "field \'ivSync\' and method \'OnClickivSync\'"

    const v1, 0x7f0a0213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    const-string v2, "field \'ivSync\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->ivSync:Landroid/widget/ImageView;

    .line 38
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-string v0, "field \'sbShortVideoEnable\' and method \'OnCheckedShortVideoEnable\'"

    const v1, 0x7f0a0390

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    const-string v2, "field \'sbShortVideoEnable\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->sbShortVideoEnable:Landroid/widget/Switch;

    .line 47
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a0390:Landroid/view/View;

    .line 48
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    const-string v0, "field \'sbShortVideoAlways\' and method \'OnCheckedShortVideoAlways\'"

    const v1, 0x7f0a038f

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    const-string v0, "field \'sbShortVideoAlways\'"

    const-class v2, Landroid/widget/Switch;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->sbShortVideoAlways:Landroid/widget/Switch;

    .line 56
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a038f:Landroid/view/View;

    .line 57
    check-cast p2, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;

    .line 72
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->ivSync:Landroid/widget/ImageView;

    .line 73
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->sbShortVideoEnable:Landroid/widget/Switch;

    .line 74
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity;->sbShortVideoAlways:Landroid/widget/Switch;

    .line 76
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a0390:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a0390:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a038f:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ShortVideoActivity_ViewBinding;->view7f0a038f:Landroid/view/View;

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
