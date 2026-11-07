.class public Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;
.super Lyanzhikai/ruler/InnerRulers/VerticalRuler;
.source "LeftHeadRuler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    return-void
.end method

.method private drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 53
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->postInvalidateOnAnimation()V

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 60
    :goto_0
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    .line 62
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 63
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getCursorWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mLength:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->postInvalidateOnAnimation()V

    .line 67
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 69
    :cond_3
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    :cond_4
    return-void
.end method

.method private drawScale(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 29
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->getScrollY()I

    move-result v2

    iget v3, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mDrawOffset:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v3

    div-int/2addr v2, v3

    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 30
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->getScrollY()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mDrawOffset:I

    add-int/2addr v3, v4

    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v4

    div-int/2addr v3, v4

    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    :goto_0
    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2

    .line 32
    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v5

    int-to-float v5, v5

    mul-float v8, v4, v5

    .line 34
    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getMaxScale()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    .line 35
    iget v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mCount:I

    int-to-float v4, v4

    rem-float v4, v2, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 36
    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getBigScaleLength()I

    move-result v4

    int-to-float v9, v4

    iget-object v11, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mBigScalePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move v10, v8

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getFactor()F

    move-result v4

    invoke-static {v2, v4}, Lyanzhikai/ruler/Utils/RulerStringUtil;->resultValueOf(FF)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getTextMarginHead()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v6}, Lyanzhikai/ruler/BooheeRuler;->getTextSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v8, v6

    iget-object v6, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move-object/from16 v12, p1

    .line 39
    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getSmallScaleLength()I

    move-result v4

    int-to-float v9, v4

    iget-object v11, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mSmallScalePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move v10, v8

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->getScrollY()I

    move-result v2

    int-to-float v14, v2

    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    iget-object v2, v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->mOutLinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p1

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->onDraw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->drawScale(Landroid/graphics/Canvas;)V

    .line 23
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    return-void
.end method
