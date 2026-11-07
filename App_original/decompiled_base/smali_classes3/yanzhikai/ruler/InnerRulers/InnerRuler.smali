.class public abstract Lyanzhikai/ruler/InnerRulers/InnerRuler;
.super Landroid/view/View;
.source "InnerRuler.java"


# instance fields
.field protected mBigScalePaint:Landroid/graphics/Paint;

.field protected mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mCurrentScale:F

.field protected mDrawOffset:I

.field protected mEdgeLength:I

.field protected mEndEdgeEffect:Landroid/widget/EdgeEffect;

.field protected mLength:I

.field protected mMaxLength:I

.field protected mMaxPosition:I

.field protected mMaximumVelocity:I

.field protected mMinPosition:I

.field protected mMinimumVelocity:I

.field protected mOutLinePaint:Landroid/graphics/Paint;

.field protected mOverScroller:Landroid/widget/OverScroller;

.field protected mParent:Lyanzhikai/ruler/BooheeRuler;

.field protected mRulerCallback:Lyanzhikai/ruler/RulerCallback;

.field protected mSmallScalePaint:Landroid/graphics/Paint;

.field protected mStartEdgeEffect:Landroid/widget/EdgeEffect;

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCurrentScale:F

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mMaxLength:I

    .line 32
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mMinPosition:I

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mMaxPosition:I

    const/16 v0, 0xa

    .line 36
    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCount:I

    .line 52
    iput-object p2, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    .line 53
    invoke-virtual {p0, p1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->init(Landroid/content/Context;)V

    return-void
.end method

.method private checkAPILevel()V
    .locals 0

    return-void
.end method

.method private initPaints()V
    .locals 2

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mSmallScalePaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getSmallScaleWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mSmallScalePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getScaleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mSmallScalePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mBigScalePaint:Landroid/graphics/Paint;

    .line 97
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getScaleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mBigScalePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getBigScaleWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mBigScalePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mOutLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getScaleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 137
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->scrollTo(II)V

    .line 141
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCurrentScale:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->scrollBackToCurrentScale()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->invalidate()V

    :cond_1
    return-void
.end method

.method public getCurrentScale()F
    .locals 1

    .line 165
    iget v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCurrentScale:F

    return v0
.end method

.method protected abstract goToScale(F)V
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 57
    iput-object p1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getMaxScale()I

    move-result v0

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getMinScale()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mMaxLength:I

    .line 60
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getCurrentScale()F

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCurrentScale:F

    .line 61
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getCount()I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCount:I

    .line 62
    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v1

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mDrawOffset:I

    .line 64
    invoke-direct {p0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->initPaints()V

    .line 66
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mOverScroller:Landroid/widget/OverScroller;

    .line 70
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mMaximumVelocity:I

    .line 73
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mMinimumVelocity:I

    .line 76
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->initEdgeEffects()V

    .line 79
    invoke-virtual {p0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lyanzhikai/ruler/InnerRulers/InnerRuler$1;

    invoke-direct {v0, p0}, Lyanzhikai/ruler/InnerRulers/InnerRuler$1;-><init>(Lyanzhikai/ruler/InnerRulers/InnerRuler;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    invoke-direct {p0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->checkAPILevel()V

    return-void
.end method

.method public initEdgeEffects()V
    .locals 3

    .line 114
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->canEdgeEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    .line 117
    new-instance v0, Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    .line 119
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mStartEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getEdgeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 120
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mEndEdgeEffect:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getEdgeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 122
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getCursorHeight()I

    move-result v0

    iget-object v1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getInterval()I

    move-result v1

    iget-object v2, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mParent:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v2}, Lyanzhikai/ruler/BooheeRuler;->getCount()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mEdgeLength:I

    :cond_1
    return-void
.end method

.method public abstract refreshSize()V
.end method

.method protected abstract scrollBackToCurrentScale()V
.end method

.method public setCurrentScale(F)V
    .locals 0

    .line 156
    iput p1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCurrentScale:F

    .line 157
    invoke-virtual {p0, p1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->goToScale(F)V

    return-void
.end method

.method public setRulerCallback(Lyanzhikai/ruler/RulerCallback;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mRulerCallback:Lyanzhikai/ruler/RulerCallback;

    return-void
.end method
