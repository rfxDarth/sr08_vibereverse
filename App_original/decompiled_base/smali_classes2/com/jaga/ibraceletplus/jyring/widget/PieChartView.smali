.class public Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;
.super Landroid/view/View;
.source "PieChartView.java"


# instance fields
.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundRect:Landroid/graphics/RectF;

.field private colors:[I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private defaultColors:[I

.field private padding:F

.field private piePaint:Landroid/graphics/Paint;

.field private pieRect:Landroid/graphics/RectF;

.field private total:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xbc

    const/16 v0, 0xce

    const/16 v1, 0xff

    .line 26
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/16 v0, 0x86

    const/16 v2, 0xb1

    .line 27
    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/16 v2, 0x52

    const/16 v3, 0x82

    .line 28
    invoke-static {v2, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/16 v2, 0x8b

    const/4 v3, 0x6

    const/16 v4, 0xfd

    .line 29
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    filled-new-array {p1, v0, v1, v2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->defaultColors:[I

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    .line 33
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->defaultColors:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->colors:[I

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    const p1, -0x333334

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundColor:I

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->pieRect:Landroid/graphics/RectF;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 42
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->padding:F

    .line 152
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xbc

    const/16 v0, 0xce

    const/16 v1, 0xff

    .line 26
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/16 v0, 0x86

    const/16 v2, 0xb1

    .line 27
    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/16 v2, 0x52

    const/16 v3, 0x82

    .line 28
    invoke-static {v2, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/16 v2, 0x8b

    const/4 v3, 0x6

    const/16 v4, 0xfd

    .line 29
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    filled-new-array {p1, v0, v1, v2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->defaultColors:[I

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    .line 33
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->defaultColors:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->colors:[I

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    const p1, -0x333334

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundColor:I

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->pieRect:Landroid/graphics/RectF;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 42
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->padding:F

    .line 152
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundRect:Landroid/graphics/RectF;

    .line 54
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xbc

    const/16 p3, 0xce

    const/16 v0, 0xff

    .line 26
    invoke-static {p1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/16 p3, 0x86

    const/16 v1, 0xb1

    .line 27
    invoke-static {p3, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    const/16 v1, 0x52

    const/16 v2, 0x82

    .line 28
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/16 v1, 0x8b

    const/4 v2, 0x6

    const/16 v3, 0xfd

    .line 29
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    filled-new-array {p1, p3, v0, v1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->defaultColors:[I

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    .line 33
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->defaultColors:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->colors:[I

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    const p1, -0x333334

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundColor:I

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->pieRect:Landroid/graphics/RectF;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 42
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->padding:F

    .line 152
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundRect:Landroid/graphics/RectF;

    .line 59
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculateTotal()V
    .locals 4

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    .line 119
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 120
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    goto :goto_0

    .line 122
    :cond_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    :cond_1
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/R$styleable;->PieChartView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 66
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundColor:I

    .line 67
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->padding:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->padding:F

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundPaint:Landroid/graphics/Paint;

    .line 73
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->piePaint:Landroid/graphics/Paint;

    .line 77
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 156
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    .line 160
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 169
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->total:F

    div-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v6, v0, v3

    .line 172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->piePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->colors:[I

    array-length v4, v3

    rem-int v4, v2, v4

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->pieRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->piePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 186
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 187
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/16 v3, 0x12c

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 194
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x12c

    :goto_0
    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    .line 202
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    const/16 p2, 0x12c

    .line 207
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 129
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 130
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 131
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 134
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getPaddingLeft()I

    move-result p4

    int-to-float p4, p4

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p4, p1

    .line 135
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    int-to-float p2, p3

    add-float p3, p4, p2

    add-float/2addr p2, p1

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4, p1, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->padding:F

    add-float/2addr p4, v0

    add-float/2addr p1, v0

    sub-float/2addr p3, v0

    sub-float/2addr p2, v0

    sub-float/2addr p3, p4

    sub-float/2addr p2, p1

    .line 148
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 149
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->pieRect:Landroid/graphics/RectF;

    add-float v0, p4, p2

    add-float/2addr p2, p1

    invoke-virtual {p3, p4, p1, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setColors([I)V
    .locals 2

    .line 110
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->colors:[I

    .line 114
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->invalidate()V

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Colors array must contain exactly 4 colors."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(FFFF)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->calculateTotal()V

    .line 90
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->calculateTotal()V

    .line 103
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->invalidate()V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Data list must contain exactly 4 values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
