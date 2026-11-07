.class public Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;
.super Landroid/view/View;
.source "EcgGrid.java"


# instance fields
.field public DEFAULT_RECT:I

.field public SAMPLINGRATE_256:F

.field private TAG:Ljava/lang/String;

.field private mGridColor:I

.field public mPaint:Landroid/graphics/Paint;

.field private mRGridColor:I

.field private mSGridColor:I

.field public offsetBS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "#ffccdd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mSGridColor:I

    .line 25
    const-string v0, "#d4616e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mGridColor:I

    .line 26
    const-string v0, "#990000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mRGridColor:I

    const/high16 v0, 0x43800000    # 256.0f

    .line 54
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->SAMPLINGRATE_256:F

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->offsetBS:I

    const/16 v1, 0x19

    .line 56
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->DEFAULT_RECT:I

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    .line 31
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/R$styleable;->EcgGrid:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const v1, -0xa0a0b

    .line 36
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mSGridColor:I

    const p2, -0x161617

    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mGridColor:I

    .line 38
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mRGridColor:I

    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    .line 58
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->SAMPLINGRATE_256:F

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->offsetBS:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->DEFAULT_RECT:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 59
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 61
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-float v6, v5

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v9, v6, v1

    if-gtz v9, :cond_2

    .line 66
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mSGridColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getLeft()I

    move-result v8

    int-to-float v8, v8

    mul-float v6, v6, v2

    add-float v10, v8, v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getTop()I

    move-result v8

    int-to-float v11, v8

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float v12, v8, v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getHeight()I

    move-result v8

    int-to-float v13, v8

    iget-object v14, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    rem-int/lit8 v8, v5, 0x5

    if-nez v8, :cond_1

    .line 71
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mGridColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    rem-int/lit8 v7, v5, 0x19

    if-nez v7, :cond_0

    .line 74
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mRGridColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v16, v7, v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float v18, v8, v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v19, v6

    move/from16 v17, v7

    move-object/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    int-to-float v1, v4

    cmpg-float v5, v1, v3

    if-gtz v5, :cond_4

    .line 82
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mSGridColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getTop()I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v1, v2

    add-float v17, v6, v1

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float v19, v9, v1

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v5

    move/from16 v18, v6

    move-object/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    rem-int/lit8 v5, v4, 0x5

    if-nez v5, :cond_3

    .line 86
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mGridColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float v17, v6, v1

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float v19, v9, v1

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move-object/from16 v20, v1

    move/from16 v16, v5

    move/from16 v18, v6

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->drawRect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRate(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->SAMPLINGRATE_256:F

    .line 51
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;->postInvalidate()V

    return-void
.end method
