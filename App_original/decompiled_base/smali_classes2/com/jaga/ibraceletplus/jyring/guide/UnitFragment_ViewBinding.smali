.class public Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;
.super Ljava/lang/Object;
.source "UnitFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;

.field private view7f0a04d2:Landroid/view/View;

.field private view7f0a0542:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;Landroid/view/View;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;

    .line 27
    const-string v0, "field \'tvMetric\' and method \'onTvMetricClicked\'"

    const v1, 0x7f0a04d2

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    const-string v2, "field \'tvMetric\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvMetric:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->view7f0a04d2:Landroid/view/View;

    .line 30
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const-string v0, "field \'tvUs\' and method \'onTvUsClicked\'"

    const v1, 0x7f0a0542

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    const-string v0, "field \'tvUs\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvUs:Landroid/widget/TextView;

    .line 38
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->view7f0a0542:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;

    .line 54
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvMetric:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvUs:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->view7f0a04d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->view7f0a04d2:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->view7f0a0542:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;->view7f0a0542:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
