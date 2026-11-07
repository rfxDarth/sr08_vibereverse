.class public Llecho/lib/hellocharts/renderer/ColumnChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "ColumnChartRenderer.java"


# static fields
.field public static final DEFAULT_COLUMN_TOUCH_ADDITIONAL_WIDTH_DP:I = 0x4

.field public static final DEFAULT_SUBCOLUMN_SPACING_DP:I = 0x1

.field private static final MODE_CHECK_TOUCH:I = 0x1

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x2


# instance fields
.field private baseValue:F

.field private columnPaint:Landroid/graphics/Paint;

.field private dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

.field private drawRect:Landroid/graphics/RectF;

.field private fillRatio:F

.field private subcolumnSpacing:I

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditionalWidth:I

.field private touchAll:Z

.field private touchedPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    .line 62
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAll:Z

    .line 70
    new-instance p1, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {p1}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 74
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    .line 76
    iget p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    const/4 p2, 0x4

    invoke-static {p1, p2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAdditionalWidth:I

    .line 78
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private calculateColumnWidth()F
    .locals 3

    .line 407
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fillRatio:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 408
    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private calculateMaxViewport()V
    .locals 6

    .line 140
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 144
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    const/high16 v5, -0x41000000    # -0.5f

    invoke-virtual {v1, v5, v2, v3, v4}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 145
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewportForStacked(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-void

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewportForSubcolumns(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-void
.end method

.method private calculateMaxViewportForStacked(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 6

    .line 166
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 167
    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 169
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 170
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    iget v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 171
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_1

    .line 176
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 177
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 179
    :cond_3
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 180
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iput v2, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0

    :cond_4
    return-void
.end method

.method private calculateMaxViewportForSubcolumns(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 4

    .line 153
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 154
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 155
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 156
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    iput v3, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 158
    :cond_2
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 159
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v1

    iput v1, v2, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0

    :cond_3
    return-void
.end method

.method private calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V
    .locals 1

    .line 417
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 418
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 419
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result p1

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 420
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p5, p1, Landroid/graphics/RectF;->top:F

    .line 421
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float p2, p2

    sub-float/2addr p4, p2

    iput p4, p1, Landroid/graphics/RectF;->bottom:F

    return-void

    .line 423
    :cond_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p5, p1, Landroid/graphics/RectF;->bottom:F

    .line 424
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float p2, p2

    add-float/2addr p4, p2

    iput p4, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method private checkRectToDraw(II)V
    .locals 3

    .line 399
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 401
    :cond_1
    :goto_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0, p1, p2, v1}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    return-void
.end method

.method private checkTouchForStacked(FF)V
    .locals 6

    .line 280
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 281
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 282
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {p1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object p1

    .line 283
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 285
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 287
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkTouchForSubcolumns(FF)V
    .locals 6

    .line 204
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 205
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 206
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {p1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object p1

    .line 207
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 209
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 211
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawColumnForStacked(Landroid/graphics/Canvas;)V
    .locals 7

    .line 261
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 262
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v4

    .line 265
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 266
    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawColumnsForSubcolumns(Landroid/graphics/Canvas;)V
    .locals 7

    .line 186
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 187
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v4

    .line 189
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 190
    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V
    .locals 8

    .line 429
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->getFormatter()Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    move-result-object p2

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    invoke-interface {p2, v0, p3}, Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/SubcolumnValue;)I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 436
    :cond_0
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    array-length v1, v1

    sub-int/2addr v1, v5

    invoke-virtual {p2, v0, v1, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p2

    .line 437
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 438
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 439
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, p2

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    int-to-float p2, p2

    add-float/2addr v3, p2

    if-eqz p4, :cond_2

    int-to-float p2, v0

    .line 442
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 444
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result p4

    iget p5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float p4, p4, p5

    if-ltz p4, :cond_1

    .line 445
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    .line 446
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p2

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p5, p2

    goto/16 :goto_1

    .line 448
    :cond_1
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p4, p2

    .line 449
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p5, p2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_2
    if-nez p4, :cond_9

    .line 453
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result p2

    iget p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_4

    .line 454
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p5

    int-to-float p4, v0

    sub-float/2addr p2, p4

    iget v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr p2, v4

    .line 455
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_3

    .line 456
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p5

    .line 457
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p5

    add-float/2addr v4, p4

    iget p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    add-float p5, v4, p4

    goto :goto_0

    .line 459
    :cond_3
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    sub-float p5, p4, p5

    :goto_0
    move p4, p2

    goto :goto_1

    .line 462
    :cond_4
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p5

    int-to-float p4, v0

    add-float/2addr p2, p4

    iget v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr p2, v4

    .line 463
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_5

    .line 464
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p5

    sub-float/2addr p2, p4

    iget p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    sub-float p4, p2, p4

    .line 465
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float p5, p2, p5

    goto :goto_1

    .line 467
    :cond_5
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p4, p5

    move p5, p2

    .line 475
    :goto_1
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result p2

    .line 476
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v4

    div-float/2addr p2, v2

    sub-float/2addr v4, p2

    .line 477
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v2}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 478
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    add-float/2addr v2, p2

    sub-float p2, v3, v1

    cmpg-float v7, v1, v4

    if-gez v7, :cond_6

    add-float v3, p2, v4

    move v1, v4

    :cond_6
    cmpl-float v4, v3, v2

    if-lez v4, :cond_7

    sub-float v1, v2, p2

    goto :goto_2

    :cond_7
    move v2, v3

    .line 489
    :goto_2
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->isLabelTop()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 491
    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    int-to-float p5, v0

    const/4 p4, 0x0

    .line 494
    :cond_8
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, p4, v2, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    array-length p2, p2

    sub-int v4, p2, v5

    .line 496
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getDarkenColor()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    .line 495
    invoke-virtual/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    :cond_9
    :goto_3
    return-void
.end method

.method private drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V
    .locals 8

    .line 333
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 334
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 335
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float v7, v4, v3

    .line 336
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->isRound()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 338
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 341
    :cond_0
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->isArrow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 343
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 344
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v7

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 346
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 347
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 348
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 351
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 352
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 353
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v7

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 354
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 355
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 356
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 358
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 359
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 362
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v7

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v7

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v7

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v4, v1, v7

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->top:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 366
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v3, v1, v7

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v4, v1, v7

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 368
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v3, v1, v7

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v4, v1, v7

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 372
    :cond_1
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabels()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelOffset:I

    int-to-float v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V

    :cond_2
    return-void
.end method

.method private highlightColumnForStacked(Landroid/graphics/Canvas;)V
    .locals 7

    .line 272
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 273
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v4

    .line 275
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    .line 276
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v5

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    return-void
.end method

.method private highlightColumnsForSubcolumns(Landroid/graphics/Canvas;)V
    .locals 7

    .line 196
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 197
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v4

    .line 198
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    .line 199
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v5

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    return-void
.end method

.method private highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V
    .locals 7

    .line 379
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v1

    if-ne v1, p4, :cond_2

    .line 380
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getDarkenColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getTouchWidth()I

    move-result v1

    .line 382
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 385
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->isRound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 387
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 388
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 389
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 392
    :cond_0
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabels()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    :cond_1
    iget v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelOffset:I

    int-to-float v5, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V

    :cond_2
    return-void
.end method

.method private processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V
    .locals 14

    move/from16 v6, p4

    move/from16 v7, p5

    .line 293
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v8

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, p3, v1

    .line 295
    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 299
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v2, 0x0

    move v2, v1

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 300
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    iget v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 305
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    add-float/2addr v4, v2

    move v12, v1

    move v1, v2

    move v13, v4

    goto :goto_1

    .line 308
    :cond_0
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    add-float/2addr v4, v1

    move v13, v2

    move v12, v4

    .line 310
    :goto_1
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    .line 311
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v5

    add-float/2addr v1, v5

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v5

    sub-float v2, v8, v9

    move-object v1, v3

    add-float v3, v8, v9

    move-object v0, p0

    .line 312
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V

    const/4 v0, 0x1

    if-eqz v7, :cond_3

    if-eq v7, v0, :cond_2

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v3, v1

    move v4, v11

    move-object v1, p1

    .line 318
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V

    goto :goto_2

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process column in mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v4, v11

    .line 321
    invoke-direct {p0, v6, v4}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkRectToDraw(II)V

    :goto_2
    move-object/from16 v3, p2

    goto :goto_3

    :cond_3
    move-object/from16 v3, p2

    move-object v5, v1

    move v4, v11

    .line 315
    invoke-direct {p0, p1, v3, v5, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V

    :goto_3
    add-int/lit8 v11, v4, 0x1

    move v1, v12

    move v2, v13

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v6, p4

    move/from16 v7, p5

    .line 220
    iget v1, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    mul-int v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 221
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v9, v1

    .line 226
    :goto_0
    iget-object v1, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v10

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, p3, v1

    .line 228
    iget-object v1, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v2, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    sub-float v1, v10, v11

    .line 233
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move v2, v1

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 234
    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, v10, v11

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    goto/16 :goto_3

    .line 238
    :cond_1
    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v5

    invoke-virtual {v3, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v5

    add-float v3, v2, v9

    .line 239
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V

    move/from16 v16, v2

    move v15, v4

    if-eqz v7, :cond_4

    if-eq v7, v8, :cond_3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v3, v1

    move v4, v14

    move-object/from16 v1, p1

    .line 245
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process column in mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v0, p0

    move v4, v14

    .line 248
    invoke-direct {v0, v6, v4}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkRectToDraw(II)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v3, v1

    move v4, v14

    move-object/from16 v1, p1

    .line 242
    invoke-direct {v0, v1, v2, v3, v13}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V

    .line 255
    :goto_2
    iget v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    add-float v3, v16, v3

    add-int/lit8 v14, v4, 0x1

    move v2, v3

    move v4, v15

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 1

    .line 129
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 130
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkTouchForStacked(FF)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkTouchForSubcolumns(FF)V

    .line 136
    :goto_0
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 109
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawColumnForStacked(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightColumnForStacked(Landroid/graphics/Canvas;)V

    return-void

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawColumnsForSubcolumns(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightColumnsForSubcolumns(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onChartDataChanged()V
    .locals 2

    .line 89
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 90
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getFillRatio()F

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fillRatio:F

    .line 92
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getBaseValue()F

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 93
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getSubSpace()I

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    .line 94
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isValueLabelTouchAll()Z

    move-result v0

    iput-boolean v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAll:Z

    .line 96
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->onChartViewportChanged()V

    return-void
.end method

.method public onChartSizeChanged()V
    .locals 0

    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .line 101
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewport()V

    .line 103
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 104
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    :cond_0
    return-void
.end method
