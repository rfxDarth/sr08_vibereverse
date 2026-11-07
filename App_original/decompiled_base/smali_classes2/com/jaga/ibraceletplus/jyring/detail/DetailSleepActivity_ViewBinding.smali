.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailSleepActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

.field private view7f0a01e7:Landroid/view/View;

.field private view7f0a01e8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;Landroid/view/View;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    .line 36
    const-string v0, "field \'ccvWalk\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00cb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 37
    const-string v0, "field \'tvDeepSleep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a048a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleep:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'tvLightSleep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04c5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleep:Landroid/widget/TextView;

    .line 39
    const-string v0, "field \'tvAwakeSleep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0458

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleep:Landroid/widget/TextView;

    .line 40
    const-string v0, "field \'tvDeepSleepTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a048b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleepTitle:Landroid/widget/TextView;

    .line 41
    const-string v0, "field \'tvLightSleepTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04c6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleepTitle:Landroid/widget/TextView;

    .line 42
    const-string v0, "field \'tvAwakeSleepTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0459

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleepTitle:Landroid/widget/TextView;

    .line 43
    const-string v0, "field \'tvTotalSleepTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a053e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvTotalSleepTime:Landroid/widget/TextView;

    .line 44
    const-string v0, "field \'tvSleepStartTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a050e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepStartTime:Landroid/widget/TextView;

    .line 45
    const-string v0, "field \'tvSleepEndTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a050c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepEndTime:Landroid/widget/TextView;

    .line 46
    const-string v0, "field \'tvSleepQuality\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a050d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepQuality:Landroid/widget/TextView;

    .line 47
    const-string v0, "field \'lcvSleep\'"

    const-class v1, Llecho/lib/hellocharts/view/LineChartView;

    const v2, 0x7f0a022d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    .line 48
    const-string v0, "field \'llDay\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a024f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llDay:Landroid/widget/LinearLayout;

    .line 49
    const-string v0, "field \'llWeek\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0287

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llWeek:Landroid/widget/LinearLayout;

    .line 50
    const-string v0, "field \'tvEmpty\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvEmpty:Landroid/widget/TextView;

    .line 51
    const-string v0, "field \'pbSleepDeep\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a031e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepDeep:Landroid/widget/ProgressBar;

    .line 52
    const-string v0, "field \'pbSleepLight\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a031f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepLight:Landroid/widget/ProgressBar;

    .line 53
    const-string v0, "field \'pbSleepAwake\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a031d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepAwake:Landroid/widget/ProgressBar;

    .line 54
    const-string v0, "field \'llSleepStartTime\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0279

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepStartTime:Landroid/widget/LinearLayout;

    .line 55
    const-string v0, "field \'llSleepEndTime\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0278

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepEndTime:Landroid/widget/LinearLayout;

    .line 56
    const-string v0, "field \'tvSleepTotalDuration\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a050f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepTotalDuration:Landroid/widget/TextView;

    const v0, 0x7f0a01e8

    .line 57
    const-string v1, "method \'OnClickDatePrev\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01e7

    .line 65
    const-string v1, "method \'OnClickDateNext\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    .line 82
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 83
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleep:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleep:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleep:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleepTitle:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleepTitle:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleepTitle:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvTotalSleepTime:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepStartTime:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepEndTime:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepQuality:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    .line 94
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llDay:Landroid/widget/LinearLayout;

    .line 95
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llWeek:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvEmpty:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepDeep:Landroid/widget/ProgressBar;

    .line 98
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepLight:Landroid/widget/ProgressBar;

    .line 99
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepAwake:Landroid/widget/ProgressBar;

    .line 100
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepStartTime:Landroid/widget/LinearLayout;

    .line 101
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepEndTime:Landroid/widget/LinearLayout;

    .line 102
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepTotalDuration:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->view7f0a01e8:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity_ViewBinding;->view7f0a01e7:Landroid/view/View;

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
