.class public Lcom/scwang/smartrefresh/header/BezierCircleHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "BezierCircleHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# static fields
.field protected static final TARGET_DEGREE:I = 0x10e


# instance fields
.field protected mBackPaint:Landroid/graphics/Paint;

.field protected mBollRadius:F

.field protected mBollY:F

.field protected mFinishRatio:F

.field protected mFrontPaint:Landroid/graphics/Paint;

.field protected mHeadHeight:F

.field protected mHeight:I

.field protected mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mOuterIsStart:Z

.field protected mOuterPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mRefreshStart:I

.field protected mRefreshStop:I

.field protected mShowBoll:Z

.field protected mShowBollTail:Z

.field protected mShowOuter:Z

.field protected mSpringRatio:F

.field protected mWaveHeight:F

.field protected mWavePulling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    .line 49
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    .line 50
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    .line 54
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    .line 68
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 70
    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    const v0, -0xee4401

    .line 72
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 75
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private drawBoll(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 155
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBoll:Z

    if-eqz v0, :cond_0

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 156
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 158
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    add-float/2addr v1, v0

    div-float/2addr v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawBollTail(Landroid/graphics/Canvas;IF)V

    :cond_0
    return-void
.end method

.method private drawBollTail(Landroid/graphics/Canvas;IF)V
    .locals 9

    .line 163
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBollTail:Z

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    add-float/2addr v0, v1

    .line 165
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    mul-float v3, v2, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    int-to-float p2, p2

    div-float v3, p2, v4

    mul-float v2, v2, v2

    mul-float v4, p3, p3

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float v2, v2, v4

    float-to-double v7, v2

    .line 166
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    add-float/2addr v2, v3

    .line 167
    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v4

    div-float/2addr v7, v5

    sub-float/2addr v6, p3

    mul-float v7, v7, v6

    add-float/2addr v3, v7

    add-float/2addr v4, v3

    .line 170
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 171
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v0, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 173
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    sub-float v4, p2, v4

    invoke-virtual {p3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    sub-float v3, p2, v3

    sub-float/2addr p2, v2

    invoke-virtual {p3, v3, v0, p2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 175
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawFinish(Landroid/graphics/Canvas;I)V
    .locals 14

    move-object v0, p1

    move/from16 v6, p2

    .line 205
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 207
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    float-to-double v1, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    const v10, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    cmpg-double v3, v1, v8

    if-gez v3, :cond_0

    int-to-float v1, v6

    div-float/2addr v1, v12

    .line 208
    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float v3, v3, v12

    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    div-float v5, v4, v10

    add-float/2addr v5, v11

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-float/2addr v4, v10

    sub-float v3, v11, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 210
    invoke-static {v7, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 211
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v3, v1

    .line 212
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v2

    sub-float v4, v3, v2

    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    sub-float v13, v5, v2

    add-float/2addr v3, v2

    add-float/2addr v5, v2

    invoke-direct {v1, v4, v13, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    float-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v7, v2, v8

    if-ltz v7, :cond_2

    float-to-double v2, v1

    cmpg-double v7, v2, v4

    if-gez v7, :cond_2

    sub-float/2addr v1, v10

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 219
    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    div-float v3, v2, v12

    div-float v7, v2, v12

    sub-float/2addr v2, v7

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    int-to-float v3, v6

    div-float/2addr v3, v12

    .line 220
    iget v7, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v8, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 221
    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v7, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    mul-float v7, v7, v12

    sub-float/2addr v3, v7

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    .line 222
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBollTail:Z

    .line 223
    invoke-direct {p0, p1, v6, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawBollTail(Landroid/graphics/Canvas;IF)V

    :cond_1
    const/4 v1, 0x0

    .line 225
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBollTail:Z

    .line 228
    :cond_2
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    float-to-double v2, v1

    cmpl-double v7, v2, v4

    if-ltz v7, :cond_3

    cmpg-float v2, v1, v11

    if-gtz v2, :cond_3

    const v2, 0x3f333333    # 0.7f

    sub-float/2addr v1, v2

    div-float/2addr v1, v10

    int-to-float v2, v6

    div-float/2addr v2, v12

    .line 230
    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    sub-float v4, v2, v3

    mul-float v3, v3, v12

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 231
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 232
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    int-to-float v5, v3

    iget v7, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v7, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    sub-float/2addr v11, v1

    mul-float v7, v7, v11

    sub-float v1, v5, v7

    sub-int v3, v6, v3

    int-to-float v3, v3

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 235
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private drawOuter(Landroid/graphics/Canvas;I)V
    .locals 13

    .line 180
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowOuter:Z

    if-eqz v0, :cond_5

    .line 181
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 183
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    const/4 v4, 0x3

    const/16 v5, 0xa

    if-eqz v3, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :cond_0
    const/16 v6, 0xa

    :goto_0
    add-int/2addr v1, v6

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    .line 184
    iget v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    if-eqz v3, :cond_1

    const/16 v4, 0xa

    :cond_1
    add-int/2addr v6, v4

    iput v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    .line 185
    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    .line 186
    rem-int/lit16 v6, v6, 0x168

    iput v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    sub-int/2addr v6, v1

    if-gez v6, :cond_2

    add-int/lit16 v6, v6, 0x168

    .line 191
    :cond_2
    new-instance v8, Landroid/graphics/RectF;

    int-to-float p2, p2

    div-float/2addr p2, v2

    sub-float v1, p2, v0

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    sub-float v3, v2, v0

    add-float/2addr p2, v0

    add-float/2addr v2, v0

    invoke-direct {v8, v1, v3, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    int-to-float v9, p2

    int-to-float v10, v6

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/16 p1, 0x10e

    if-lt v6, p1, :cond_3

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    goto :goto_1

    :cond_3
    if-gt v6, v5, :cond_4

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    .line 199
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method private drawSpringUp(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 140
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mSpringRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    .line 141
    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v4, v4, v3

    sub-float v4, v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, v0

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    float-to-double v5, v0

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 144
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 145
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mSpringRatio:F

    mul-float v5, v5, v6

    mul-float v5, v5, v1

    sub-float v1, v3, v5

    sub-float/2addr p2, v4

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 147
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 149
    :cond_0
    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;II)V
    .locals 7

    .line 126
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    int-to-float p3, p3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 127
    iget p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    .line 128
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 129
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, p2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    mul-float v2, v2, v1

    add-float/2addr v2, v5

    invoke-virtual {p3, p2, v2, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 132
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 133
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    int-to-float v4, p2

    .line 135
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 93
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeight:I

    .line 95
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v2

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 100
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBoll:Z

    .line 105
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowOuter:Z

    int-to-float v3, v1

    .line 106
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    const/16 v4, 0x10e

    .line 107
    iput v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    .line 108
    iput v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    .line 109
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    .line 112
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawWave(Landroid/graphics/Canvas;II)V

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawSpringUp(Landroid/graphics/Canvas;I)V

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawBoll(Landroid/graphics/Canvas;I)V

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawOuter(Landroid/graphics/Canvas;I)V

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawFinish(Landroid/graphics/Canvas;I)V

    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    :cond_3
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBoll:Z

    .line 330
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowOuter:Z

    const/4 p1, 0x2

    .line 332
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 333
    new-instance p2, Lcom/scwang/smartrefresh/header/BezierCircleHeader$2;

    invoke-direct {p2, p0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$2;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 342
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x320

    return p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 252
    iput p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeight:I

    if-nez p1, :cond_0

    .line 253
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    int-to-float p1, p4

    .line 255
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    sub-int/2addr p3, p4

    const/4 p1, 0x0

    .line 256
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->invalidate()V

    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 4

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    int-to-float p2, p2

    .line 264
    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    const/high16 p3, 0x40c00000    # 6.0f

    div-float/2addr p2, p3

    .line 265
    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    .line 266
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 267
    iget p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p3, p3, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 268
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v1, v1, p3

    neg-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v2, v2, p3

    neg-float v2, v2

    const/4 v3, 0x6

    new-array v3, v3, [F

    aput v0, v3, p1

    const/4 p1, 0x1

    const/4 v0, 0x0

    aput v0, v3, p1

    const/4 p1, 0x2

    aput v1, v3, p1

    const/4 p1, 0x3

    aput v0, v3, p1

    const/4 p1, 0x4

    aput v2, v3, p1

    const/4 p1, 0x5

    aput v0, v3, p1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 273
    new-instance v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$1;

    invoke-direct {v0, p0, p3}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$1;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x3e8

    .line 323
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    array-length v0, p1

    if-lez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
