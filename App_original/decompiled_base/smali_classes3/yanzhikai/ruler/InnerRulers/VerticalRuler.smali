.class public abstract Lyanzhikai/ruler/InnerRulers/VerticalRuler;
.super Lyanzhikai/ruler/InnerRulers/InnerRuler;
.source "VerticalRuler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mHalfHeight:I

.field private mLastY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/InnerRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    .line 16
    const-string p1, "ruler"

    iput-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLastY:F

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mHalfHeight:I

    return-void
.end method

.method private fling(I)V
    .locals 9

    .line 83
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->getScrollY()I

    move-result v2

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinPosition:I

    iget v3, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEdgeLength:I

    sub-int v7, v1, v3

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaxPosition:I

    iget v3, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEdgeLength:I

    add-int v8, v1, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 84
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->invalidate()V

    return-void
.end method

.method private goEndEdgeEffect(I)V
    .locals 2

    .line 125
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 128
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaxPosition:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEdgeLength:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float p1, p1, v1

    const v1, 0x3e99999a    # 0.3f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 131
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getCursorWidth()I

    move-result v0

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 133
    :goto_0
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private goStartEdgeEffect(I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 114
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinPosition:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEdgeLength:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float p1, p1, v1

    const v1, 0x3e99999a    # 0.3f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 117
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getCursorWidth()I

    move-result v0

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private releaseEdgeEffects()V
    .locals 1

    .line 139
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 141
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    return-void
.end method

.method private scaleToScrollY(F)I
    .locals 1

    .line 161
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaxLength:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLength:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinPosition:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private scrollYtoScale(I)F
    .locals 1

    .line 156
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinPosition:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLength:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaxLength:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public goToScale(F)V
    .locals 1

    .line 147
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mCurrentScale:F

    .line 148
    iget p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mCurrentScale:F

    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->scaleToScrollY(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->scrollTo(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->onSizeChanged(IIII)V

    .line 188
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->refreshSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 32
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 33
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 35
    :cond_0
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 37
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

    .line 67
    :cond_1
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 68
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 70
    :cond_2
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->scrollBackToCurrentScale()V

    .line 72
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 74
    iput-object v2, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 76
    :cond_3
    invoke-direct {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->releaseEdgeEffects()V

    goto :goto_1

    .line 46
    :cond_4
    iget p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLastY:F

    sub-float/2addr p1, v0

    .line 47
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLastY:F

    const/4 v0, 0x0

    float-to-int p1, p1

    .line 48
    invoke-virtual {p0, v0, p1}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->scrollBy(II)V

    goto :goto_1

    .line 52
    :cond_5
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 53
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 54
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinimumVelocity:I

    if-le v0, v3, :cond_6

    neg-int p1, p1

    .line 55
    invoke-direct {p0, p1}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->fling(I)V

    goto :goto_0

    .line 57
    :cond_6
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->scrollBackToCurrentScale()V

    .line 60
    :goto_0
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 61
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 62
    iput-object v2, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 64
    :cond_7
    invoke-direct {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->releaseEdgeEffects()V

    goto :goto_1

    .line 39
    :cond_8
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_9

    .line 40
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 43
    :cond_9
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLastY:F

    :goto_1
    return v1
.end method

.method public refreshSize()V
    .locals 2

    .line 178
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getMaxScale()I

    move-result v0

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLength:I

    .line 179
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mHalfHeight:I

    neg-int v0, v0

    .line 180
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinPosition:I

    .line 181
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mLength:I

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mHalfHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaxPosition:I

    return-void
.end method

.method protected scrollBackToCurrentScale()V
    .locals 6

    .line 169
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->getScrollY()I

    move-result v2

    iget v1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mCurrentScale:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->scaleToScrollY(F)I

    move-result v1

    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->getScrollY()I

    move-result v3

    sub-int v4, v1, v3

    const/16 v5, 0x3e8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 170
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->invalidate()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .line 90
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinPosition:I

    if-ge p2, v0, :cond_0

    .line 91
    invoke-direct {p0, p2}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->goStartEdgeEffect(I)V

    .line 92
    iget p2, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMinPosition:I

    .line 94
    :cond_0
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaxPosition:I

    if-le p2, v0, :cond_1

    .line 95
    invoke-direct {p0, p2}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->goEndEdgeEffect(I)V

    .line 96
    iget p2, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mMaxPosition:I

    .line 98
    :cond_1
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 99
    invoke-super {p0, p1, p2}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->scrollTo(II)V

    .line 102
    :cond_2
    invoke-direct {p0, p2}, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->scrollYtoScale(I)F

    move-result p1

    iput p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mCurrentScale:F

    .line 103
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mRulerCallback:Lyanzhikai/ruler/RulerCallback;

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mRulerCallback:Lyanzhikai/ruler/RulerCallback;

    iget p2, p0, Lyanzhikai/ruler/InnerRulers/VerticalRuler;->mCurrentScale:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    invoke-interface {p1, p2}, Lyanzhikai/ruler/RulerCallback;->onScaleChanging(F)V

    :cond_3
    return-void
.end method
