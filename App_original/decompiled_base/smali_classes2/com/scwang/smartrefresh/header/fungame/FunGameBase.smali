.class public abstract Lcom/scwang/smartrefresh/header/fungame/FunGameBase;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "FunGameBase.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field protected mHeaderHeight:I

.field protected mIsFinish:Z

.field protected mLastFinish:Z

.field protected mManualOperation:Z

.field protected mOffset:I

.field protected mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

.field protected mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mScreenHeightPixels:I

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 47
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mScreenHeightPixels:I

    .line 49
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 3

    .line 199
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mLastFinish:Z

    .line 200
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    .line 202
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-eqz v0, :cond_1

    .line 203
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationRelease()V

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    return v1

    :cond_0
    const p1, 0x7fffffff

    return p1

    :cond_1
    return v1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 188
    iput p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 191
    iget p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mOffset:I

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    .line 192
    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onManualOperationMove(FIII)V
.end method

.method protected onManualOperationRelease()V
    .locals 4

    .line 122
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 123
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    .line 128
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mLastFinish:Z

    invoke-virtual {p0, v0, v1}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    .line 130
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 131
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    invoke-interface {v0, v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method protected onManualOperationStart()V
    .locals 4

    .line 104
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    .line 106
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshContent()Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 112
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 150
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationMove(FIII)V

    return-void

    .line 152
    :cond_0
    iput p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mOffset:I

    .line 154
    iget p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0

    .line 181
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 59
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 60
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationStart()V

    .line 63
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    .line 71
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    .line 72
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mScreenHeightPixels:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    float-to-double v6, v0

    float-to-double v8, p1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v10

    const-wide/16 v10, 0x0

    .line 73
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    neg-double v10, v8

    div-double/2addr v10, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 74
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v6

    mul-double v4, v4, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 75
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p1, v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationRelease()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 88
    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    .line 89
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    if-eqz p1, :cond_7

    .line 90
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    invoke-interface {p1, v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 65
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    .line 66
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p1, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_7
    :goto_1
    return v2
.end method
