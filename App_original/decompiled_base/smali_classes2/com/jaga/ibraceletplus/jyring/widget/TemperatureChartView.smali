.class public Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;
.super Landroid/view/View;
.source "TemperatureChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;,
        Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;,
        Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;,
        Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;,
        Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;,
        Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;
    }
.end annotation


# instance fields
.field private autoAdjustYAxis:Z

.field private axisMargin:F

.field private axisTextColor:I

.field private axisTextPaint:Landroid/graphics/Paint;

.field private axisTextSize:F

.field private boldLinePaint:Landroid/graphics/Paint;

.field private borderColor:I

.field private borderWidth:F

.field private chartHeight:F

.field private chartWidth:F

.field private circlePointPaint:Landroid/graphics/Paint;

.field private currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

.field private dayDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;",
            ">;"
        }
    .end annotation
.end field

.field private dayFillPaint:Landroid/graphics/Paint;

.field private dayGradientEnd:I

.field private dayGradientStart:I

.field private dayLineColor:I

.field private dayLinePaint:Landroid/graphics/Paint;

.field private gridColor:I

.field private gridLeft:F

.field private gridPaint:Landroid/graphics/Paint;

.field private gridRight:F

.field private isUnitPrefix:Z

.field private lineWidth:F

.field private monthBarPaint:Landroid/graphics/Paint;

.field private monthBarWidth:F

.field private monthDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;",
            ">;"
        }
    .end annotation
.end field

.field private paddingBottom:F

.field private paddingLeft:F

.field private paddingRight:F

.field private paddingTop:F

.field private simpleMode:Z

.field private singlePointColor:I

.field private singlePointPaint:Landroid/graphics/Paint;

.field private unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

.field private weekBarPaint:Landroid/graphics/Paint;

.field private weekBarWidth:F

.field private weekDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;",
            ">;"
        }
    .end annotation
.end field

.field private weekMonthBarColor:I

.field private weekMonthCircleColor:I

.field private yAxisMax:F

.field private yAxisMin:F

.field private yAxisRange:F

.field private yAxisUnit:Ljava/lang/String;

.field private yAxisValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 113
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    .line 31
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x42140000    # 37.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x421c0000    # 39.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Float;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v5, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    .line 52
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 53
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    sub-float/2addr v4, v1

    .line 54
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisUnit:Ljava/lang/String;

    .line 58
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->isUnitPrefix:Z

    const v0, -0x333334

    .line 72
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridColor:I

    const v0, -0xbbbbbc

    .line 73
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextColor:I

    const v0, -0x777778

    .line 74
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderColor:I

    .line 75
    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLineColor:I

    .line 76
    const-string v1, "#80FF4081"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientStart:I

    .line 77
    iput v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientEnd:I

    .line 78
    const-string v1, "#42A5F5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthCircleColor:I

    .line 80
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointColor:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 83
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->lineWidth:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 84
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    const/high16 v1, 0x41700000    # 15.0f

    .line 85
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 86
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderWidth:F

    const/high16 v1, 0x42100000    # 36.0f

    .line 87
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextSize:F

    const/high16 v1, 0x42700000    # 60.0f

    .line 90
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingLeft:F

    const/high16 v3, 0x42c80000    # 100.0f

    .line 91
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingRight:F

    .line 92
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    const/high16 v1, 0x42a00000    # 80.0f

    .line 93
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingBottom:F

    .line 96
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisMargin:F

    .line 107
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    .line 109
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    .line 31
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x42140000    # 37.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x421c0000    # 39.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Float;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v5, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    .line 52
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 53
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    sub-float/2addr v4, v1

    .line 54
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisUnit:Ljava/lang/String;

    .line 58
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->isUnitPrefix:Z

    const v0, -0x333334

    .line 72
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridColor:I

    const v0, -0xbbbbbc

    .line 73
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextColor:I

    const v0, -0x777778

    .line 74
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderColor:I

    .line 75
    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLineColor:I

    .line 76
    const-string v1, "#80FF4081"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientStart:I

    .line 77
    iput v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientEnd:I

    .line 78
    const-string v1, "#42A5F5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthCircleColor:I

    .line 80
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointColor:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 83
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->lineWidth:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 84
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    const/high16 v1, 0x41700000    # 15.0f

    .line 85
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 86
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderWidth:F

    const/high16 v1, 0x42100000    # 36.0f

    .line 87
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextSize:F

    const/high16 v1, 0x42700000    # 60.0f

    .line 90
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingLeft:F

    const/high16 v3, 0x42c80000    # 100.0f

    .line 91
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingRight:F

    .line 92
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    const/high16 v1, 0x42a00000    # 80.0f

    .line 93
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingBottom:F

    .line 96
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisMargin:F

    .line 107
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    .line 109
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object p3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    .line 31
    sget-object p3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    .line 46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    .line 47
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    .line 48
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    .line 51
    new-instance p3, Ljava/util/ArrayList;

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x42140000    # 37.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Float;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v4, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    .line 52
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 53
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    sub-float/2addr v3, v0

    .line 54
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    .line 57
    const-string p3, ""

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisUnit:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->isUnitPrefix:Z

    const p3, -0x333334

    .line 72
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridColor:I

    const p3, -0xbbbbbc

    .line 73
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextColor:I

    const p3, -0x777778

    .line 74
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderColor:I

    .line 75
    const-string p3, "#FF4081"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLineColor:I

    .line 76
    const-string v0, "#80FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientStart:I

    .line 77
    iput v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientEnd:I

    .line 78
    const-string v0, "#42A5F5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    .line 79
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthCircleColor:I

    .line 80
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointColor:I

    const/high16 p3, 0x40c00000    # 6.0f

    .line 83
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->lineWidth:F

    const/high16 p3, 0x41a00000    # 20.0f

    .line 84
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 85
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 86
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderWidth:F

    const/high16 v0, 0x42100000    # 36.0f

    .line 87
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextSize:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 90
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingLeft:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 91
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingRight:F

    .line 92
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 93
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingBottom:F

    .line 96
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisMargin:F

    .line 107
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    .line 109
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adjustYAxisToCurrentData()V
    .locals 8

    .line 821
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->ordinal()I

    move-result v0

    const v1, -0x800001

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const v5, -0x800001

    goto/16 :goto_3

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const v5, -0x800001

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    if-eqz v6, :cond_2

    .line 845
    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_2

    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_2

    .line 846
    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 847
    iget v6, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const v5, -0x800001

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    if-eqz v6, :cond_4

    .line 837
    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_4

    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_4

    .line 838
    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 839
    iget v6, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_1

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const v5, -0x800001

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;

    if-eqz v6, :cond_6

    .line 829
    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;->temperature:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_6

    .line 830
    iget v7, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;->temperature:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 831
    iget v6, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;->temperature:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_2

    :cond_7
    :goto_3
    cmpl-float v0, v4, v2

    if-eqz v0, :cond_a

    cmpl-float v0, v5, v1

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    sub-float v0, v5, v4

    const v1, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_9
    sub-float/2addr v4, v1

    add-float/2addr v5, v1

    .line 870
    invoke-direct {p0, v4, v5}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->generateNiceYAxisValues(FF)V

    :cond_a
    :goto_4
    return-void
.end method

.method private buildSmoothPath(Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .line 539
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 541
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    move-object v4, p2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 542
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    move-object/from16 v11, p3

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 544
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 545
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    add-int/lit8 v3, v0, 0x1

    .line 546
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    const/high16 v5, 0x40c00000    # 6.0f

    if-nez v0, :cond_1

    .line 551
    iget v6, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    .line 552
    iget v7, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v0, -0x1

    .line 554
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    .line 555
    iget v7, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    iget v8, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    sub-float/2addr v7, v8

    .line 556
    iget v8, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    iget v6, v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    sub-float/2addr v8, v6

    .line 557
    iget v6, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 558
    iget v7, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 561
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    if-ne v0, v8, :cond_2

    .line 562
    iget v0, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    .line 563
    iget v2, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    move v8, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 565
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    .line 566
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    iget v9, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    sub-float/2addr v8, v9

    .line 567
    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    sub-float/2addr v0, v2

    .line 568
    iget v2, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    div-float/2addr v8, v5

    sub-float/2addr v2, v8

    .line 569
    iget v8, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    div-float/2addr v0, v5

    sub-float v0, v8, v0

    move v8, v0

    move v0, v2

    .line 572
    :goto_2
    iget v9, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    iget v10, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 573
    iget v9, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    iget v10, v12, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    move-object v4, v11

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v4, p2

    move-object/from16 v11, p3

    move v0, v3

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private drawContinuousSegment(Landroid/graphics/Canvas;Ljava/util/List;FFF)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;",
            ">;FFF)V"
        }
    .end annotation

    .line 510
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 512
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 513
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 515
    invoke-direct {p0, p2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->buildSmoothPath(Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 517
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 518
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    invoke-virtual {v1, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v2, 0x0

    .line 519
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    iget p2, p2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    invoke-virtual {v1, p2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 522
    new-instance v2, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientStart:I

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientEnd:I

    filled-new-array {p2, v3}, [I

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, p3

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 527
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 528
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 529
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayFillPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 532
    :cond_1
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDayMode(Landroid/graphics/Canvas;)V
    .locals 12

    .line 446
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 448
    :cond_0
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridLeft:F

    .line 449
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartHeight:F

    add-float v6, v5, v0

    .line 452
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 457
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;->temperature:F

    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_1

    int-to-float v8, v2

    .line 459
    iget v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    mul-float v8, v8, v9

    int-to-float v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 460
    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getYPos(F)F

    move-result v3

    .line 461
    new-instance v9, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    invoke-direct {v9, v8, v3, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;-><init>(FFI)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 469
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 472
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v3, v8, :cond_7

    .line 473
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    .line 475
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 476
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 478
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    .line 479
    iget v11, v8, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->index:I

    iget v10, v10, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->index:I

    add-int/2addr v10, v9

    if-ne v11, v10, :cond_5

    .line 480
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 482
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 483
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 486
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 491
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 492
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 496
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_9

    .line 497
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;

    .line 498
    iget v2, v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->lineWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object v2, p1

    goto :goto_4

    :cond_9
    move-object v1, p0

    move-object v2, p1

    .line 500
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->drawContinuousSegment(Landroid/graphics/Canvas;Ljava/util/List;FFF)V

    :goto_4
    move-object p1, v2

    goto :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 11

    .line 325
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 330
    :cond_0
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridLeft:F

    .line 331
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridRight:F

    .line 332
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    .line 333
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartHeight:F

    add-float v9, v7, v0

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 338
    invoke-direct {p0, v10}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getYPos(F)F

    move-result v3

    if-eqz v8, :cond_2

    .line 340
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridPaint:Landroid/graphics/Paint;

    move v5, v3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, p1

    .line 341
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->boldLinePaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 347
    :goto_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 348
    invoke-direct {p0, v10}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->formatYAxisLabel(F)Ljava/lang/String;

    move-result-object p1

    const/high16 v5, 0x41700000    # 15.0f

    add-float v6, v4, v5

    add-float/2addr v3, v5

    .line 349
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v6, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 353
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getXLabelPositions()Ljava/util/List;

    move-result-object p1

    .line 354
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 355
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    if-lez v0, :cond_4

    .line 356
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 357
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridPaint:Landroid/graphics/Paint;

    move v8, v6

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    :cond_4
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getXLabelText(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v3, v9

    .line 362
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private drawMonthMode(Landroid/graphics/Canvas;)V
    .locals 10

    .line 606
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 608
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridLeft:F

    const/4 v1, 0x0

    .line 611
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    goto :goto_3

    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    .line 616
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    mul-float v3, v3, v4

    add-float v5, v0, v3

    .line 618
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    if-nez v1, :cond_2

    goto :goto_1

    .line 621
    :cond_2
    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getYPos(F)F

    move-result v6

    .line 622
    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getYPos(F)F

    move-result v8

    .line 624
    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    .line 625
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarPaint:Landroid/graphics/Paint;

    move v7, v5

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 626
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 627
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v8, p1, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object v4, p1

    :goto_2
    move v1, v2

    move-object p1, v4

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private drawWeekMode(Landroid/graphics/Canvas;)V
    .locals 11

    .line 581
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 583
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridLeft:F

    .line 584
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 587
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    mul-float v4, v4, v1

    add-float v6, v0, v4

    .line 591
    iget v4, v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getYPos(F)F

    move-result v7

    .line 592
    iget v4, v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getYPos(F)F

    move-result v9

    .line 594
    iget v4, v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 595
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarPaint:Landroid/graphics/Paint;

    move v8, v6

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 596
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, p1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 597
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    div-float/2addr p1, v3

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v9, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, p1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object p1, v5

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private formatYAxisLabel(F)Ljava/lang/String;
    .locals 4

    float-to-int v0, p1

    int-to-float v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 374
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%.1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 377
    :goto_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->isUnitPrefix:Z

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisUnit:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateNiceYAxisValues(FF)V
    .locals 3

    sub-float v0, p2, p1

    const/4 v1, 0x4

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 887
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->getNiceInterval(F)F

    move-result v0

    div-float/2addr p1, v0

    float-to-double v1, p1

    .line 890
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float p1, p1, v0

    div-float/2addr p2, v0

    float-to-double v1, p2

    .line 891
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float p2, p2, v0

    .line 894
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    const v1, 0x3a83126f    # 0.001f

    add-float/2addr v1, p2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v2, p1, v1

    .line 897
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 898
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr p1, v0

    goto :goto_0

    .line 902
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 903
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 904
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    .line 905
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    :cond_1
    return-void
.end method

.method private getNiceInterval(F)F
    .locals 9

    float-to-double v0, p1

    .line 914
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 915
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr p1, v4

    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x40e00000    # 7.0f

    cmpg-float p1, p1, v4

    if-gez p1, :cond_2

    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x41200000    # 10.0f

    .line 928
    :goto_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method private getXLabelPositions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridLeft:F

    .line 393
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x5

    .line 405
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 407
    aget v5, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v5, v6

    .line 409
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    mul-float v5, v5, v6

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x7

    if-ge v3, v2, :cond_3

    int-to-float v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    .line 401
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    mul-float v2, v2, v4

    const/high16 v4, 0x40e00000    # 7.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v2, 0x4

    if-gt v3, v2, :cond_3

    int-to-float v2, v3

    .line 396
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    mul-float v2, v2, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40e00000    # 7.0f
        0x41700000    # 15.0f
        0x41b00000    # 22.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method private getXLabelText(I)Ljava/lang/String;
    .locals 7

    .line 417
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 428
    const-string p1, ""

    return-object p1

    :cond_0
    const/16 v0, 0x16

    const/16 v2, 0x1e

    const/4 v3, 0x7

    const/16 v4, 0xf

    .line 425
    filled-new-array {v1, v3, v4, v0, v2}, [I

    move-result-object v0

    .line 426
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 422
    :cond_1
    const-string/jumbo v5, "\u5468\u4e94"

    const-string/jumbo v6, "\u5468\u516d"

    const-string/jumbo v0, "\u5468\u65e5"

    const-string/jumbo v1, "\u5468\u4e00"

    const-string/jumbo v2, "\u5468\u4e8c"

    const-string/jumbo v3, "\u5468\u4e09"

    const-string/jumbo v4, "\u5468\u56db"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 423
    aget-object p1, v0, p1

    return-object p1

    .line 419
    :cond_2
    const-string v0, "18:00"

    const-string v1, "24:00"

    const-string v2, "00:00"

    const-string v3, "06:00"

    const-string v4, "12:00"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 420
    aget-object p1, v0, p1

    return-object p1
.end method

.method private getYPos(F)F
    .locals 3

    .line 436
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 437
    :cond_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    move p1, v1

    :cond_1
    sub-float/2addr p1, v0

    .line 438
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    div-float/2addr p1, v0

    .line 439
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartHeight:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 132
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/R$styleable;->TemperatureChartView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    .line 135
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridColor:I

    const/4 p2, 0x2

    .line 136
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextColor:I

    const/4 p2, 0x4

    .line 137
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderColor:I

    const/16 p2, 0xa

    .line 138
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLineColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLineColor:I

    const/16 p2, 0x9

    .line 139
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientStart:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientStart:I

    const/16 p2, 0x8

    .line 140
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientEnd:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientEnd:I

    const/16 p2, 0x16

    .line 141
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    const/16 p2, 0x17

    .line 142
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthCircleColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthCircleColor:I

    const/16 p2, 0x13

    .line 143
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointColor:I

    const/16 p2, 0xc

    .line 146
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->lineWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->lineWidth:F

    const/16 p2, 0x15

    .line 147
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    const/16 p2, 0xd

    .line 148
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    const/4 p2, 0x5

    .line 149
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderWidth:F

    const/4 p2, 0x3

    .line 150
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextSize:F

    const/16 p2, 0xf

    .line 153
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingLeft:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingLeft:F

    const/16 p2, 0x10

    .line 154
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingRight:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingRight:F

    const/16 p2, 0x11

    .line 155
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    const/16 p2, 0xe

    .line 156
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingBottom:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingBottom:F

    .line 159
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisMargin:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisMargin:F

    const/16 p2, 0x1b

    .line 162
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->parseYAxisValues(Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x19

    .line 167
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    const/16 p2, 0x18

    .line 168
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    const/16 p2, 0x1a

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisUnit:Ljava/lang/String;

    :cond_1
    const/16 p2, 0x14

    .line 176
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 177
    :goto_0
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->isUnitPrefix:Z

    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 180
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setAutoAdjustYAxis(Z)V

    const/16 p2, 0x12

    .line 182
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    .line 184
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    :cond_3
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->updateYAxisRange()V

    .line 190
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->initPaints()V

    return-void
.end method

.method private initPaints()V
    .locals 5

    .line 229
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridPaint:Landroid/graphics/Paint;

    .line 230
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    .line 236
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 238
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 240
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->boldLinePaint:Landroid/graphics/Paint;

    .line 241
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->boldLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->boldLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLinePaint:Landroid/graphics/Paint;

    .line 246
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->lineWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 251
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayFillPaint:Landroid/graphics/Paint;

    .line 252
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarPaint:Landroid/graphics/Paint;

    .line 255
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 258
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 260
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarPaint:Landroid/graphics/Paint;

    .line 261
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 266
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->circlePointPaint:Landroid/graphics/Paint;

    .line 267
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthCircleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->circlePointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 270
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointPaint:Landroid/graphics/Paint;

    .line 271
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private parseYAxisValues(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 200
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 201
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 202
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 206
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 210
    new-instance p1, Ljava/util/ArrayList;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x42140000    # 37.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x421c0000    # 39.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Float;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    return-void
.end method

.method private updateYAxisRange()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 220
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    .line 221
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    :cond_0
    return-void
.end method


# virtual methods
.method public isSimpleMode()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 302
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 304
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->drawGrid(Landroid/graphics/Canvas;)V

    .line 308
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->drawMonthMode(Landroid/graphics/Canvas;)V

    return-void

    .line 313
    :cond_2
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->drawWeekMode(Landroid/graphics/Canvas;)V

    return-void

    .line 310
    :cond_3
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->drawDayMode(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 279
    iget-boolean p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    if-eqz p3, :cond_0

    int-to-float p1, p1

    const/high16 p3, 0x42200000    # 40.0f

    sub-float p4, p1, p3

    .line 282
    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    int-to-float p2, p2

    sub-float/2addr p2, p3

    .line 283
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartHeight:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 284
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridLeft:F

    sub-float/2addr p1, p2

    .line 285
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridRight:F

    .line 287
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingLeft:F

    .line 288
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingRight:F

    .line 289
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    .line 290
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingBottom:F

    return-void

    :cond_0
    int-to-float p1, p1

    .line 293
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingLeft:F

    sub-float/2addr p1, p3

    iget p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingRight:F

    sub-float/2addr p1, p4

    iget p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisMargin:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p4

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartWidth:F

    int-to-float p2, p2

    .line 294
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingTop:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->paddingBottom:F

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->chartHeight:F

    add-float p2, p3, p4

    .line 295
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridLeft:F

    add-float/2addr p3, p4

    add-float/2addr p3, p1

    .line 296
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridRight:F

    return-void
.end method

.method public setAutoAdjustYAxis(Z)V
    .locals 0

    .line 809
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 812
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->adjustYAxisToCurrentData()V

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setColors(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;)V
    .locals 2

    .line 765
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->gridColor:I

    if-eqz v0, :cond_0

    .line 766
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->gridColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridColor:I

    .line 767
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 769
    :cond_0
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->axisTextColor:I

    if-eqz v0, :cond_1

    .line 770
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->axisTextColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextColor:I

    .line 771
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->axisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    :cond_1
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->borderColor:I

    if-eqz v0, :cond_2

    .line 774
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->borderColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->borderColor:I

    .line 775
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->boldLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    :cond_2
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->dayLineColor:I

    if-eqz v0, :cond_3

    .line 778
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->dayLineColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLineColor:I

    .line 779
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    :cond_3
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->dayGradientStart:I

    if-eqz v0, :cond_4

    .line 782
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->dayGradientStart:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientStart:I

    .line 784
    :cond_4
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->dayGradientEnd:I

    if-eqz v0, :cond_5

    .line 785
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->dayGradientEnd:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayGradientEnd:I

    .line 787
    :cond_5
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->weekMonthBarColor:I

    if-eqz v0, :cond_6

    .line 788
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->weekMonthBarColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    .line 789
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 790
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 792
    :cond_6
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->weekMonthCircleColor:I

    if-eqz v0, :cond_7

    .line 793
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->weekMonthCircleColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekMonthCircleColor:I

    .line 794
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 796
    :cond_7
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->singlePointColor:I

    if-eqz v0, :cond_8

    .line 797
    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ColorConfig;->singlePointColor:I

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointColor:I

    .line 798
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->singlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 800
    :cond_8
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setDayData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;",
            ">;)V"
        }
    .end annotation

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->dayDataList:Ljava/util/List;

    .line 724
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->adjustYAxisToCurrentData()V

    .line 727
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    if-ne p1, v0, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    .line 715
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->adjustYAxisToCurrentData()V

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setMonthBarWidth(F)V
    .locals 1

    .line 759
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarWidth:F

    .line 760
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 761
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setMonthData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;",
            ">;)V"
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->monthDataList:Ljava/util/List;

    .line 744
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->adjustYAxisToCurrentData()V

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    if-ne p1, v0, :cond_1

    .line 748
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSimpleMode(Z)V
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    if-eq v0, p1, :cond_0

    .line 934
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->simpleMode:Z

    .line 935
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->requestLayout()V

    .line 936
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setUnitPosition(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;)V
    .locals 1

    .line 659
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->PREFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->isUnitPrefix:Z

    .line 660
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setUnitPrefix(Z)V
    .locals 0

    .line 650
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->isUnitPrefix:Z

    .line 651
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setWeekBarWidth(F)V
    .locals 1

    .line 753
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarWidth:F

    .line 754
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 755
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setWeekData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;",
            ">;)V"
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->weekDataList:Ljava/util/List;

    .line 734
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->adjustYAxisToCurrentData()V

    .line 737
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->WEEK:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    if-ne p1, v0, :cond_1

    .line 738
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setYAxis(FF[F)V
    .locals 4

    .line 695
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 696
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    sub-float v0, p2, p1

    .line 697
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    .line 699
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 700
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p3, v1

    cmpl-float v3, v2, p1

    if-ltz v3, :cond_0

    cmpg-float v3, v2, p2

    if-gtz v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setYAxisMax(F)V
    .locals 1

    .line 689
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    .line 690
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    .line 691
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setYAxisMin(F)V
    .locals 1

    .line 683
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMin:F

    .line 684
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisMax:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisRange:F

    .line 685
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setYAxisUnit(Ljava/lang/String;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisUnit:Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setYAxisValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    .line 678
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->updateYAxisRange()V

    .line 679
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method

.method public setYAxisValues([F)V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 669
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 670
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->yAxisValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->updateYAxisRange()V

    .line 673
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->invalidate()V

    return-void
.end method
