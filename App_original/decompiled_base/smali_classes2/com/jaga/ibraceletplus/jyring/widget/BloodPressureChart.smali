.class public Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;
.super Landroid/view/View;
.source "BloodPressureChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;,
        Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;,
        Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;,
        Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;,
        Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;,
        Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$PointF;
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

.field private currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

.field private dayBarColor:I

.field private dayBarPaint:Landroid/graphics/Paint;

.field private dayBarWidth:F

.field private dayDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;",
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
            "Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;",
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

.field private unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

.field private weekBarPaint:Landroid/graphics/Paint;

.field private weekBarWidth:F

.field private weekDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;",
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

    .line 118
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    .line 32
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    .line 53
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

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    .line 54
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 55
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    sub-float/2addr v4, v1

    .line 56
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisUnit:Ljava/lang/String;

    .line 60
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->isUnitPrefix:Z

    const v0, -0x333334

    .line 75
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridColor:I

    const v0, -0xbbbbbc

    .line 76
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextColor:I

    const v0, -0x777778

    .line 77
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderColor:I

    .line 78
    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLineColor:I

    .line 79
    const-string v1, "#80FF4081"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientStart:I

    .line 80
    iput v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientEnd:I

    .line 81
    const-string v1, "#42A5F5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    .line 82
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthCircleColor:I

    .line 83
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointColor:I

    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 87
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->lineWidth:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 88
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    const/high16 v1, 0x41700000    # 15.0f

    .line 89
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    .line 90
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 91
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderWidth:F

    const/high16 v1, 0x42100000    # 36.0f

    .line 92
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextSize:F

    const/high16 v1, 0x42700000    # 60.0f

    .line 95
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingLeft:F

    const/high16 v3, 0x42c80000    # 100.0f

    .line 96
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingRight:F

    .line 97
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    const/high16 v1, 0x42a00000    # 80.0f

    .line 98
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingBottom:F

    .line 101
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisMargin:F

    .line 112
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    .line 114
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    .line 32
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    .line 53
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

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    .line 54
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 55
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    sub-float/2addr v4, v1

    .line 56
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisUnit:Ljava/lang/String;

    .line 60
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->isUnitPrefix:Z

    const v0, -0x333334

    .line 75
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridColor:I

    const v0, -0xbbbbbc

    .line 76
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextColor:I

    const v0, -0x777778

    .line 77
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderColor:I

    .line 78
    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLineColor:I

    .line 79
    const-string v1, "#80FF4081"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientStart:I

    .line 80
    iput v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientEnd:I

    .line 81
    const-string v1, "#42A5F5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    .line 82
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthCircleColor:I

    .line 83
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointColor:I

    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 87
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->lineWidth:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 88
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    const/high16 v1, 0x41700000    # 15.0f

    .line 89
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    .line 90
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 91
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderWidth:F

    const/high16 v1, 0x42100000    # 36.0f

    .line 92
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextSize:F

    const/high16 v1, 0x42700000    # 60.0f

    .line 95
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingLeft:F

    const/high16 v3, 0x42c80000    # 100.0f

    .line 96
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingRight:F

    .line 97
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    const/high16 v1, 0x42a00000    # 80.0f

    .line 98
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingBottom:F

    .line 101
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisMargin:F

    .line 112
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    .line 114
    iput-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object p3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    .line 32
    sget-object p3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->unitPosition:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

    .line 48
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    .line 49
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    .line 50
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    .line 53
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

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    .line 54
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 55
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    sub-float/2addr v3, v0

    .line 56
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 59
    const-string p3, ""

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisUnit:Ljava/lang/String;

    .line 60
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->isUnitPrefix:Z

    const p3, -0x333334

    .line 75
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridColor:I

    const p3, -0xbbbbbc

    .line 76
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextColor:I

    const p3, -0x777778

    .line 77
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderColor:I

    .line 78
    const-string p3, "#FF4081"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLineColor:I

    .line 79
    const-string v0, "#80FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientStart:I

    .line 80
    iput v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientEnd:I

    .line 81
    const-string v0, "#42A5F5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    .line 82
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthCircleColor:I

    .line 83
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointColor:I

    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    const/high16 p3, 0x40c00000    # 6.0f

    .line 87
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->lineWidth:F

    const/high16 p3, 0x41a00000    # 20.0f

    .line 88
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 89
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    .line 90
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 91
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderWidth:F

    const/high16 v0, 0x42100000    # 36.0f

    .line 92
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextSize:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 95
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingLeft:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 96
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingRight:F

    .line 97
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 98
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingBottom:F

    .line 101
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisMargin:F

    .line 112
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    .line 114
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adjustYAxisToCurrentData()V
    .locals 7

    .line 796
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->ordinal()I

    move-result v0

    const v1, -0x800001

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    goto/16 :goto_3

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;

    if-eqz v5, :cond_2

    .line 821
    iget v6, v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->minTemp:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 822
    iget v5, v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->maxTemp:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_0

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;

    if-eqz v5, :cond_4

    .line 813
    iget v6, v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->minTemp:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 814
    iget v5, v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->maxTemp:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;

    if-eqz v5, :cond_6

    .line 805
    iget v6, v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;->minTemp:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 806
    iget v5, v5, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;->maxTemp:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_2

    :cond_7
    :goto_3
    cmpl-float v0, v3, v2

    if-eqz v0, :cond_c

    cmpl-float v0, v4, v1

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    sub-float v0, v4, v3

    const v1, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_9
    sub-float/2addr v3, v1

    cmpg-float v0, v3, v5

    if-gez v0, :cond_a

    goto :goto_4

    :cond_a
    move v5, v3

    :goto_4
    add-float/2addr v4, v1

    cmpg-float v0, v4, v5

    if-gtz v0, :cond_b

    add-float v4, v5, v2

    .line 843
    :cond_b
    invoke-direct {p0, v5, v4}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->generateNiceYAxisValues(FF)V

    :cond_c
    :goto_5
    return-void
.end method

.method private drawDayMode(Landroid/graphics/Canvas;)V
    .locals 12

    .line 501
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 503
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridLeft:F

    .line 505
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

    const/16 v2, 0x18

    int-to-float v3, v2

    div-float/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 509
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 510
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    mul-float v5, v5, v1

    add-float v7, v0, v5

    .line 515
    iget v5, v4, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;->minTemp:F

    invoke-direct {p0, v5}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getYPos(F)F

    move-result v8

    .line 516
    iget v5, v4, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;->maxTemp:F

    invoke-direct {p0, v5}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getYPos(F)F

    move-result v10

    .line 518
    iget v5, v4, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;->minTemp:F

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    iget v4, v4, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;->maxTemp:F

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 519
    iget-object v11, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    move v9, v7

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 520
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8, p1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 521
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    div-float/2addr p1, v4

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v10, p1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v6, p1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object p1, v6

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 11

    .line 383
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 387
    :cond_0
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridLeft:F

    .line 388
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridRight:F

    .line 389
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    .line 390
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartHeight:F

    add-float v9, v7, v0

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 393
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 395
    invoke-direct {p0, v10}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getYPos(F)F

    move-result v3

    if-eqz v8, :cond_2

    .line 397
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_1

    goto :goto_1

    .line 400
    :cond_1
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridPaint:Landroid/graphics/Paint;

    move v5, v3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, p1

    .line 398
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->boldLinePaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    :goto_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 404
    invoke-direct {p0, v10}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->formatYAxisLabel(F)Ljava/lang/String;

    move-result-object p1

    const/high16 v5, 0x41700000    # 15.0f

    add-float v6, v4, v5

    add-float/2addr v3, v5

    .line 405
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v6, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 409
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getXLabelPositions()Ljava/util/List;

    move-result-object p1

    .line 410
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    if-lez v0, :cond_4

    .line 412
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 413
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridPaint:Landroid/graphics/Paint;

    move v8, v6

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 416
    :cond_4
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 417
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getXLabelText(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v3, v9

    .line 418
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private drawMonthMode(Landroid/graphics/Canvas;)V
    .locals 10

    .line 558
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 560
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridLeft:F

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    .line 566
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 567
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v2, v2

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v2, v4

    .line 572
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

    mul-float v2, v2, v4

    add-float v5, v0, v2

    .line 573
    iget v2, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->minTemp:F

    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getYPos(F)F

    move-result v6

    .line 574
    iget v2, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->maxTemp:F

    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getYPos(F)F

    move-result v8

    .line 576
    iget v2, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->minTemp:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    iget v2, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->maxTemp:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 577
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarPaint:Landroid/graphics/Paint;

    move v7, v5

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 578
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 579
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v8, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v4, p1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method private drawWeekMode(Landroid/graphics/Canvas;)V
    .locals 11

    .line 530
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 532
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridLeft:F

    .line 533
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_4

    .line 537
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 538
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    mul-float v4, v4, v1

    add-float v6, v0, v4

    .line 543
    iget v4, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->minTemp:F

    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getYPos(F)F

    move-result v7

    .line 544
    iget v4, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->maxTemp:F

    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getYPos(F)F

    move-result v9

    .line 546
    iget v4, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->minTemp:F

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;->maxTemp:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 547
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarPaint:Landroid/graphics/Paint;

    move v8, v6

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 548
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, p1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 549
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    div-float/2addr p1, v3

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v9, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v5, p1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object p1, v5

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method private ensureNonNegativeYAxis()V
    .locals 3

    .line 268
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 269
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 270
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 271
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    .line 273
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    sub-float v2, v0, v1

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 275
    invoke-direct {p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->generateNiceYAxisValues(FF)V

    :cond_1
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

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%.1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 433
    :goto_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->isUnitPrefix:Z

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 436
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisUnit:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateNiceYAxisValues(FF)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    cmpg-float v1, p2, p1

    if-gtz v1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    :cond_1
    sub-float v1, p2, p1

    const/4 v2, 0x4

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 857
    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->getNiceInterval(F)F

    move-result v1

    div-float/2addr p1, v1

    float-to-double v2, p1

    .line 859
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float p1, p1, v1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    div-float/2addr p2, v1

    float-to-double p1, p2

    .line 861
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p1, p1, v1

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_3

    add-float p1, v0, v1

    .line 864
    :cond_3
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :goto_1
    const p2, 0x3a83126f    # 0.001f

    add-float/2addr p2, p1

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_4

    const/high16 p2, 0x41200000    # 10.0f

    mul-float v2, v0, p2

    .line 866
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    .line 867
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v0, v1

    goto :goto_1

    .line 870
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 871
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 872
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    .line 873
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    :cond_5
    return-void
.end method

.method private getNiceInterval(F)F
    .locals 9

    float-to-double v0, p1

    .line 881
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 882
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

    .line 895
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

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridLeft:F

    .line 447
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->ordinal()I

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

    .line 460
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 462
    aget v5, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v5, v6

    .line 464
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

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

    .line 456
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

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

    .line 451
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

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

    .line 472
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 483
    const-string p1, ""

    return-object p1

    :cond_0
    const/16 v0, 0x16

    const/16 v2, 0x1e

    const/4 v3, 0x7

    const/16 v4, 0xf

    .line 480
    filled-new-array {v1, v3, v4, v0, v2}, [I

    move-result-object v0

    .line 481
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 477
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

    .line 478
    aget-object p1, v0, p1

    return-object p1

    .line 474
    :cond_2
    const-string v0, "18:00"

    const-string v1, "24:00"

    const-string v2, "00:00"

    const-string v3, "06:00"

    const-string v4, "12:00"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 475
    aget-object p1, v0, p1

    return-object p1
.end method

.method private getYPos(F)F
    .locals 3

    .line 491
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 492
    :cond_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    move p1, v1

    :cond_1
    sub-float/2addr p1, v0

    .line 493
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    div-float/2addr p1, v0

    .line 494
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartHeight:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 137
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/R$styleable;->TemperatureChartView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    .line 140
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridColor:I

    const/4 p2, 0x2

    .line 141
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextColor:I

    const/4 p2, 0x4

    .line 142
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderColor:I

    const/16 p2, 0xa

    .line 143
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLineColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLineColor:I

    const/16 p2, 0x9

    .line 144
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientStart:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientStart:I

    const/16 p2, 0x8

    .line 145
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientEnd:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientEnd:I

    const/16 p2, 0x16

    .line 146
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    const/16 p2, 0x17

    .line 147
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthCircleColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthCircleColor:I

    const/16 p2, 0x13

    .line 148
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointColor:I

    const/4 p2, 0x6

    .line 150
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    const/16 p2, 0xc

    .line 153
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->lineWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->lineWidth:F

    const/16 p2, 0x15

    .line 154
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    const/16 p2, 0xd

    .line 155
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    const/4 p2, 0x7

    .line 157
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    const/4 p2, 0x5

    .line 158
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderWidth:F

    const/4 p2, 0x3

    .line 159
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextSize:F

    const/16 p2, 0xf

    .line 162
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingLeft:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingLeft:F

    const/16 p2, 0x10

    .line 163
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingRight:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingRight:F

    const/16 p2, 0x11

    .line 164
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    const/16 p2, 0xe

    .line 165
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingBottom:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingBottom:F

    .line 168
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisMargin:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisMargin:F

    const/16 p2, 0x1b

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->parseYAxisValues(Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x19

    .line 176
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    const/16 p2, 0x18

    .line 177
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    const/16 p2, 0x1a

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisUnit:Ljava/lang/String;

    :cond_1
    const/16 p2, 0x14

    .line 185
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 186
    :goto_0
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->isUnitPrefix:Z

    .line 188
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 189
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->setAutoAdjustYAxis(Z)V

    const/16 p2, 0x12

    .line 191
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    .line 193
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    :cond_3
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->ensureNonNegativeYAxis()V

    .line 200
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->updateYAxisRange()V

    .line 202
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->initPaints()V

    return-void
.end method

.method private initPaints()V
    .locals 5

    .line 283
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridPaint:Landroid/graphics/Paint;

    .line 284
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 287
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 289
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    .line 290
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->boldLinePaint:Landroid/graphics/Paint;

    .line 295
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->boldLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 297
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->boldLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLinePaint:Landroid/graphics/Paint;

    .line 300
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->lineWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 303
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 305
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayFillPaint:Landroid/graphics/Paint;

    .line 306
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarPaint:Landroid/graphics/Paint;

    .line 309
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 312
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 314
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarPaint:Landroid/graphics/Paint;

    .line 315
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 321
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    .line 322
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 327
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    .line 328
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthCircleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointPaint:Landroid/graphics/Paint;

    .line 332
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private parseYAxisValues(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 210
    :try_start_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 212
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 213
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v6, v3

    if-ltz v7, :cond_0

    .line 215
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 224
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    .line 226
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 227
    :cond_3
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_4

    add-float/2addr v4, v2

    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 231
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Float;

    aput-object v3, v4, v1

    aput-object v2, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    return-void
.end method

.method private updateYAxisRange()V
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 241
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    .line 242
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    .line 243
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 245
    invoke-direct {p0, v2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->generateNiceYAxisValues(FF)V

    return-void

    :cond_0
    sub-float/2addr v0, v3

    .line 248
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 250
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    add-float/2addr v3, v1

    .line 251
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    :cond_1
    return-void

    .line 255
    :cond_2
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 256
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    .line 257
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 258
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public isSimpleMode()Z
    .locals 1

    .line 907
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 360
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 362
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->drawGrid(Landroid/graphics/Canvas;)V

    .line 366
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->drawMonthMode(Landroid/graphics/Canvas;)V

    return-void

    .line 371
    :cond_2
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->drawWeekMode(Landroid/graphics/Canvas;)V

    return-void

    .line 368
    :cond_3
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->drawDayMode(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 340
    iget-boolean p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    if-eqz p3, :cond_0

    int-to-float p1, p1

    const/high16 p3, 0x42200000    # 40.0f

    sub-float p4, p1, p3

    .line 342
    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

    int-to-float p2, p2

    sub-float/2addr p2, p3

    .line 343
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartHeight:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 344
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridLeft:F

    sub-float/2addr p1, p2

    .line 345
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridRight:F

    .line 346
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingLeft:F

    .line 347
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingRight:F

    .line 348
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    .line 349
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingBottom:F

    return-void

    :cond_0
    int-to-float p1, p1

    .line 351
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingLeft:F

    sub-float/2addr p1, p3

    iget p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingRight:F

    sub-float/2addr p1, p4

    iget p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisMargin:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p4

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartWidth:F

    int-to-float p2, p2

    .line 352
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingTop:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->paddingBottom:F

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->chartHeight:F

    add-float p2, p3, p4

    .line 353
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridLeft:F

    add-float/2addr p3, p4

    add-float/2addr p3, p1

    .line 354
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridRight:F

    return-void
.end method

.method public setAutoAdjustYAxis(Z)V
    .locals 0

    .line 785
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 787
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->adjustYAxisToCurrentData()V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setColors(Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;)V
    .locals 2

    .line 739
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->gridColor:I

    if-eqz v0, :cond_0

    .line 740
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->gridColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridColor:I

    .line 741
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 743
    :cond_0
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->axisTextColor:I

    if-eqz v0, :cond_1

    .line 744
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->axisTextColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextColor:I

    .line 745
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->axisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 747
    :cond_1
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->borderColor:I

    if-eqz v0, :cond_2

    .line 748
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->borderColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->borderColor:I

    .line 749
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->boldLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    :cond_2
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayLineColor:I

    if-eqz v0, :cond_3

    .line 752
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayLineColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLineColor:I

    .line 753
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    :cond_3
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayGradientStart:I

    if-eqz v0, :cond_4

    .line 756
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayGradientStart:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientStart:I

    .line 758
    :cond_4
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayGradientEnd:I

    if-eqz v0, :cond_5

    .line 759
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayGradientEnd:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayGradientEnd:I

    .line 761
    :cond_5
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->weekMonthBarColor:I

    if-eqz v0, :cond_6

    .line 762
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->weekMonthBarColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    .line 763
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 765
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    if-nez v0, :cond_6

    .line 766
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 769
    :cond_6
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->weekMonthCircleColor:I

    if-eqz v0, :cond_7

    .line 770
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->weekMonthCircleColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekMonthCircleColor:I

    .line 771
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->circlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    :cond_7
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->singlePointColor:I

    if-eqz v0, :cond_8

    .line 774
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->singlePointColor:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointColor:I

    .line 775
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->singlePointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    :cond_8
    iget v0, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayBarColor:I

    if-eqz v0, :cond_9

    .line 778
    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ColorConfig;->dayBarColor:I

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarColor:I

    .line 779
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    :cond_9
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setDayBarWidth(F)V
    .locals 1

    .line 721
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarWidth:F

    .line 722
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 723
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setDayData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$DayData;",
            ">;)V"
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->dayDataList:Ljava/util/List;

    .line 692
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->adjustYAxisToCurrentData()V

    .line 695
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    if-ne p1, v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMode(Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    .line 684
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->adjustYAxisToCurrentData()V

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setMonthBarWidth(F)V
    .locals 1

    .line 733
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarWidth:F

    .line 734
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 735
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setMonthData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;",
            ">;)V"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->monthDataList:Ljava/util/List;

    .line 712
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->adjustYAxisToCurrentData()V

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    if-ne p1, v0, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSimpleMode(Z)V
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    if-eq v0, p1, :cond_0

    .line 900
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->simpleMode:Z

    .line 901
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->requestLayout()V

    .line 902
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    :cond_0
    return-void
.end method

.method public setUnitPosition(Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;)V
    .locals 1

    .line 599
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;->PREFIX:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$UnitPosition;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->isUnitPrefix:Z

    .line 600
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setUnitPrefix(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->isUnitPrefix:Z

    .line 595
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setWeekBarWidth(F)V
    .locals 1

    .line 727
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarWidth:F

    .line 728
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 729
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setWeekData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$WeekMonthData;",
            ">;)V"
        }
    .end annotation

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->weekDataList:Ljava/util/List;

    .line 702
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->autoAdjustYAxis:Z

    if-eqz p1, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->adjustYAxisToCurrentData()V

    .line 705
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->currentMode:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;->WEEK:Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$ChartMode;

    if-ne p1, v0, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    :cond_1
    return-void
.end method

.method public setYAxis(FF[F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    cmpg-float v1, p2, p1

    if-gtz v1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    .line 662
    :cond_1
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 663
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    sub-float v1, p2, p1

    .line 664
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 666
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 667
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p3, v2

    cmpl-float v4, v3, p1

    if-ltz v4, :cond_2

    cmpg-float v4, v3, p2

    if-gtz v4, :cond_2

    cmpl-float v4, v3, v0

    if-ltz v4, :cond_2

    .line 669
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 672
    :cond_3
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->generateNiceYAxisValues(FF)V

    .line 675
    :cond_4
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setYAxisMax(F)V
    .locals 2

    .line 650
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 653
    :cond_0
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    sub-float v1, p1, v0

    .line 654
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 655
    invoke-direct {p0, v0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->generateNiceYAxisValues(FF)V

    .line 656
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setYAxisMin(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 639
    :cond_0
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMin:F

    .line 640
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    .line 641
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    .line 643
    :cond_1
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisMax:F

    sub-float v1, v0, p1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisRange:F

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->generateNiceYAxisValues(FF)V

    .line 646
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setYAxisUnit(Ljava/lang/String;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisUnit:Ljava/lang/String;

    .line 590
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setYAxisValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 630
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_2
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->updateYAxisRange()V

    .line 634
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method

.method public setYAxisValues([F)V
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 609
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 615
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->yAxisValues:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_2
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->updateYAxisRange()V

    .line 619
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;->invalidate()V

    return-void
.end method
