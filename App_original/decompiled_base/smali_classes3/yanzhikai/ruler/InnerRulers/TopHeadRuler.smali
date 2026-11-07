.class public Lyanzhikai/ruler/InnerRulers/TopHeadRuler;
.super Lyanzhikai/ruler/InnerRulers/HorizontalRuler;
.source "TopHeadRuler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    return-void
.end method

.method private drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    .line 58
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 59
    iget-object v2, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v2}, Lyanzhikai/ruler/BooheeRuler;->getCursorHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 60
    iget-object v2, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->postInvalidateOnAnimation()V

    .line 63
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 67
    :goto_0
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    .line 69
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    iget v2, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mLength:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->postInvalidateOnAnimation()V

    .line 74
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    :cond_4
    return-void
.end method

.method private drawScale(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 30
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->getScrollX()I

    move-result v1

    iget v2, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mDrawOffset:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v2}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v2}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 31
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->getScrollX()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mDrawOffset:I

    add-int/2addr v2, v3

    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v3

    div-int/2addr v2, v3

    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    :goto_0
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_2

    .line 34
    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v4

    int-to-float v4, v4

    mul-float v6, v3, v4

    .line 36
    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getMaxScale()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 37
    iget v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mCount:I

    int-to-float v3, v3

    rem-float v3, v1, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 38
    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getBigScaleLength()I

    move-result v3

    int-to-float v9, v3

    iget-object v10, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mBigScalePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move v8, v6

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 39
    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getFactor()F

    move-result v3

    invoke-static {v1, v3}, Lyanzhikai/ruler/Utils/RulerStringUtil;->resultValueOf(FF)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getTextMarginHead()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move-object/from16 v11, p1

    .line 41
    iget-object v3, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getSmallScaleLength()I

    move-result v3

    int-to-float v9, v3

    iget-object v10, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mSmallScalePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move v8, v6

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->getScrollX()I

    move-result v1

    int-to-float v12, v1

    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->getScrollX()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v14, v1

    const/4 v15, 0x0

    iget-object v1, v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->mOutLinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->onDraw(Landroid/graphics/Canvas;)V

    .line 23
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->drawScale(Landroid/graphics/Canvas;)V

    .line 24
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    return-void
.end method
