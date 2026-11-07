.class public Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;
.super Ljava/lang/Object;
.source "SmartTooltipHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartTooltipHelper"


# instance fields
.field private final chart:Llecho/lib/hellocharts/view/LineChartView;

.field private final container:Landroid/view/ViewGroup;

.field private isTouching:Z

.field private lastSelectedValue:Llecho/lib/hellocharts/model/PointValue;

.field private final safeMargin:I

.field private final tooltipHeight:I

.field private final tooltipTextView:Landroid/widget/TextView;

.field private final tooltipView:Landroid/view/View;

.field private final tooltipWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Landroid/view/ViewGroup;I)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->isTouching:Z

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->lastSelectedValue:Llecho/lib/hellocharts/model/PointValue;

    .line 34
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->chart:Llecho/lib/hellocharts/view/LineChartView;

    .line 35
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->container:Landroid/view/ViewGroup;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    const p4, 0x7f0a043f

    .line 39
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipTextView:Landroid/widget/TextView;

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 44
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 42
    invoke-virtual {p3, p4, v0}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipWidth:I

    .line 47
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipHeight:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41800000    # 16.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->safeMargin:I

    .line 52
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;

    invoke-direct {p1, p0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;)V

    invoke-virtual {p2, p1}, Llecho/lib/hellocharts/view/LineChartView;->setOnValueTouchListener(Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;)V

    .line 55
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)V

    invoke-virtual {p2, p1}, Llecho/lib/hellocharts/view/LineChartView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->isTouching:Z

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->isTouching:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)Llecho/lib/hellocharts/model/PointValue;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->lastSelectedValue:Llecho/lib/hellocharts/model/PointValue;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Llecho/lib/hellocharts/model/PointValue;)Llecho/lib/hellocharts/model/PointValue;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->lastSelectedValue:Llecho/lib/hellocharts/model/PointValue;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Llecho/lib/hellocharts/model/PointValue;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->showTooltip(Llecho/lib/hellocharts/model/PointValue;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->hideTooltip()V

    return-void
.end method

.method private calculateTooltipPosition(Landroid/graphics/Point;II)[I
    .locals 4

    .line 135
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, p2, 0x3

    if-ge v0, v1, :cond_0

    .line 137
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->safeMargin:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 138
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_1

    .line 140
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->safeMargin:I

    goto :goto_0

    .line 143
    :cond_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipWidth:I

    div-int/lit8 v1, v1, 0x2

    :goto_0
    sub-int/2addr v0, v1

    .line 147
    :goto_1
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->safeMargin:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipWidth:I

    sub-int/2addr p2, v2

    sub-int/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 150
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipHeight:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->safeMargin:I

    sub-int/2addr v0, v2

    if-ge v0, v2, :cond_2

    .line 155
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->safeMargin:I

    add-int v0, p1, p3

    goto :goto_2

    :cond_2
    add-int p1, v0, v1

    sub-int v3, p3, v2

    if-le p1, v3, :cond_3

    sub-int/2addr p3, v1

    sub-int v0, p3, v2

    .line 162
    :cond_3
    :goto_2
    filled-new-array {p2, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method private hideTooltip()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showTooltip(Llecho/lib/hellocharts/model/PointValue;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->chart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/LineChartView;->getLeft()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->chart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getTop()I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->chart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/LineChartView;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    .line 104
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->chart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v3}, Llecho/lib/hellocharts/view/LineChartView;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v3

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    float-to-int v2, v3

    add-int/2addr v1, v2

    .line 111
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->container:Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->container:Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 111
    invoke-direct {p0, v2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->calculateTooltipPosition(Landroid/graphics/Point;II)[I

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    .line 119
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo p1, "\u503c: %.1f"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->tooltipView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public handleChartScroll()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->isTouching:Z

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->hideTooltip()V

    :cond_0
    return-void
.end method
