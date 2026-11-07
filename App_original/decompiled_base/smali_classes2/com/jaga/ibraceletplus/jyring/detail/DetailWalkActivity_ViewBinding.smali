.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailWalkActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

.field private view7f0a01e7:Landroid/view/View;

.field private view7f0a01e8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    .line 34
    const-string v0, "field \'ccvWalk\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00cb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 35
    const-string v0, "field \'tvStep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0519

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStep:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tvCurSteps\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0487

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurSteps:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0495

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistance:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'tvCurDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0486

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurDistance:Landroid/widget/TextView;

    .line 39
    const-string v0, "field \'tvCalorie\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0470

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCalorie:Landroid/widget/TextView;

    .line 40
    const-string v0, "field \'tvCurCalories\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0485

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurCalories:Landroid/widget/TextView;

    .line 41
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0535

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTime:Landroid/widget/TextView;

    .line 42
    const-string v0, "field \'tvEmpty\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvEmpty:Landroid/widget/TextView;

    .line 43
    const-string v0, "field \'tvUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0540

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvUnit:Landroid/widget/TextView;

    .line 44
    const-string v0, "field \'tvDistanceUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0498

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistanceUnit:Landroid/widget/TextView;

    .line 45
    const-string v0, "field \'tvStepUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a051c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit:Landroid/widget/TextView;

    .line 46
    const-string v0, "field \'tvStepUnit2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a051d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit2:Landroid/widget/TextView;

    .line 47
    const-string v0, "field \'tvTargetSteps\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a052c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetSteps:Landroid/widget/TextView;

    .line 48
    const-string v0, "field \'tvTargetCalories\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0528

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetCalories:Landroid/widget/TextView;

    .line 49
    const-string v0, "field \'tvTargetDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0529

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetDistance:Landroid/widget/TextView;

    .line 50
    const-string v0, "field \'pbStep\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0320

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbStep:Landroid/widget/ProgressBar;

    .line 51
    const-string v0, "field \'pbCalories\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0317

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbCalories:Landroid/widget/ProgressBar;

    .line 52
    const-string v0, "field \'pbDistance\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0319

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbDistance:Landroid/widget/ProgressBar;

    .line 53
    const-string v0, "field \'tvDetailInfo\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a048d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDetailInfo:Landroid/widget/TextView;

    const v0, 0x7f0a01e8

    .line 54
    const-string v1, "method \'OnClickDatePrev\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01e7

    .line 62
    const-string v1, "method \'OnClickDateNext\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    .line 79
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 80
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStep:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurSteps:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistance:Landroid/widget/TextView;

    .line 83
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurDistance:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCalorie:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurCalories:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTime:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvEmpty:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvUnit:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistanceUnit:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit2:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetSteps:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetCalories:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetDistance:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbStep:Landroid/widget/ProgressBar;

    .line 96
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbCalories:Landroid/widget/ProgressBar;

    .line 97
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbDistance:Landroid/widget/ProgressBar;

    .line 98
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDetailInfo:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
