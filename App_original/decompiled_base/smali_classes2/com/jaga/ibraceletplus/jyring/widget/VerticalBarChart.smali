.class public Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;
.super Landroid/view/View;
.source "VerticalBarChart.java"


# static fields
.field private static final DEFAULT_BAR_COLOR:I = -0x10000

.field private static final DEFAULT_BAR_COUNT:I = 0x18

.field private static final DEFAULT_BAR_SPACING_RATIO:F = 0.3f

.field private static final DEFAULT_MAX_VALUE:I = 0x64


# instance fields
.field private availableHeight:F

.field private barPaint:Landroid/graphics/Paint;

.field private barSpacing:F

.field private barWidth:F

.field private dataValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->init()V

    return-void
.end method

.method private calculateBarTop(I)F
    .locals 2

    .line 141
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->availableHeight:F

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    .line 143
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private calculateDimensions()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getWidth()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getHeight()I

    move-result v1

    .line 70
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->availableHeight:F

    .line 73
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x41f73333    # 30.9f

    div-float/2addr v0, v1

    .line 74
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barWidth:F

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    .line 75
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barSpacing:F

    return-void
.end method

.method private drawBar(Landroid/graphics/Canvas;FII)V
    .locals 2

    .line 96
    invoke-direct {p0, p3}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->calculateBarTop(I)F

    move-result p4

    .line 97
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    if-nez p3, :cond_0

    .line 101
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barWidth:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float v1, p3, p4

    add-float/2addr p2, v1

    div-float v1, p3, p4

    sub-float/2addr v0, v1

    div-float/2addr p3, p4

    .line 104
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->drawRoundedBar(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private drawRoundedBar(Landroid/graphics/Canvas;FFF)V
    .locals 4

    .line 112
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barWidth:F

    add-float v1, p2, v0

    sub-float v2, p4, p3

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    div-float p3, v0, v3

    add-float/2addr p2, p3

    div-float p3, v0, v3

    sub-float/2addr p4, p3

    div-float/2addr v0, v3

    .line 120
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, v0, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    div-float/2addr v0, v3

    .line 126
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p2, p3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 127
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    add-float/2addr p3, v0

    .line 132
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float/2addr p4, v0

    .line 133
    invoke-virtual {v2, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    invoke-virtual {v2, v1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    invoke-virtual {v2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 136
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 137
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->invalidate()V

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v3, v1

    .line 90
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barWidth:F

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barSpacing:F

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    add-float/2addr v3, v0

    .line 91
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->drawBar(Landroid/graphics/Canvas;FII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 62
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->calculateDimensions()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    .line 155
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDataAt(II)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRandomData()V
    .locals 6

    const/4 v0, 0x0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->dataValues:Ljava/util/List;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4059400000000000L    # 101.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->invalidate()V

    return-void
.end method
