.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgShareActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;

    .line 28
    const-string v0, "field \'svEcg0\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    const v2, 0x7f0a0403

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->svEcg0:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 29
    const-string v0, "field \'svEcg1\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    const v2, 0x7f0a0404

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 30
    const-string v0, "field \'svEcg2\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    const v2, 0x7f0a0405

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->svEcg2:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 31
    const-string v0, "field \'egBackground\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;

    const v2, 0x7f0a0162

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->egBackground:Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;

    .line 32
    const-string v0, "field \'tvGender\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04ab

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvGender:Landroid/widget/TextView;

    .line 33
    const-string v0, "field \'tvAge\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a044f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvAge:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'tvHeight\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvHeight:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvWeight\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a054e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvWeight:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tvHeart\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvHeart:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0535

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;

    .line 47
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->svEcg0:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 48
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 49
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->svEcg2:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 50
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->egBackground:Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;

    .line 51
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvGender:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvAge:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvHeight:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvWeight:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvHeart:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvTime:Landroid/widget/TextView;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
