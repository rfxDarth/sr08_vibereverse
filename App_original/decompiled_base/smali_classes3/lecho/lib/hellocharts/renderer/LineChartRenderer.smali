.class public Llecho/lib/hellocharts/renderer/LineChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "LineChartRenderer.java"


# static fields
.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:I = 0x3

.field private static final DEFAULT_TOUCH_TOLERANCE_MARGIN_DP:I = 0x4

.field private static final LINE_SMOOTHNESS:F = 0.16f

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private baseValue:F

.field private checkPrecision:I

.field private dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

.field private linePaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointPaint:Landroid/graphics/Paint;

.field private softwareBitmap:Landroid/graphics/Bitmap;

.field private softwareCanvas:Landroid/graphics/Canvas;

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAll:Z

.field private touchToleranceMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchAll:Z

    .line 44
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    .line 49
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    .line 50
    new-instance p1, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {p1}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 54
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    .line 56
    iget p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 p2, 0x4

    invoke-static {p1, p2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    .line 58
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 61
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    iget p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v0, 0x3

    invoke-static {p3, v0}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 p2, 0x2

    invoke-static {p1, p2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkPrecision:I

    return-void
.end method

.method private calculateContentRectInternalMargin()I
    .locals 4

    .line 203
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Line;

    .line 205
    invoke-direct {p0, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 212
    :cond_1
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    return v0
.end method

.method private calculateMaxViewport()V
    .locals 5

    .line 178
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 179
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    .line 183
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/PointValue;

    .line 184
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 185
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    iput v4, v3, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 187
    :cond_2
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 188
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    iput v4, v3, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 190
    :cond_3
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 191
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v4

    iput v4, v3, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 193
    :cond_4
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 194
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v2

    iput v2, v3, Llecho/lib/hellocharts/model/Viewport;->top:F

    goto :goto_0

    :cond_5
    return-void
.end method

.method private checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z
    .locals 2

    .line 151
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->hasPoints()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 10

    .line 508
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 515
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 518
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llecho/lib/hellocharts/model/PointValue;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 519
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/PointValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v0

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 522
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 523
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 524
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 526
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 527
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getAreaTransparency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 528
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getGradientToTransparent()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/LinearGradient;

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result v7

    .line 530
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result p2

    const v1, 0xffffff

    and-int v8, p2, v1

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 528
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 532
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 533
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V
    .locals 8

    .line 443
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 444
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getFormatter()Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    move-result-object v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    invoke-interface {v1, v2, p3}, Llecho/lib/hellocharts/formatter/LineChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/PointValue;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v2

    .line 451
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    sub-float v5, p4, v4

    .line 452
    iget v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v4, p4

    .line 453
    iget v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 458
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result p3

    iget v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    cmpl-float p3, p3, v6

    if-ltz p3, :cond_1

    sub-float p3, p5, p6

    int-to-float v6, v3

    sub-float v6, p3, v6

    .line 459
    iget v7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    goto :goto_0

    :cond_1
    add-float v6, p5, p6

    int-to-float p3, v3

    add-float/2addr p3, v6

    .line 463
    iget v7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr p3, v7

    .line 466
    :goto_0
    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    add-float v6, p5, p6

    int-to-float p3, v3

    add-float/2addr p3, v6

    .line 468
    iget v7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr p3, v7

    .line 470
    :cond_2
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    cmpl-float v7, p3, v7

    if-lez v7, :cond_3

    sub-float p3, p5, p6

    int-to-float p5, v3

    sub-float p5, p3, p5

    .line 471
    iget p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    sub-float v6, p5, p6

    .line 474
    :cond_3
    iget p5, v0, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    cmpg-float p5, v5, p5

    if-gez p5, :cond_4

    add-float p5, p4, v2

    .line 476
    iget p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    add-float v4, p5, p6

    move v5, p4

    .line 478
    :cond_4
    iget p5, v0, Landroid/graphics/Rect;->right:I

    int-to-float p5, p5

    cmpl-float p5, v4, p5

    if-lez p5, :cond_5

    sub-float p5, p4, v2

    .line 479
    iget p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    sub-float v5, p5, p6

    goto :goto_1

    :cond_5
    move p4, v4

    .line 483
    :goto_1
    iget p5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result p6

    invoke-static {p5, p6}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p5

    .line 484
    iget-object p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result p6

    mul-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    sub-float/2addr p6, p5

    .line 485
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 486
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    add-float/2addr v2, p5

    sub-float p5, p4, v5

    cmpg-float v4, v5, p6

    if-gez v4, :cond_6

    add-float p4, p5, p6

    move v5, p6

    :cond_6
    cmpl-float p6, p4, v2

    if-lez p6, :cond_7

    sub-float v5, v2, p5

    goto :goto_2

    :cond_7
    move v2, p4

    .line 497
    :goto_2
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->isLabelTop()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 499
    iget p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr v3, p3

    int-to-float p3, v3

    const/4 v6, 0x0

    .line 502
    :cond_8
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p4, v5, v6, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 503
    iget-object p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    iget-object p4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    array-length p4, p4

    sub-int/2addr p4, v1

    .line 504
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getDarkenColor()I

    move-result p6

    move-object p2, p1

    move p5, v1

    move-object p1, p0

    .line 503
    invoke-virtual/range {p1 .. p6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 6

    .line 219
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 222
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/PointValue;

    .line 224
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    .line 225
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->isHasLine()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 228
    :cond_1
    :goto_1
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 243
    :cond_3
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V
    .locals 6

    .line 401
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/PointValue;->getColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Llecho/lib/hellocharts/model/PointValue;->getColor()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    :goto_0
    sget-object p3, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v0

    invoke-virtual {p3, v0}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sub-float v1, p4, p6

    sub-float v2, p5, p6

    add-float v3, p4, p6

    add-float v4, p5, p6

    .line 407
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 409
    :cond_1
    sget-object p3, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v0

    invoke-virtual {p3, v0}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 411
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 412
    :cond_2
    sget-object p3, Llecho/lib/hellocharts/model/ValueShape;->DIAMOND:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v0

    invoke-virtual {p3, v0}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p2, 0x42340000    # 45.0f

    .line 414
    invoke-virtual {p1, p2, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-float p2, p4, p6

    sub-float p3, p5, p6

    add-float/2addr p4, p6

    add-float/2addr p5, p6

    .line 415
    iget-object p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 419
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid point shape: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V
    .locals 10

    .line 374
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getPointColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Llecho/lib/hellocharts/model/PointValue;

    .line 377
    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    .line 378
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v6

    .line 379
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v7

    .line 380
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkPrecision:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v7, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->isWithinContentRect(FFF)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p4, :cond_0

    int-to-float v8, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 385
    invoke-direct/range {v2 .. v8}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    .line 386
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/Line;->hasLabels()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 387
    iget p1, v2, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelOffset:I

    add-int/2addr v1, p1

    int-to-float v8, v1

    invoke-direct/range {v2 .. v8}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    goto :goto_1

    :cond_0
    move-object v3, p1

    move-object v4, p2

    const/4 p1, 0x1

    if-ne p1, p4, :cond_1

    move-object v2, p0

    move v8, p3

    .line 390
    invoke-direct/range {v2 .. v9}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->highlightPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFII)V

    goto :goto_2

    .line 392
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot process points in mode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v3, p1

    move-object v4, p2

    :cond_3
    :goto_1
    move v8, p3

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object p1, v3

    move-object p2, v4

    move p3, v8

    goto :goto_0

    :cond_4
    return-void
.end method

.method private drawSmoothPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 279
    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 281
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v2, :cond_7

    .line 292
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 293
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/PointValue;

    .line 294
    iget-object v5, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v10

    invoke-virtual {v5, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v5

    .line 295
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    invoke-virtual {v10, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    move v15, v5

    move v5, v3

    goto :goto_1

    :cond_0
    move v15, v3

    .line 297
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v9, :cond_1

    .line 299
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v9, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/PointValue;

    .line 300
    iget-object v4, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v7

    invoke-virtual {v4, v7}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v4

    .line 301
    iget-object v7, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    invoke-virtual {v7, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    move v7, v3

    goto :goto_2

    :cond_1
    move v7, v5

    move v3, v15

    goto :goto_3

    :cond_2
    :goto_2
    move v3, v4

    .line 308
    :goto_3
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    if-le v9, v4, :cond_3

    .line 310
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v6, v9, -0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llecho/lib/hellocharts/model/PointValue;

    .line 311
    iget-object v6, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v8

    invoke-virtual {v6, v8}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v6

    .line 312
    iget-object v8, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v4

    invoke-virtual {v8, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v8

    goto :goto_4

    :cond_3
    move v6, v3

    move v8, v7

    :cond_4
    :goto_4
    add-int/lit8 v4, v2, -0x1

    if-ge v9, v4, :cond_5

    .line 321
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llecho/lib/hellocharts/model/PointValue;

    .line 322
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v10

    .line 323
    iget-object v11, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v4

    invoke-virtual {v11, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    move/from16 v17, v4

    move v4, v10

    goto :goto_5

    :cond_5
    move/from16 v17, v5

    move v4, v15

    :goto_5
    if-nez v9, :cond_6

    .line 331
    iget-object v6, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v15, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v16, v5

    goto :goto_6

    :cond_6
    sub-float v6, v15, v6

    sub-float v8, v5, v8

    sub-float v10, v4, v3

    sub-float v11, v17, v7

    const v12, 0x3e23d70a    # 0.16f

    mul-float v6, v6, v12

    add-float/2addr v6, v3

    mul-float v8, v8, v12

    add-float/2addr v8, v7

    mul-float v10, v10, v12

    sub-float v13, v15, v10

    mul-float v11, v11, v12

    sub-float v14, v5, v11

    .line 342
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    move/from16 v16, v5

    move v11, v6

    move v12, v8

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move v6, v3

    move v3, v4

    move v8, v7

    move v4, v15

    move/from16 v7, v16

    move/from16 v5, v17

    goto/16 :goto_0

    .line 356
    :cond_7
    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 357
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 358
    invoke-direct/range {p0 .. p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 360
    :cond_8
    iget-object v1, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private drawSquarePath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 6

    .line 247
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 251
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/PointValue;

    .line 253
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v4

    .line 254
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    if-nez v1, :cond_0

    .line 257
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 259
    :cond_0
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 271
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 275
    :cond_2
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private highlightPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFII)V
    .locals 8

    .line 431
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    if-ne v1, p6, :cond_1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v1

    if-ne v1, p7, :cond_1

    .line 432
    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v7

    .line 433
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getDarkenColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getTouchMargin()I

    move-result v1

    add-int/2addr v1, v7

    int-to-float v6, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 435
    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    .line 436
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->hasLabels()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelOffset:I

    add-int/2addr v7, v1

    int-to-float v6, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    :cond_1
    return-void
.end method

.method private highlightPoints(Landroid/graphics/Canvas;)V
    .locals 3

    .line 424
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v0

    .line 425
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    const/4 v2, 0x1

    .line 426
    invoke-direct {p0, p1, v1, v0, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V

    return-void
.end method

.method private isInArea(FFFFF)Z
    .locals 4

    .line 537
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->isValueLabelTouchAll()Z

    move-result v0

    iput-boolean v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchAll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sub-float v0, p1, p5

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    add-float v0, p1, p5

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    float-to-double p1, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 543
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    float-to-double p3, p4

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    add-double/2addr p1, p3

    float-to-double p3, p5

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double p3, p3, v2

    cmpg-double p5, p1, p3

    if-gtz p5, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V
    .locals 3

    .line 364
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getStrokeWidth()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 365
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 367
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 12

    .line 156
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 157
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    .line 160
    invoke-direct {p0, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v3

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v9

    .line 163
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 164
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    .line 165
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v1

    invoke-virtual {v3, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v1

    .line 166
    iget v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    add-int/2addr v3, v9

    int-to-float v5, v3

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isInArea(FFFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v2, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v1, v8, v11, v2}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isTouched()Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 104
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 110
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    .line 112
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 117
    :goto_0
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Line;

    .line 118
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->hasLines()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->isCubic()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    invoke-direct {p0, v1, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawSmoothPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->isSquare()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    invoke-direct {p0, v1, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawSquarePath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-direct {p0, v1, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 129
    :cond_4
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 5

    .line 136
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/Line;

    .line 139
    invoke-direct {p0, v3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-direct {p0, p1, v3, v2, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->highlightPoints(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onChartDataChanged()V
    .locals 2

    .line 84
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 85
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateContentRectInternalMargin()I

    move-result v0

    .line 86
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0, v0, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRectByInternalMargins(IIII)V

    .line 88
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getBaseValue()F

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    .line 90
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->onChartViewportChanged()V

    return-void
.end method

.method public onChartSizeChanged()V
    .locals 3

    .line 72
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateContentRectInternalMargin()I

    move-result v0

    .line 73
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0, v0, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRectByInternalMargins(IIII)V

    .line 75
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    .line 78
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .line 95
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateMaxViewport()V

    .line 97
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 98
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    :cond_0
    return-void
.end method
