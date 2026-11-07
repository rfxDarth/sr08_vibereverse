.class Lcom/yydcdut/sdlv/ItemMainLayout;
.super Landroid/widget/FrameLayout;
.source "ItemMainLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;,
        Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;,
        Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;
    }
.end annotation


# static fields
.field private static final INTENTION_LEFT_ALREADY_OPEN:I = 0x3

.field private static final INTENTION_LEFT_CLOSE:I = 0x2

.field private static final INTENTION_LEFT_OPEN:I = 0x1

.field private static final INTENTION_RIGHT_ALREADY_OPEN:I = -0x3

.field private static final INTENTION_RIGHT_CLOSE:I = -0x2

.field private static final INTENTION_RIGHT_OPEN:I = -0x1

.field private static final INTENTION_SCROLL_BACK:I = -0x4

.field private static final INTENTION_ZERO:I = 0x0

.field protected static final SCROLL_BACK_ALREADY_CLOSED:I = 0x2

.field protected static final SCROLL_BACK_CLICK_MENU_BUTTON:I = 0x3

.field protected static final SCROLL_BACK_CLICK_NOTHING:I = 0x0

.field protected static final SCROLL_BACK_CLICK_OWN:I = 0x1

.field private static final SCROLL_BACK_TIME:I = 0xfa

.field private static final SCROLL_DELETE_TIME:I = 0x12c

.field protected static final SCROLL_STATE_CLOSE:I = 0x0

.field protected static final SCROLL_STATE_OPEN:I = 0x1

.field private static final SCROLL_TIME:I = 0x1f4


# instance fields
.field private mBtnLeftTotalWidth:I

.field private mBtnRightTotalWidth:I

.field private mIntention:I

.field private mIsMoving:Z

.field private mItemCustomView:Landroid/view/View;

.field private mItemLeftBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

.field private mItemRightBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

.field private mNormalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mNormalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnItemScrollBackListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;

.field private mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mTotalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mWannaOver:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 47
    iput v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    .line 68
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIsMoving:Z

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mWannaOver:Z

    .line 72
    iput v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    .line 84
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    .line 85
    new-instance v0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-direct {v0, p1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemRightBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    .line 86
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-direct {v0, p1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemLeftBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    .line 88
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iput-object p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    .line 97
    invoke-direct {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->initBackgroundDrawable()V

    return-void
.end method

.method private fingerLeftAndRightMove(Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, p2

    iget p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p2, p3

    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, p3

    iget p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    neg-int p2, p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fingerNotMove(Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float v0, p2, v0

    iget v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float p2, p3, p2

    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p3, p1

    iget p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTouchSlop:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initBackgroundDrawable()V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 471
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 472
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 474
    :cond_0
    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    :goto_0
    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTotalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 481
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_2

    .line 482
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 483
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 485
    :cond_2
    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    :goto_1
    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTotalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void
.end method

.method private setBackGroundVisible(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemLeftBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemLeftBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-virtual {p1, v1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 303
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemRightBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    return-void

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemRightBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-virtual {p1, v1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 379
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->postInvalidate()V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 381
    invoke-direct {p0, v0, v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    .line 383
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->enableBackgroundDrawable()V

    .line 384
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemScrollBackListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0, p0}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;->onScrollBack(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemScrollBackListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;

    .line 390
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    return-void
.end method

.method protected deleteItem(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;)V
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->scrollBack()V

    .line 336
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getMeasuredHeight()I

    move-result v0

    .line 337
    new-instance v1, Lcom/yydcdut/sdlv/ItemMainLayout$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/yydcdut/sdlv/ItemMainLayout$1;-><init>(Lcom/yydcdut/sdlv/ItemMainLayout;Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;I)V

    .line 361
    new-instance p1, Lcom/yydcdut/sdlv/ItemMainLayout$2;

    invoke-direct {p1, p0, v0}, Lcom/yydcdut/sdlv/ItemMainLayout$2;-><init>(Lcom/yydcdut/sdlv/ItemMainLayout;I)V

    .line 369
    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x12c

    .line 370
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 371
    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected disableBackgroundDrawable()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 500
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemRightBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mNormalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected enableBackgroundDrawable()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTotalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTotalCustomBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTotalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTotalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 514
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemRightBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mTotalListSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected getItemCustomView()Landroid/view/View;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    return-object v0
.end method

.method protected getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemLeftBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    return-object v0
.end method

.method protected getItemRightBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemRightBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    return-object v0
.end method

.method protected getScrollState()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    return v0
.end method

.method protected handleMotionEvent(Landroid/view/MotionEvent;FFI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 146
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, -0x3

    const/4 v5, -0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_14

    if-eq v2, v8, :cond_0

    if-eq v2, v6, :cond_14

    goto/16 :goto_3

    .line 149
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/yydcdut/sdlv/ItemMainLayout;->fingerNotMove(Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIsMoving:Z

    if-nez v2, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    .line 152
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/yydcdut/sdlv/ItemMainLayout;->fingerLeftAndRightMove(Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIsMoving:Z

    if-eqz v2, :cond_11

    .line 154
    :cond_2
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->disableBackgroundDrawable()V

    .line 156
    iput-boolean v9, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIsMoving:Z

    .line 158
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v2, p2

    const/4 v10, 0x0

    cmpl-float v11, v2, v10

    if-lez v11, :cond_5

    if-nez v1, :cond_3

    .line 163
    iput v9, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 164
    invoke-direct {v0, v9, v3}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    goto :goto_0

    :cond_3
    if-gez v1, :cond_4

    .line 166
    iput v5, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 167
    invoke-direct {v0, v3, v9}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    goto :goto_0

    :cond_4
    if-lez v1, :cond_8

    .line 169
    iput v6, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 170
    invoke-direct {v0, v9, v3}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    goto :goto_0

    :cond_5
    cmpg-float v11, v2, v10

    if-gez v11, :cond_8

    if-nez v1, :cond_6

    .line 174
    iput v7, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 175
    invoke-direct {v0, v3, v9}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    goto :goto_0

    :cond_6
    if-gez v1, :cond_7

    .line 177
    iput v4, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 178
    invoke-direct {v0, v3, v9}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    goto :goto_0

    :cond_7
    if-lez v1, :cond_8

    .line 180
    iput v8, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 181
    invoke-direct {v0, v9, v3}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    .line 185
    :cond_8
    :goto_0
    iget v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    if-eq v3, v4, :cond_10

    if-eq v3, v5, :cond_e

    if-eq v3, v7, :cond_10

    if-eq v3, v9, :cond_b

    if-eq v3, v8, :cond_9

    if-eq v3, v6, :cond_b

    goto/16 :goto_3

    :cond_9
    int-to-float v1, v1

    add-float/2addr v1, v2

    cmpg-float v2, v1, v10

    if-gez v2, :cond_a

    goto :goto_1

    :cond_a
    move v10, v1

    .line 204
    :goto_1
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    float-to-int v2, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    .line 205
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 204
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 188
    :cond_b
    iget-object v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemLeftBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-virtual {v3}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->hasMenuItemViews()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    int-to-float v1, v1

    add-float/2addr v1, v2

    .line 193
    iget-boolean v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mWannaOver:Z

    if-nez v2, :cond_d

    .line 194
    iget v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnLeftTotalWidth:I

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_d

    int-to-float v1, v2

    .line 197
    :cond_d
    iget-object v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    float-to-int v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    .line 198
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 197
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_e
    int-to-float v1, v1

    add-float/2addr v1, v2

    cmpl-float v2, v1, v10

    if-lez v2, :cond_f

    goto :goto_2

    :cond_f
    move v10, v1

    .line 226
    :goto_2
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    float-to-int v2, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    .line 227
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 226
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 209
    :cond_10
    iget-object v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemRightBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-virtual {v3}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->hasMenuItemViews()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    :goto_3
    return-void

    :cond_12
    int-to-float v1, v1

    add-float/2addr v1, v2

    .line 215
    iget-boolean v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mWannaOver:Z

    if-nez v2, :cond_13

    neg-float v2, v1

    .line 216
    iget v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnRightTotalWidth:I

    int-to-float v4, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_13

    neg-int v1, v3

    int-to-float v1, v1

    .line 219
    :cond_13
    iget-object v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    float-to-int v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    .line 220
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 219
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 234
    :cond_14
    iget v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    if-eq v1, v4, :cond_19

    if-eq v1, v5, :cond_19

    if-eq v1, v7, :cond_19

    if-eq v1, v9, :cond_15

    if-eq v1, v8, :cond_15

    if-eq v1, v6, :cond_15

    goto/16 :goto_4

    .line 239
    :cond_15
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnLeftTotalWidth:I

    div-int/lit8 v4, v2, 0x2

    if-le v1, v4, :cond_17

    .line 241
    iput v9, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 242
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v13, v2, v1

    .line 243
    iget-object v10, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    const/4 v14, 0x0

    const/16 v15, 0x1f4

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 244
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

    if-eqz v1, :cond_16

    iget v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    if-eq v2, v9, :cond_16

    .line 245
    invoke-interface {v1, v0, v9}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;->onSlideOpen(Landroid/view/View;I)V

    .line 247
    :cond_16
    iput v9, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    goto/16 :goto_4

    .line 249
    :cond_17
    iput v8, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 251
    iget-object v10, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v13, v1

    const/4 v14, 0x0

    const/16 v15, 0x1f4

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 252
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

    if-eqz v1, :cond_18

    iget v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    if-eqz v2, :cond_18

    .line 253
    invoke-interface {v1, v0, v9}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;->onSlideClose(Landroid/view/View;I)V

    .line 255
    :cond_18
    iput v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    goto :goto_4

    .line 261
    :cond_19
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnRightTotalWidth:I

    div-int/lit8 v4, v2, 0x2

    if-le v1, v4, :cond_1b

    .line 263
    iput v7, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 264
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 265
    iget-object v10, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    neg-int v13, v2

    const/4 v14, 0x0

    const/16 v15, 0x1f4

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 266
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

    if-eqz v1, :cond_1a

    iget v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    if-eq v2, v9, :cond_1a

    .line 267
    invoke-interface {v1, v0, v7}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;->onSlideOpen(Landroid/view/View;I)V

    .line 269
    :cond_1a
    iput v9, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    goto :goto_4

    .line 271
    :cond_1b
    iput v5, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 272
    iget-object v10, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v13, v1

    const/4 v14, 0x0

    const/16 v15, 0x1f4

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 274
    iget-object v1, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

    if-eqz v1, :cond_1c

    iget v2, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    if-eqz v2, :cond_1c

    .line 275
    invoke-interface {v1, v0, v7}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;->onSlideClose(Landroid/view/View;I)V

    .line 277
    :cond_1c
    iput v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    .line 281
    :goto_4
    iput v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 282
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->postInvalidate()V

    .line 283
    iput-boolean v3, v0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIsMoving:Z

    return-void
.end method

.method protected scrollBack(F)I
    .locals 3

    .line 427
    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 433
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->scrollBack()V

    .line 434
    iput v2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    return v1

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gez v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->scrollBack()V

    .line 442
    iput v2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    return v1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method protected scrollBack()V
    .locals 7

    const/4 v0, -0x4

    .line 397
    iput v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 398
    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    const/16 v6, 0xfa

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 399
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;->onSlideClose(Landroid/view/View;I)V

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->postInvalidate()V

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    .line 404
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->enableBackgroundDrawable()V

    return-void
.end method

.method protected scrollBack(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;)V
    .locals 6

    .line 411
    iput-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemScrollBackListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;

    const/4 p1, -0x4

    .line 412
    iput p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mIntention:I

    .line 413
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int v3, p1

    const/4 v4, 0x0

    const/16 v5, 0xfa

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 414
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-interface {p1, p0, v0}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;->onSlideClose(Landroid/view/View;I)V

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->postInvalidate()V

    const/4 p1, 0x0

    .line 418
    iput p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScrollState:I

    .line 419
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->enableBackgroundDrawable()V

    return-void
.end method

.method protected scrollOpen(I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 455
    iget v2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnLeftTotalWidth:I

    if-eqz v2, :cond_0

    .line 456
    invoke-direct {p0, v1, v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    .line 457
    iget-object v3, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget v6, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnLeftTotalWidth:I

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 458
    iget p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnRightTotalWidth:I

    if-eqz p1, :cond_1

    .line 459
    invoke-direct {p0, v0, v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->setBackGroundVisible(ZZ)V

    .line 460
    iget-object v2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mScroller:Landroid/widget/Scroller;

    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnRightTotalWidth:I

    neg-int v5, p1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_1
    return-void
.end method

.method protected setOnItemSlideListenerProxy(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mOnItemSlideListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;

    return-void
.end method

.method protected setParams(IIZ)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->requestLayout()V

    .line 135
    iput p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnLeftTotalWidth:I

    .line 136
    iput p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mBtnRightTotalWidth:I

    .line 137
    iput-boolean p3, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mWannaOver:Z

    return-void
.end method

.method protected setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemLeftBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-static {v0, p1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout;->mItemRightBackGroundLayout:Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    invoke-static {v0, p1}, Lcom/yydcdut/sdlv/Compat;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
