.class public Llecho/lib/hellocharts/renderer/AxesRenderer;
.super Ljava/lang/Object;
.source "AxesRenderer.java"


# static fields
.field private static final BOTTOM:I = 0x3

.field private static final DEFAULT_AXIS_MARGIN_DP:I = 0x2

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2

.field private static final TOP:I

.field private static final labelWidthChars:[C


# instance fields
.field private autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

.field private autoValuesToDrawTab:[[F

.field private axisMargin:I

.field private chart:Llecho/lib/hellocharts/view/Chart;

.field private computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field private density:F

.field private fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

.field private labelBaselineTab:[F

.field private labelBuffer:[C

.field private labelDimensionForMarginsTab:[I

.field private labelDimensionForStepsTab:[I

.field private labelPaintTab:[Landroid/graphics/Paint;

.field private labelTextAscentTab:[I

.field private labelTextDescentTab:[I

.field private labelWidthTab:[I

.field private linePaintTab:[Landroid/graphics/Paint;

.field private linesDrawBufferTab:[[F

.field private nameBaselineTab:[F

.field private namePaintTab:[Landroid/graphics/Paint;

.field private rawValuesTab:[[F

.field private scaledDensity:F

.field private separationLineTab:[F

.field private tiltedLabelXTranslation:[I

.field private tiltedLabelYTranslation:[I

.field private valuesToDrawNumTab:[I

.field private valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 42
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthChars:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 10

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x4

    new-array v5, v4, [Landroid/graphics/Paint;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v2, 0x3

    aput-object v3, v5, v2

    iput-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    .line 54
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    new-array v9, v4, [Landroid/graphics/Paint;

    aput-object v3, v9, v6

    aput-object v5, v9, v0

    aput-object v7, v9, v1

    aput-object v8, v9, v2

    iput-object v9, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    .line 55
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    new-array v9, v4, [Landroid/graphics/Paint;

    aput-object v3, v9, v6

    aput-object v5, v9, v0

    aput-object v7, v9, v1

    aput-object v8, v9, v2

    iput-object v9, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    .line 56
    new-array v3, v4, [F

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    .line 57
    new-array v3, v4, [F

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    .line 58
    new-array v3, v4, [F

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    .line 59
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    .line 60
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    .line 61
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    .line 62
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    .line 63
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    .line 64
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    .line 65
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    .line 66
    new-instance v3, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v3}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    new-instance v7, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v7}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    new-instance v8, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v8}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    new-array v9, v4, [Landroid/graphics/Paint$FontMetricsInt;

    aput-object v3, v9, v6

    aput-object v5, v9, v0

    aput-object v7, v9, v1

    aput-object v8, v9, v2

    iput-object v9, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    const/16 v3, 0x40

    .line 71
    new-array v3, v3, [C

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    .line 76
    new-array v3, v4, [I

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    .line 81
    new-array v3, v1, [I

    aput v6, v3, v0

    aput v4, v3, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    .line 87
    new-array v3, v1, [I

    aput v6, v3, v0

    aput v4, v3, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    .line 92
    new-array v3, v1, [I

    aput v6, v3, v0

    aput v4, v3, v6

    const-class v5, Llecho/lib/hellocharts/model/AxisValue;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Llecho/lib/hellocharts/model/AxisValue;

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    .line 97
    new-array v3, v1, [I

    aput v6, v3, v0

    aput v4, v3, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    .line 102
    new-array v3, v4, [Llecho/lib/hellocharts/util/AxisAutoValues;

    new-instance v5, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v5}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v5, v3, v6

    new-instance v5, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v5}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v5, v3, v0

    new-instance v5, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v5}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v5, v3, v1

    new-instance v5, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v5}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v5, v3, v2

    iput-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    .line 106
    iput-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 107
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    iput-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->density:F

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    .line 110
    iget p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->density:F

    invoke-static {p1, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    :goto_0
    if-ge v6, v4, :cond_0

    .line 112
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v6

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v6

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v6

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v6

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v6

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v6

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkRawValue(Landroid/graphics/Rect;FZIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 515
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    const/4 p5, 0x3

    aget p5, p4, p5

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr p5, v1

    int-to-float p5, p5

    .line 516
    aget p4, p4, p3

    add-int/2addr p4, v1

    int-to-float p4, p4

    .line 517
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p5

    cmpg-float p5, p2, v1

    if-gtz p5, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, p4

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    return v0

    :cond_0
    return p3

    .line 523
    :cond_1
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget p4, p5, p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    .line 524
    iget p5, p1, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    add-float/2addr p5, p4

    cmpl-float p5, p2, p5

    if-ltz p5, :cond_2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, p4

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    return v0

    :cond_2
    return p3

    :cond_3
    return v0
.end method

.method private drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V
    .locals 12

    .line 588
    invoke-direct {p0, p3}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v1, p3, :cond_2

    const/4 v1, 0x2

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x3

    if-ne v1, p3, :cond_3

    .line 592
    :cond_1
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p3

    goto :goto_1

    .line 590
    :cond_2
    :goto_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p3

    move v2, v1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 595
    :goto_2
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aget v4, v4, p3

    if-ge v3, v4, :cond_7

    .line 597
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 598
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v4, v4, p3

    aget v4, v4, v3

    .line 599
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    iget-object v7, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v7, v7, p3

    iget v7, v7, Llecho/lib/hellocharts/util/AxisAutoValues;->decimals:I

    invoke-interface {v5, v6, v4, v7}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForAutoGeneratedAxis([CFI)I

    move-result v4

    goto :goto_3

    .line 602
    :cond_4
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v4, v4, p3

    aget-object v4, v4, v3

    .line 603
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    invoke-interface {v5, v6, v4}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForManualAxis([CLlecho/lib/hellocharts/model/AxisValue;)I

    move-result v4

    :goto_3
    move v8, v4

    if-eqz v0, :cond_5

    .line 607
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v1, v1, p3

    aget v1, v1, v3

    iget v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    goto :goto_4

    .line 609
    :cond_5
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p3

    aget v2, v2, v3

    :goto_4
    move v10, v1

    move v9, v2

    .line 612
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 613
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 614
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    aget v1, v1, p3

    int-to-float v1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    aget v2, v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x3dcc0000    # -45.0f

    .line 615
    invoke-virtual {p1, v1, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 616
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length v1, v6

    sub-int v7, v1, v8

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v11, v1, p3

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 618
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_6
    move-object v5, p1

    .line 620
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length p1, v6

    sub-int v7, p1, v8

    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v11, p1, p3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object p1, v5

    move v2, v9

    move v1, v10

    goto/16 :goto_2

    :cond_7
    move-object v5, p1

    .line 626
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object p1

    .line 627
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v0, :cond_8

    .line 629
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 630
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 631
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v0, v0, p3

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p3, v1, p3

    invoke-virtual {v5, p2, p1, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 633
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 635
    :cond_8
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v0, v0, p3

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p3, v1, p3

    invoke-virtual {v5, p2, p1, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method private drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 535
    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v2

    .line 540
    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v7, v1, :cond_3

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_2

    .line 548
    :cond_2
    :goto_0
    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 549
    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    .line 550
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    aget v10, v10, v1

    .line 551
    iget v11, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    .line 552
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    move v15, v10

    move/from16 v18, v11

    move/from16 v20, v12

    const/16 v17, 0x0

    const/16 v19, 0x0

    goto :goto_2

    .line 542
    :cond_3
    :goto_1
    iget-object v8, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    aget v8, v8, v1

    .line 543
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v9

    .line 544
    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 545
    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    .line 546
    iget v12, v2, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    move v15, v9

    move/from16 v17, v11

    move/from16 v19, v12

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v9, v8

    .line 555
    :goto_2
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine()Z

    move-result v11

    if-eqz v11, :cond_5

    if-ne v7, v1, :cond_4

    .line 557
    iget-object v8, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    aget v10, v8, v4

    .line 558
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    move v12, v8

    move v14, v12

    goto :goto_3

    :cond_4
    move v12, v8

    move v14, v9

    :goto_3
    move v13, v10

    .line 560
    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v16, v2, v1

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 563
    :cond_5
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 565
    :goto_4
    iget-object v9, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aget v9, v9, v1

    if-ge v8, v9, :cond_7

    if-eqz v3, :cond_6

    .line 567
    iget-object v9, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v9, v9, v1

    aget v9, v9, v8

    move/from16 v18, v9

    move/from16 v20, v18

    goto :goto_5

    .line 569
    :cond_6
    iget-object v9, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v9, v9, v1

    aget v9, v9, v8

    move/from16 v17, v9

    move/from16 v19, v17

    .line 571
    :goto_5
    iget-object v9, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v9, v9, v1

    mul-int/lit8 v10, v8, 0x4

    aput v17, v9, v10

    add-int/lit8 v11, v10, 0x1

    .line 572
    aput v18, v9, v11

    add-int/lit8 v11, v10, 0x2

    .line 573
    aput v19, v9, v11

    add-int/2addr v10, v4

    .line 574
    aput v20, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 576
    :cond_7
    iget-object v3, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object v3, v3, v1

    .line 577
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getLineDash()I

    move-result v4

    if-lez v4, :cond_8

    .line 578
    new-instance v4, Landroid/graphics/DashPathEffect;

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getLineDash()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getLineDash()I

    move-result v10

    int-to-float v10, v10

    new-array v5, v5, [F

    aput v9, v5, v2

    aput v10, v5, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    .line 580
    :cond_8
    new-instance v4, Landroid/graphics/CornerPathEffect;

    invoke-direct {v4, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 581
    :goto_6
    iget-object v4, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v1, v4, v1

    mul-int/lit8 v8, v8, 0x4

    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v2, v8, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method private getAxisNameMargin(Llecho/lib/hellocharts/model/Axis;I)I
    .locals 1

    .line 260
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget p1, p1, p2

    .line 262
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget p2, v0, p2

    add-int/2addr p1, p2

    .line 263
    iget p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisAttributes(Llecho/lib/hellocharts/model/Axis;I)V

    .line 148
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisMargin(Llecho/lib/hellocharts/model/Axis;I)V

    .line 149
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisMeasurements(Llecho/lib/hellocharts/model/Axis;I)V

    return-void
.end method

.method private initAxisAttributes(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 1

    .line 153
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisPaints(Llecho/lib/hellocharts/model/Axis;I)V

    .line 154
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisTextAlignment(Llecho/lib/hellocharts/model/Axis;I)V

    .line 155
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisDimensionForTiltedLabels(I)V

    .line 157
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->intiTiltedLabelsTranslation(Llecho/lib/hellocharts/model/Axis;I)V

    return-void

    .line 159
    :cond_0
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisDimension(I)V

    return-void
.end method

.method private initAxisDimension(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq v0, p1, :cond_3

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 213
    :cond_2
    :goto_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 215
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    return-void

    .line 210
    :cond_3
    :goto_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 211
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    return-void
.end method

.method private initAxisDimensionForTiltedLabels(I)V
    .locals 6

    .line 202
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v0, v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 203
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    int-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 204
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    add-int/2addr v1, v0

    aput v1, v2, p1

    .line 205
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, v0, p1

    return-void
.end method

.method private initAxisMargin(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 2

    .line 251
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 254
    :goto_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->getAxisNameMargin(Llecho/lib/hellocharts/model/Axis;I)I

    move-result p1

    add-int/2addr v0, p1

    .line 255
    invoke-direct {p0, v0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->insetContentRectWithAxesMargins(II)V

    return-void
.end method

.method private initAxisMeasurements(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 282
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 284
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 288
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, p2

    .line 291
    :goto_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    aput v0, p1, p2

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    .line 293
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 294
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 295
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_1

    .line 298
    :cond_2
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 299
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    aput v0, p1, p2

    .line 302
    :goto_1
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    aput v0, p1, p2

    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne v0, p2, :cond_5

    .line 304
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 305
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 307
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_2

    .line 310
    :cond_4
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v2, v2, p2

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, p1, p2

    .line 312
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    aput v0, p1, p2

    .line 315
    :goto_2
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    aput v0, p1, p2

    return-void

    :cond_5
    if-nez p2, :cond_7

    .line 317
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 318
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 320
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_3

    .line 323
    :cond_6
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, p1, p2

    .line 325
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, p2

    .line 328
    :goto_3
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    aput v0, p1, p2

    return-void

    .line 330
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid axis position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initAxisPaints(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 4

    .line 164
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 167
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextSize()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 172
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextSize()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aput v1, v0, p2

    .line 177
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aput v1, v0, p2

    .line 178
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    sget-object v2, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthChars:[C

    const/4 v3, 0x0

    .line 179
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getMaxLabelChars()I

    move-result p1

    .line 178
    invoke-virtual {v1, v2, v3, p1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, p2

    return-void
.end method

.method private initAxisTextAlignment(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 2

    .line 183
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz p2, :cond_5

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    .line 187
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 190
    :cond_1
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p2, :cond_4

    .line 193
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 196
    :cond_3
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_4
    return-void

    .line 185
    :cond_5
    :goto_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private insetContentRectWithAxesMargins(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 270
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, p1, v1, v1, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 272
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, v1, v1, p1, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 274
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v1, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p2, :cond_3

    .line 276
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, v1, v1, v1, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    :cond_3
    return-void
.end method

.method private intiTiltedLabelsTranslation(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 6

    .line 220
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v0, v0, p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 221
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    int-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 224
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    if-ne v3, p2, :cond_0

    goto :goto_3

    :cond_0
    if-ne v4, p2, :cond_1

    neg-int p1, v0

    .line 228
    div-int/2addr p1, v4

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 230
    div-int/2addr v0, v4

    add-int/2addr v1, v0

    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget p1, p1, p2

    :goto_0
    sub-int/2addr v1, p1

    move v5, v1

    goto :goto_2

    :cond_2
    if-ne v2, p2, :cond_4

    neg-int p1, v0

    .line 232
    div-int/2addr p1, v4

    goto :goto_1

    :cond_3
    if-ne v3, p2, :cond_5

    neg-int p1, v0

    .line 236
    div-int/2addr p1, v4

    :goto_1
    move v5, p1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    if-ne v4, p2, :cond_6

    goto :goto_3

    :cond_6
    if-nez p2, :cond_7

    neg-int p1, v0

    .line 240
    div-int/2addr p1, v4

    goto :goto_1

    :cond_7
    if-ne v2, p2, :cond_4

    .line 242
    div-int/2addr v0, v4

    add-int/2addr v1, v0

    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget p1, p1, p2

    goto :goto_0

    .line 245
    :goto_3
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    aput v1, p1, p2

    .line 246
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    aput v5, p1, p2

    return-void
.end method

.method private isAxisVertical(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq v0, p1, :cond_3

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 647
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid axis position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private onChartDataOrSizeChanged()V
    .locals 2

    .line 130
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 131
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 132
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 133
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    return-void
.end method

.method private prepareAutoGeneratedAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 8

    .line 466
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 467
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v3

    .line 468
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 472
    iget v1, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 473
    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 474
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_0

    .line 476
    :cond_0
    iget v1, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 477
    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 478
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 480
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    aget v4, v4, p2

    div-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v4, v4, p2

    invoke-static {v1, v0, v2, v4}, Llecho/lib/hellocharts/util/FloatUtils;->computeAutoGeneratedAxisValues(FFILlecho/lib/hellocharts/util/AxisAutoValues;)V

    .line 483
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v1, v1, p2

    iget v1, v1, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    .line 485
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v1, v1, p2

    iget v1, v1, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [F

    aput-object v1, v0, p2

    .line 488
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v1, v1, p2

    iget v1, v1, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v1, :cond_2

    .line 489
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v1, v1, p2

    iget v1, v1, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    new-array v1, v1, [F

    aput-object v1, v0, p2

    .line 491
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v1, v1, p2

    iget v1, v1, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v1, :cond_3

    .line 492
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v1, v1, p2

    iget v1, v1, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    new-array v1, v1, [F

    aput-object v1, v0, p2

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 497
    :goto_1
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v2, :cond_6

    if-eqz v7, :cond_4

    .line 499
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v4, v4, p2

    iget-object v4, v4, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v2

    goto :goto_2

    .line 501
    :cond_4
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v4, v4, p2

    iget-object v4, v4, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    :goto_2
    move v4, v2

    .line 503
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v5

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v2 .. v7}, Llecho/lib/hellocharts/renderer/AxesRenderer;->checkRawValue(Landroid/graphics/Rect;FZIZ)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 504
    iget-object p2, v2, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object p2, p2, v6

    aput v4, p2, v1

    .line 505
    iget-object p2, v2, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object p2, p2, v6

    iget-object v4, v2, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v4, v4, v6

    iget-object v4, v4, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v4, v4, v0

    aput v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v6

    goto :goto_1

    :cond_6
    move-object v2, p0

    move v6, p2

    .line 509
    iget-object p1, v2, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aput v1, p1, v6

    return-void
.end method

.method private prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 1

    .line 366
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAutoGeneratedAxis(Llecho/lib/hellocharts/model/Axis;I)V

    return-void

    .line 369
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareCustomAxis(Llecho/lib/hellocharts/model/Axis;I)V

    return-void
.end method

.method private prepareCustomAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 13

    .line 401
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 402
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 403
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v4

    .line 404
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v8

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v8, :cond_1

    .line 408
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_0

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_0

    .line 409
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v0

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v6

    div-float/2addr v0, v6

    mul-float v5, v5, v0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 411
    :goto_0
    iget v0, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 412
    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    goto :goto_2

    .line 414
    :cond_1
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2

    .line 415
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v0

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v6

    div-float/2addr v0, v6

    mul-float v5, v5, v0

    goto :goto_1

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 417
    :goto_1
    iget v0, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 418
    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    :goto_2
    cmpl-float v2, v5, v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v5

    .line 424
    :goto_3
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    aget v5, v5, p2

    mul-int v2, v2, v5

    int-to-double v5, v2

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double v5, v5, v9

    float-to-double v2, v3

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 423
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 426
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v3, v3, p2

    array-length v3, v3

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-ge v3, v5, :cond_4

    .line 427
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [F

    aput-object v5, v3, p2

    .line 430
    :cond_4
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v3, v3, p2

    array-length v3, v3

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 431
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [F

    aput-object v5, v3, p2

    .line 434
    :cond_5
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v3, v3, p2

    array-length v3, v3

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 435
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Llecho/lib/hellocharts/model/AxisValue;

    aput-object v5, v3, p2

    .line 441
    :cond_6
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Llecho/lib/hellocharts/model/AxisValue;

    .line 443
    invoke-virtual {v12}, Llecho/lib/hellocharts/model/AxisValue;->getValue()F

    move-result v3

    cmpl-float v5, v3, v0

    if-ltz v5, :cond_a

    cmpg-float v5, v3, v1

    if-gtz v5, :cond_a

    .line 446
    rem-int v5, v11, v2

    if-nez v5, :cond_8

    if-eqz v8, :cond_7

    .line 448
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    goto :goto_5

    .line 450
    :cond_7
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    :goto_5
    move v5, v3

    .line 452
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v6

    move-object v3, p0

    move v7, p2

    invoke-direct/range {v3 .. v8}, Llecho/lib/hellocharts/renderer/AxesRenderer;->checkRawValue(Landroid/graphics/Rect;FZIZ)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 453
    iget-object p2, v3, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object p2, p2, v7

    aput v5, p2, v10

    .line 454
    iget-object p2, v3, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object p2, p2, v7

    aput-object v12, p2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    move-object v3, p0

    move v7, p2

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_a
    move-object v3, p0

    move v7, p2

    :goto_7
    move p2, v7

    goto :goto_4

    :cond_b
    move-object v3, p0

    move v7, p2

    .line 462
    iget-object p1, v3, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aput v10, p1, v7

    return-void
.end method


# virtual methods
.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 340
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 342
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 343
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 346
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 348
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 349
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 352
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 354
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 355
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 358
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 360
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 361
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    :cond_3
    return-void
.end method

.method public drawInForeground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 379
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 381
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 384
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 386
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 389
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 391
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 394
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 396
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    :cond_3
    return-void
.end method

.method public onChartDataChanged()V
    .locals 0

    .line 126
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataOrSizeChanged()V

    return-void
.end method

.method public onChartSizeChanged()V
    .locals 0

    .line 122
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataOrSizeChanged()V

    return-void
.end method

.method public resetRenderer()V
    .locals 1

    .line 137
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    return-void
.end method
