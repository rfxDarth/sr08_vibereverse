.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;
.super Ljava/lang/Object;
.source "FragmentData_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

.field private view7f0a020e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    .line 30
    const-string v0, "field \'llDate\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a024e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llDate:Landroid/widget/LinearLayout;

    .line 31
    const-string v0, "field \'llChart\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a024a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llChart:Landroid/widget/LinearLayout;

    .line 32
    const-string v0, "field \'tvChartStep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0479

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartStep:Landroid/widget/TextView;

    .line 33
    const-string v0, "field \'lcvStep\'"

    const-class v1, Llecho/lib/hellocharts/view/LineChartView;

    const v2, 0x7f0a022f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvStep:Llecho/lib/hellocharts/view/LineChartView;

    .line 34
    const-string v0, "field \'tvChartSleep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0477

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartSleep:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'ccvSleep\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 36
    const-string v0, "field \'tvChartSport\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0478

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartSport:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'lcvSport\'"

    const-class v1, Llecho/lib/hellocharts/view/LineChartView;

    const v2, 0x7f0a022e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvSport:Llecho/lib/hellocharts/view/LineChartView;

    .line 38
    const-string v0, "field \'tvChartHeart\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0475

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartHeart:Landroid/widget/TextView;

    .line 39
    const-string v0, "field \'lcvHeart\'"

    const-class v1, Llecho/lib/hellocharts/view/LineChartView;

    const v2, 0x7f0a022a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    const v0, 0x7f0a020e

    .line 40
    const-string v1, "method \'OnClickivShare\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;->view7f0a020e:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060025

    .line 50
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorDeep:I

    const v0, 0x7f060026

    .line 51
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorLight:I

    const v0, 0x7f06035a

    .line 52
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorWake:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    .line 62
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llDate:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llChart:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartStep:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvStep:Llecho/lib/hellocharts/view/LineChartView;

    .line 66
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartSleep:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 68
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartSport:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvSport:Llecho/lib/hellocharts/view/LineChartView;

    .line 70
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartHeart:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    .line 73
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;->view7f0a020e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;->view7f0a020e:Landroid/view/View;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
