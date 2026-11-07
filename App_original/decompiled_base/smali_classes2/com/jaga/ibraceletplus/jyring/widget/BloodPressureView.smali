.class public Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;
.super Landroid/view/View;
.source "BloodPressureView.java"


# static fields
.field private static final DEFAULT_CIRCLE_RADIUS_DP:I = 0x8

.field private static final DEFAULT_DIASTOLIC_COLOR:I = -0xffff01

.field private static final DEFAULT_LINE_WIDTH_DP:F = 4.0f

.field private static final DEFAULT_SYSTOLIC_COLOR:I = -0x10000

.field private static final TOTAL_POINTS:I = 0x18


# instance fields
.field private circleRadiusPx:F

.field private dataSet:Z

.field private diastolicColor:I

.field private diastolicData:[I

.field private diastolicPaint:Landroid/graphics/Paint;

.field private linePaint:Landroid/graphics/Paint;

.field private lineWidthPx:F

.field private systolicColor:I

.field private systolicData:[I

.field private systolicPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x18

    .line 39
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicData:[I

    .line 40
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicData:[I

    const/4 p3, 0x0

    .line 41
    iput-boolean p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->dataSet:Z

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private clearData()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicData:[I

    aput v0, v2, v1

    .line 114
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicData:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 58
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/R$styleable;->BloodPressureView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x3

    const/high16 v1, -0x10000

    .line 59
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicColor:I

    const v0, -0xffff01

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicColor:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    .line 62
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x40800000    # 4.0f

    .line 65
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/4 v2, 0x2

    .line 64
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->circleRadiusPx:F

    .line 72
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->lineWidthPx:F

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicPaint:Landroid/graphics/Paint;

    .line 76
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicPaint:Landroid/graphics/Paint;

    .line 80
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    .line 84
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->lineWidthPx:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->clearData()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 144
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->dataSet:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->getWidth()I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->getHeight()I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->getPaddingLeft()I

    move-result v2

    .line 150
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->getPaddingRight()I

    move-result v3

    .line 151
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->getPaddingTop()I

    move-result v4

    .line 152
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v5

    if-lez v0, :cond_11

    if-gtz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    const/high16 v3, -0x80000000

    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    :goto_0
    const/16 v9, 0x18

    if-ge v7, v9, :cond_4

    .line 163
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicData:[I

    aget v9, v9, v7

    if-lez v9, :cond_2

    .line 164
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 165
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicData:[I

    aget v9, v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 167
    :cond_2
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicData:[I

    aget v9, v9, v7

    if-lez v9, :cond_3

    .line 168
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 169
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicData:[I

    aget v9, v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-ne v8, v3, :cond_5

    goto/16 :goto_7

    :cond_5
    sub-int v3, v8, v5

    if-nez v3, :cond_6

    add-int/lit8 v5, v5, -0xa

    .line 179
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v8, v8, 0xa

    goto :goto_1

    .line 182
    :cond_6
    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v5, v3

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v8, v3

    move v3, v5

    :goto_1
    int-to-float v3, v3

    int-to-float v5, v8

    int-to-float v1, v1

    .line 191
    new-array v7, v9, [F

    int-to-float v0, v0

    const/high16 v8, 0x41b80000    # 23.0f

    div-float/2addr v0, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_7

    int-to-float v10, v2

    int-to-float v11, v8

    mul-float v11, v11, v0

    add-float/2addr v10, v11

    .line 197
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 202
    :cond_7
    new-array v8, v9, [Ljava/lang/Float;

    .line 203
    new-array v10, v9, [Ljava/lang/Float;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_a

    .line 205
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicData:[I

    aget v2, v2, v0

    if-lez v2, :cond_8

    int-to-float v11, v4

    add-float/2addr v11, v1

    int-to-float v2, v2

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    sub-float v12, v5, v3

    div-float/2addr v2, v12

    sub-float/2addr v11, v2

    .line 206
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v0

    .line 209
    :cond_8
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicData:[I

    aget v2, v2, v0

    if-lez v2, :cond_9

    int-to-float v11, v4

    add-float/2addr v11, v1

    int-to-float v2, v2

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    sub-float v12, v5, v3

    div-float/2addr v2, v12

    sub-float/2addr v11, v2

    .line 210
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 217
    :cond_a
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    :goto_4
    const/16 v12, 0x17

    if-ge v11, v12, :cond_c

    .line 219
    aget-object v0, v8, v11

    if-eqz v0, :cond_b

    add-int/lit8 v1, v11, 0x1

    aget-object v2, v8, v1

    if-eqz v2, :cond_b

    move v2, v1

    .line 220
    aget v1, v7, v11

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget v3, v7, v2

    aget-object v2, v8, v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    move v2, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 224
    :cond_c
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v12, :cond_e

    .line 226
    aget-object v0, v10, v11

    if-eqz v0, :cond_d

    add-int/lit8 v1, v11, 0x1

    aget-object v2, v10, v1

    if-eqz v2, :cond_d

    move v2, v1

    .line 227
    aget v1, v7, v11

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget v3, v7, v2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    move v2, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    if-ge v6, v9, :cond_11

    .line 233
    aget-object v1, v8, v6

    if-eqz v1, :cond_f

    .line 234
    aget v2, v7, v6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->circleRadiusPx:F

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    :cond_f
    aget-object v1, v10, v6

    if-eqz v1, :cond_10

    .line 237
    aget v2, v7, v6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->circleRadiusPx:F

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_11
    :goto_7
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->circleRadiusPx:F

    .line 133
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->invalidate()V

    return-void
.end method

.method public setData([I[I)V
    .locals 4

    .line 98
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->clearData()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 100
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 103
    aget v2, p1, v1

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicData:[I

    aput v2, v3, v1

    .line 104
    :cond_0
    aget v2, p2, v1

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicData:[I

    aput v2, v3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->dataSet:Z

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->invalidate()V

    return-void
.end method

.method public setDiastolicColor(I)V
    .locals 1

    .line 126
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicColor:I

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->diastolicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->invalidate()V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 137
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->lineWidthPx:F

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->invalidate()V

    return-void
.end method

.method public setSystolicColor(I)V
    .locals 1

    .line 120
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicColor:I

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->systolicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->invalidate()V

    return-void
.end method
