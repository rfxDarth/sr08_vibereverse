.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailBodyTemperatureActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

.field private view7f0a01e7:Landroid/view/View;

.field private view7f0a01e8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    .line 33
    const-string v0, "field \'tvEmpty\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'tvEmpty2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04a0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty2:Landroid/widget/TextView;

    const v0, 0x7f0a01e8

    .line 35
    const-string v1, "method \'OnClickDatePrev\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01e7

    .line 43
    const-string v1, "method \'OnClickDateNext\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    .line 60
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty2:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
