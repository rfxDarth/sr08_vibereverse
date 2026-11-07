.class public Lyanzhikai/ruler/InnerRulers/RightHeadRuler;
.super Lyanzhikai/ruler/InnerRulers/VerticalRuler;
.source "RightHeadRuler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    return-void
.end method

.method private drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->getWidth()I

    move-result v1

    iget-object v2, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v2}, Lyanzhikai/ruler/BooheeRuler;->getCursorWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->postInvalidateOnAnimation()V

    .line 57
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 61
    :goto_0
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 64
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mLength:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->postInvalidateOnAnimation()V

    .line 68
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 70
    :cond_3
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    :cond_4
    return-void
.end method

.method private drawScale(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 29
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->getScrollY()I

    move-result v3

    iget v4, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mDrawOffset:I

    sub-int/2addr v3, v4

    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v4

    div-int/2addr v3, v4

    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 30
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->getScrollY()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mDrawOffset:I

    add-int/2addr v4, v5

    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v5

    div-int/2addr v4, v5

    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    :goto_0
    cmpg-float v5, v3, v4

    if-gtz v5, :cond_2

    .line 32
    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget-object v6, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v6}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v6

    int-to-float v6, v6

    mul-float v9, v5, v6

    .line 34
    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getMaxScale()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    .line 35
    iget v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mCount:I

    int-to-float v5, v5

    rem-float v5, v3, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 36
    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getBigScaleLength()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v8, v5

    int-to-float v10, v1

    iget-object v12, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mBigScalePaint:Landroid/graphics/Paint;

    move v11, v9

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getFactor()F

    move-result v5

    invoke-static {v3, v5}, Lyanzhikai/ruler/Utils/RulerStringUtil;->resultValueOf(FF)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v6}, Lyanzhikai/ruler/BooheeRuler;->getTextMarginHead()I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    iget-object v7, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v7}, Lyanzhikai/ruler/BooheeRuler;->getTextSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v9, v7

    iget-object v7, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    invoke-virtual {v13, v5, v6, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move-object/from16 v13, p1

    .line 39
    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getSmallScaleLength()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v8, v5

    int-to-float v10, v1

    iget-object v12, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mSmallScalePaint:Landroid/graphics/Paint;

    move v11, v9

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    goto/16 :goto_0

    .line 44
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v14, v1

    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->getScrollY()I

    move-result v1

    int-to-float v15, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->mOutLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->onDraw(Landroid/graphics/Canvas;)V

    .line 21
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->drawScale(Landroid/graphics/Canvas;)V

    .line 22
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    return-void
.end method
