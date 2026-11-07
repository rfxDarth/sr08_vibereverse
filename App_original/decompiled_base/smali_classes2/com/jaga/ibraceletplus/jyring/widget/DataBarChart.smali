.class public Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;
.super Landroid/view/View;
.source "DataBarChart.java"


# instance fields
.field private barInterval:F

.field private color1:I

.field private color2:I

.field private color3:I

.field private color4:I

.field private cornerRadius:F

.field private data:[I

.field private defaultColor:I

.field private final paint:Landroid/graphics/Paint;

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x18

    .line 24
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->data:[I

    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->barInterval:F

    .line 26
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->cornerRadius:F

    .line 27
    const-string p3, "#4CAF50"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color1:I

    .line 28
    const-string p3, "#FFC107"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color2:I

    .line 29
    const-string p3, "#FF9800"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color3:I

    .line 30
    const-string p3, "#F44336"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color4:I

    const p3, -0x777778

    .line 31
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->defaultColor:I

    .line 33
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->paint:Landroid/graphics/Paint;

    .line 34
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->rectF:Landroid/graphics/RectF;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private dpToPx(F)F
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p2, :cond_0

    .line 53
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/R$styleable;->DataBarChart:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->barInterval:F

    const/4 p2, 0x6

    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->cornerRadius:F

    const/4 p2, 0x2

    .line 56
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color1:I

    const/4 p2, 0x3

    .line 57
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color2:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color2:I

    const/4 p2, 0x4

    .line 58
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color3:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color3:I

    const/4 p2, 0x5

    .line 59
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color4:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color4:I

    const/4 p2, 0x7

    .line 60
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->defaultColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->defaultColor:I

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->data:[I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 178
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getWidth()I

    move-result v1

    .line 181
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getHeight()I

    move-result v2

    .line 182
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingLeft()I

    move-result v3

    .line 183
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingRight()I

    move-result v4

    .line 184
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingTop()I

    move-result v5

    .line 185
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingBottom()I

    move-result v6

    sub-int v7, v1, v3

    sub-int/2addr v7, v4

    sub-int v8, v2, v5

    sub-int/2addr v8, v6

    if-lez v7, :cond_8

    if-gtz v8, :cond_0

    goto/16 :goto_5

    :cond_0
    const/high16 v9, 0x41b80000    # 23.0f

    .line 193
    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->barInterval:F

    mul-float v10, v10, v9

    int-to-float v7, v7

    sub-float/2addr v7, v10

    const/high16 v9, 0x41c00000    # 24.0f

    div-float/2addr v7, v9

    const/4 v9, 0x0

    cmpg-float v10, v7, v9

    if-gtz v10, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x18

    if-ge v10, v11, :cond_8

    .line 199
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->data:[I

    aget v11, v11, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v11, v11, v7

    .line 206
    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->defaultColor:I

    goto :goto_2

    :cond_2
    int-to-float v12, v11

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    int-to-float v13, v8

    mul-float v12, v12, v13

    const/16 v13, 0x1e

    if-gt v11, v13, :cond_3

    .line 211
    iget v11, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color1:I

    :goto_1
    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    goto :goto_2

    :cond_3
    const/16 v13, 0x3c

    if-gt v11, v13, :cond_4

    .line 213
    iget v11, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color2:I

    goto :goto_1

    :cond_4
    const/16 v13, 0x50

    if-gt v11, v13, :cond_5

    .line 215
    iget v11, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color3:I

    goto :goto_1

    .line 217
    :cond_5
    iget v11, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color4:I

    goto :goto_1

    :goto_2
    cmpg-float v13, v11, v9

    if-gtz v13, :cond_6

    goto :goto_3

    .line 224
    :cond_6
    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v3

    int-to-float v13, v10

    .line 227
    iget v14, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->barInterval:F

    add-float/2addr v14, v7

    mul-float v13, v13, v14

    add-float/2addr v13, v12

    add-float v14, v13, v7

    add-int v15, v5, v8

    int-to-float v15, v15

    sub-float v11, v15, v11

    .line 233
    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sub-int v13, v1, v4

    int-to-float v13, v13

    .line 234
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    int-to-float v14, v5

    .line 235
    invoke-static {v11, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sub-int v14, v2, v6

    int-to-float v14, v14

    .line 236
    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    cmpg-float v15, v12, v13

    if-gez v15, :cond_7

    cmpg-float v15, v11, v14

    if-gez v15, :cond_7

    .line 239
    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v15, v12, v11, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 240
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->rectF:Landroid/graphics/RectF;

    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->cornerRadius:F

    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->paint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v11, v12, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    :goto_3
    move-object/from16 v14, p1

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 130
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_0

    .line 136
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->dpToPx(F)F

    move-result v0

    float-to-int v1, v0

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingLeft()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingRight()I

    move-result v4

    .line 146
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingTop()I

    move-result v7

    .line 147
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->getPaddingBottom()I

    move-result v8

    sub-int v0, v1, v0

    sub-int/2addr v0, v4

    if-lez v0, :cond_2

    const/high16 v4, 0x41b80000    # 23.0f

    .line 152
    iget v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->barInterval:F

    mul-float v9, v9, v4

    int-to-float v0, v0

    sub-float/2addr v0, v9

    const/high16 v4, 0x41c00000    # 24.0f

    div-float/2addr v0, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/high16 v4, 0x40400000    # 3.0f

    mul-float v0, v0, v4

    int-to-float v4, v7

    add-float/2addr v0, v4

    int-to-float v4, v8

    add-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 158
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v2, v6, :cond_3

    .line 163
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_3
    if-ne v2, v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    .line 171
    :goto_2
    invoke-static {v1, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->resolveSize(II)I

    move-result p1

    .line 172
    invoke-static {v3, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->resolveSize(II)I

    move-result p2

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBarInterval(F)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->barInterval:F

    .line 114
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->requestLayout()V

    .line 115
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->invalidate()V

    return-void
.end method

.method public setColors(IIII)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color1:I

    .line 95
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color2:I

    .line 96
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color3:I

    .line 97
    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->color4:I

    .line 98
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->invalidate()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->cornerRadius:F

    .line 123
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->invalidate()V

    return-void
.end method

.method public setData([I)V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->data:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    if-eqz p1, :cond_1

    .line 76
    array-length v0, p1

    const/16 v2, 0x18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 79
    aget v3, p1, v2

    if-ltz v3, :cond_0

    const/16 v4, 0x64

    if-gt v3, v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->data:[I

    aput v3, v4, v2

    goto :goto_1

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->data:[I

    aput v1, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->invalidate()V

    return-void
.end method

.method public setDefaultColor(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->defaultColor:I

    .line 106
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->invalidate()V

    return-void
.end method
