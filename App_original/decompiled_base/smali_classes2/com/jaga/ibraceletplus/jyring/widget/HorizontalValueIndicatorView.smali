.class public Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;
.super Landroid/view/View;
.source "HorizontalValueIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView$LayoutParams;
    }
.end annotation


# instance fields
.field private barHeight:F

.field private barPaint:Landroid/graphics/Paint;

.field private color1:I

.field private color2:I

.field private color3:I

.field private color4:I

.field private cornerRadius:F

.field private currentValue:F

.field private defaultPointerColor:I

.field private maxValue:F

.field private minValue:F

.field private pointerDrawable:Landroid/graphics/drawable/Drawable;

.field private pointerPaint:Landroid/graphics/Paint;

.field private pointerSize:F

.field private final ratios:[F

.field private splitLineColor:I

.field private splitPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xbc

    const/16 v0, 0xce

    const/16 v1, 0xff

    .line 25
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color1:I

    const/16 p1, 0x86

    const/16 v0, 0xb1

    .line 26
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color2:I

    const/16 p1, 0x52

    const/16 v0, 0x82

    .line 27
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color3:I

    const/16 p1, 0x8b

    const/4 v0, 0x6

    const/16 v1, 0xfd

    .line 28
    invoke-static {v1, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color4:I

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitLineColor:I

    const/high16 p1, -0x1000000

    .line 31
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->defaultPointerColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 34
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->cornerRadius:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 35
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 36
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barHeight:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 39
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->maxValue:F

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->minValue:F

    const/4 p1, 0x4

    .line 43
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->ratios:[F

    const/4 p1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xbc

    const/16 v0, 0xce

    const/16 v1, 0xff

    .line 25
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color1:I

    const/16 p1, 0x86

    const/16 v0, 0xb1

    .line 26
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color2:I

    const/16 p1, 0x52

    const/16 v0, 0x82

    .line 27
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color3:I

    const/16 p1, 0x8b

    const/4 v0, 0x6

    const/16 v1, 0xfd

    .line 28
    invoke-static {v1, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color4:I

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitLineColor:I

    const/high16 p1, -0x1000000

    .line 31
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->defaultPointerColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 34
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->cornerRadius:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 35
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 36
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barHeight:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 39
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->maxValue:F

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->minValue:F

    const/4 p1, 0x4

    .line 43
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->ratios:[F

    .line 57
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xbc

    const/16 p3, 0xce

    const/16 v0, 0xff

    .line 25
    invoke-static {p1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color1:I

    const/16 p1, 0x86

    const/16 p3, 0xb1

    .line 26
    invoke-static {p1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color2:I

    const/16 p1, 0x52

    const/16 p3, 0x82

    .line 27
    invoke-static {p1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color3:I

    const/16 p1, 0x8b

    const/4 p3, 0x6

    const/16 v0, 0xfd

    .line 28
    invoke-static {v0, p1, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color4:I

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitLineColor:I

    const/high16 p1, -0x1000000

    .line 31
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->defaultPointerColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 34
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->cornerRadius:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 35
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 36
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barHeight:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 39
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->maxValue:F

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->minValue:F

    const/4 p1, 0x4

    .line 43
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->ratios:[F

    .line 62
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->init(Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private drawColorBar(Landroid/graphics/Canvas;FFFF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v7, p3

    .line 163
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 164
    new-instance v3, Landroid/graphics/RectF;

    move/from16 v6, p4

    move/from16 v8, p5

    invoke-direct {v3, v2, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->cornerRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v4, p1

    .line 168
    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    sub-float v1, v7, v2

    .line 172
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->ratios:[F

    const/4 v5, 0x0

    aget v5, v3, v5

    mul-float v5, v5, v1

    const/4 v9, 0x1

    .line 173
    aget v9, v3, v9

    mul-float v9, v9, v1

    const/4 v10, 0x2

    .line 174
    aget v10, v3, v10

    mul-float v1, v1, v10

    const/4 v10, 0x3

    .line 175
    aget v3, v3, v10

    add-float/2addr v5, v2

    add-float v11, v5, v9

    add-float v14, v11, v1

    .line 184
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color1:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    move/from16 v3, p4

    move-object v1, v4

    move v4, v5

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color2:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v12, p5

    move v9, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v15, v9

    .line 190
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color3:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    move v9, v11

    move v11, v14

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v2, v11

    move v11, v9

    .line 193
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color4:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, p4

    move/from16 v5, p5

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitPaint:Landroid/graphics/Paint;

    move v7, v15

    move-object/from16 v4, p1

    move/from16 v6, p4

    move/from16 v8, p5

    move v5, v15

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitPaint:Landroid/graphics/Paint;

    move v7, v11

    move v5, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitPaint:Landroid/graphics/Paint;

    move v7, v2

    move v5, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;FFF)V
    .locals 3

    .line 206
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->maxValue:F

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->minValue:F

    sub-float/2addr v0, v1

    .line 207
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    sub-float/2addr p3, p2

    mul-float v2, v2, p3

    add-float/2addr p2, v2

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p4, p3

    .line 213
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_5

    .line 218
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 219
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 220
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz p3, :cond_0

    .line 221
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    float-to-int p3, p3

    :cond_0
    if-gtz v1, :cond_1

    .line 222
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    float-to-int v1, v1

    .line 224
    :cond_1
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    int-to-float p3, p3

    div-float p3, v2, p3

    float-to-int v2, v2

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int p3, v1

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 230
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/16 v2, 0x1e

    if-gtz p3, :cond_3

    const/16 p3, 0x1e

    :cond_3
    move v2, p3

    if-gtz v1, :cond_4

    const/16 p3, 0x1e

    goto :goto_0

    :cond_4
    move p3, v1

    :goto_0
    int-to-float v1, v2

    div-float/2addr v1, v0

    sub-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p3, p3

    sub-float p3, p4, p3

    float-to-int p3, p3

    add-int/2addr v2, p2

    float-to-int p4, p4

    .line 241
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, v2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 245
    :cond_5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 246
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    div-float/2addr v1, v0

    .line 247
    invoke-virtual {p3, p2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v0, p2, v1

    .line 248
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    sub-float v2, p4, v2

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p2, v1

    .line 249
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    sub-float/2addr p4, v0

    invoke-virtual {p3, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 251
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/R$styleable;->HorizontalValueIndicatorView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color1:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color1:I

    const/4 v1, 0x2

    .line 69
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color2:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color2:I

    const/4 v1, 0x3

    .line 70
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color3:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color3:I

    const/4 v1, 0x4

    .line 71
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->color4:I

    const/16 v1, 0xa

    .line 72
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitLineColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitLineColor:I

    const/4 v1, 0x7

    .line 73
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->defaultPointerColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->defaultPointerColor:I

    const/16 v1, 0x8

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 75
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barHeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barHeight:F

    const/16 v1, 0x9

    .line 76
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    const/4 v1, 0x5

    .line 77
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->cornerRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->cornerRadius:F

    const/4 v1, 0x6

    .line 78
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barPaint:Landroid/graphics/Paint;

    .line 83
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitPaint:Landroid/graphics/Paint;

    .line 86
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitLineColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->splitPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerPaint:Landroid/graphics/Paint;

    .line 90
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->defaultPointerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 146
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    add-float v4, v0, v1

    .line 149
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float v5, v0, v1

    .line 150
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    add-float v6, v0, v1

    .line 151
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barHeight:F

    add-float v7, v6, v0

    move-object v2, p0

    move-object v3, p1

    .line 154
    invoke-direct/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->drawColorBar(Landroid/graphics/Canvas;FFFF)V

    .line 157
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->drawPointer(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 115
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->barHeight:F

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerSize:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 119
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x258

    if-ne v1, v3, :cond_1

    .line 128
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x258

    :goto_0
    if-ne v2, v4, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    .line 136
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCurrentValue(F)V
    .locals 2

    .line 96
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->minValue:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 97
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->maxValue:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 98
    :cond_1
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->currentValue:F

    .line 99
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->invalidate()V

    return-void
.end method

.method public setPointerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->pointerDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->invalidate()V

    return-void
.end method
