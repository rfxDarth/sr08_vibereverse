.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailHeartActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;

.field private view7f0a01e7:Landroid/view/View;

.field private view7f0a01e8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;

    .line 33
    const-string v0, "field \'lcvHeart\'"

    const-class v1, Llecho/lib/hellocharts/view/LineChartView;

    const v2, 0x7f0a022a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    .line 34
    const-string v0, "field \'tvStep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0519

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvStep:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0495

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDistance:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tvCalorie\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0470

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvCalorie:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0535

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvTime:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'tvEmpty\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvEmpty:Landroid/widget/TextView;

    const v0, 0x7f0a01e8

    .line 39
    const-string v1, "method \'OnClickDatePrev\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01e7

    .line 47
    const-string v1, "method \'OnClickDateNext\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;

    .line 64
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    .line 65
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvStep:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDistance:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvCalorie:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvTime:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvEmpty:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
