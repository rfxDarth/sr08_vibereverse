.class public abstract Lyanzhikai/ruler/InnerRulers/HorizontalRuler;
.super Lyanzhikai/ruler/InnerRulers/InnerRuler;
.source "HorizontalRuler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mHalfWidth:I

.field private mLastX:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/InnerRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    .line 16
    const-string p1, "ruler"

    iput-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLastX:F

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mHalfWidth:I

    return-void
.end method

.method private fling(I)V
    .locals 9

    .line 87
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->getScrollX()I

    move-result v1

    iget v2, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinPosition:I

    iget v3, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEdgeLength:I

    sub-int v5, v2, v3

    iget v2, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaxPosition:I

    iget v3, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEdgeLength:I

    add-int v6, v2, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 88
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->invalidate()V

    return-void
.end method

.method private goEndEdgeEffect(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 137
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaxPosition:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEdgeLength:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float p1, p1, v1

    const v1, 0x3e99999a    # 0.3f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 140
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getCursorHeight()I

    move-result v0

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 142
    :goto_0
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private goStartEdgeEffect(I)V
    .locals 2

    .line 120
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 123
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinPosition:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEdgeLength:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float p1, p1, v1

    const v1, 0x3e99999a    # 0.3f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 126
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getCursorHeight()I

    move-result v0

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private releaseEdgeEffects()V
    .locals 1

    .line 148
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 150
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    return-void
.end method

.method private scaleToScrollX(F)I
    .locals 1

    .line 173
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaxLength:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLength:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinPosition:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private scrollXtoScale(I)F
    .locals 1

    .line 167
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinPosition:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLength:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaxLength:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public goToScale(F)V
    .locals 1

    .line 156
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mCurrentScale:F

    .line 157
    iget p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mCurrentScale:F

    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->scaleToScrollX(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->scrollTo(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->onSizeChanged(IIII)V

    .line 201
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->refreshSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 35
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    :cond_0
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->scrollBackToCurrentScale()V

    .line 76
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 77
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 78
    iput-object v2, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 80
    :cond_3
    invoke-direct {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->releaseEdgeEffects()V

    goto :goto_1

    .line 49
    :cond_4
    iget p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLastX:F

    sub-float/2addr p1, v0

    .line 50
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLastX:F

    float-to-int p1, p1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->scrollBy(II)V

    goto :goto_1

    .line 55
    :cond_5
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 56
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinimumVelocity:I

    if-le v0, v3, :cond_6

    neg-int p1, p1

    .line 58
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->fling(I)V

    goto :goto_0

    .line 60
    :cond_6
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->scrollBackToCurrentScale()V

    .line 63
    :goto_0
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 64
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 65
    iput-object v2, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 67
    :cond_7
    invoke-direct {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->releaseEdgeEffects()V

    goto :goto_1

    .line 42
    :cond_8
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_9

    .line 43
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 46
    :cond_9
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLastX:F

    :goto_1
    return v1
.end method

.method public refreshSize()V
    .locals 2

    .line 191
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getMaxScale()I

    move-result v0

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLength:I

    .line 192
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mHalfWidth:I

    neg-int v0, v0

    .line 193
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinPosition:I

    .line 194
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mLength:I

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mHalfWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaxPosition:I

    return-void
.end method

.method protected scrollBackToCurrentScale()V
    .locals 6

    .line 182
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->getScrollX()I

    move-result v1

    iget v2, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mCurrentScale:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->scaleToScrollX(F)I

    move-result v2

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->getScrollX()I

    move-result v3

    sub-int v3, v2, v3

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 183
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->invalidate()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .line 99
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinPosition:I

    if-ge p1, v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->goStartEdgeEffect(I)V

    .line 101
    iget p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMinPosition:I

    .line 103
    :cond_0
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaxPosition:I

    if-le p1, v0, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->goEndEdgeEffect(I)V

    .line 105
    iget p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mMaxPosition:I

    .line 107
    :cond_1
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 108
    invoke-super {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->scrollTo(II)V

    .line 111
    :cond_2
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->scrollXtoScale(I)F

    move-result p1

    iput p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mCurrentScale:F

    .line 112
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mRulerCallback:Lyanzhikai/ruler/RulerCallback;

    if-eqz p1, :cond_3

    .line 113
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mRulerCallback:Lyanzhikai/ruler/RulerCallback;

    iget p2, p0, Lyanzhikai/ruler/InnerRulers/HorizontalRuler;->mCurrentScale:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    invoke-interface {p1, p2}, Lyanzhikai/ruler/RulerCallback;->onScaleChanging(F)V

    :cond_3
    return-void
.end method
