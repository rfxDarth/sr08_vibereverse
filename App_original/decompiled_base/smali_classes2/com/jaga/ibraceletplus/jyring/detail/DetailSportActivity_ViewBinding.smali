.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailSportActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    .line 29
    const-string v0, "field \'ccvWalk\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00cb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 30
    const-string v0, "field \'ccvSport\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 31
    const-string v0, "field \'llDay\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a024f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->llDay:Landroid/widget/LinearLayout;

    .line 32
    const-string v0, "field \'llWeek\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0287

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->llWeek:Landroid/widget/LinearLayout;

    .line 33
    const-string v0, "field \'tvEmpty\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'lvSport\'"

    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a0295

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->lvSport:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    .line 44
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 45
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 46
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->llDay:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->llWeek:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->lvSport:Landroid/widget/ListView;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
