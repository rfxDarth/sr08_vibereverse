.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailBloodSugarActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

.field private view7f0a01e7:Landroid/view/View;

.field private view7f0a01e8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    .line 34
    const-string v0, "field \'lcvHeart\'"

    const-class v1, Llecho/lib/hellocharts/view/LineChartView;

    const v2, 0x7f0a022a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    .line 35
    const-string v0, "field \'tvSugarMax\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0520

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMax:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tvSugarMin\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0522

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMin:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvSugarOffset\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0524

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffset:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'tvSugarAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a051e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvg:Landroid/widget/TextView;

    .line 39
    const-string v0, "field \'tvSugarMaxUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0521

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMaxUnit:Landroid/widget/TextView;

    .line 40
    const-string v0, "field \'tvSugarMinUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0523

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMinUnit:Landroid/widget/TextView;

    .line 41
    const-string v0, "field \'tvSugarOffsetUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0525

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffsetUnit:Landroid/widget/TextView;

    .line 42
    const-string v0, "field \'tvSugarAvgUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a051f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvgUnit:Landroid/widget/TextView;

    .line 43
    const-string v0, "field \'tvEmpty\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvEmpty:Landroid/widget/TextView;

    .line 44
    const-string v0, "field \'cvSample0\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a011a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample0:Landroidx/cardview/widget/CardView;

    .line 45
    const-string v0, "field \'cvSample1\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a011b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample1:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a01e8

    .line 46
    const-string v1, "method \'OnClickDatePrev\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01e7

    .line 54
    const-string v1, "method \'OnClickDateNext\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    .line 71
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    .line 72
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMax:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMin:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffset:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvg:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMaxUnit:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMinUnit:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffsetUnit:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvgUnit:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvEmpty:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample0:Landroidx/cardview/widget/CardView;

    .line 82
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample1:Landroidx/cardview/widget/CardView;

    .line 84
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
