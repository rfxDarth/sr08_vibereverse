.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NotifyActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

.field private view7f0a020d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    .line 30
    const-string v0, "field \'lvNotify\'"

    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a0292

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->lvNotify:Landroid/widget/ListView;

    const v0, 0x7f0a020d

    .line 31
    const-string v1, "method \'OnClickivSetting\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;->view7f0a020d:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    .line 48
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->lvNotify:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;->view7f0a020d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity_ViewBinding;->view7f0a020d:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
