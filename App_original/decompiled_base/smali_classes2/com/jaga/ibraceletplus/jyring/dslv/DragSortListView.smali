.class public Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveAnimator;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropAnimator;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$LiftAnimator;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortListener;,
        Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$SmoothAnimator;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 442
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 76
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    const/4 v2, 0x0

    .line 86
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 97
    iput v3, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatAlpha:F

    .line 98
    iput v3, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 123
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAnimate:Z

    const/4 v4, 0x1

    .line 179
    iput-boolean v4, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    .line 190
    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    .line 197
    iput v4, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 213
    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 219
    new-array v5, v4, [Landroid/view/View;

    iput-object v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    const v5, 0x3eaaaaab

    .line 231
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 238
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v7, 0x3f000000    # 0.5f

    .line 262
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 270
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$1;

    invoke-direct {v5, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V

    iput-object v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mScrollProfile:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;

    .line 334
    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragFlags:I

    .line 340
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 345
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v5, 0x0

    .line 350
    iput-object v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

    .line 370
    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelMethod:I

    const/high16 v5, 0x3e800000    # 0.25f

    .line 377
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v5, 0x0

    .line 386
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideFrac:F

    .line 399
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTrackDragSort:Z

    .line 409
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 416
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 430
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;

    const/4 v8, 0x3

    invoke-direct {v6, v1, v8}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;I)V

    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mChildHeightCache:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;

    .line 439
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1694
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2176
    iput-boolean v2, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewInvalidated:Z

    const/16 v6, 0x96

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/jaga/ibraceletplus/jyring/R$styleable;->DragSortListView:[I

    invoke-virtual {v9, v0, v10, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 452
    invoke-virtual {v9, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mItemHeightCollapsed:I

    const/16 v0, 0x10

    .line 455
    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragSortTracker:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;

    :cond_0
    const/16 v0, 0x8

    .line 463
    iget v10, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v9, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatAlpha:F

    .line 464
    iput v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCurrFloatAlpha:F

    const/4 v0, 0x2

    .line 466
    iget-boolean v10, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v9, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    const/16 v0, 0xe

    const/high16 v10, 0x3f400000    # 0.75f

    .line 469
    invoke-virtual {v9, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sub-float v0, v3, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 468
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideRegionFrac:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 473
    :goto_0
    iput-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAnimate:Z

    const/4 v0, 0x4

    .line 475
    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 479
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragScrollStart(F)V

    const/16 v0, 0xa

    .line 481
    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mMaxScrollSpeed:F

    const/16 v0, 0xb

    .line 485
    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v0, 0x6

    .line 489
    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/16 v0, 0x11

    .line 493
    invoke-virtual {v9, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    .line 498
    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    const/16 v0, 0xd

    .line 501
    invoke-virtual {v9, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/16 v3, 0xf

    .line 504
    invoke-virtual {v9, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    const/4 v3, 0x5

    .line 507
    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 510
    invoke-virtual {v9, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v5, 0x7

    .line 513
    invoke-virtual {v9, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 516
    invoke-virtual {v9, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/16 v2, 0x9

    const/high16 v8, -0x1000000

    .line 519
    invoke-virtual {v9, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    move v2, v4

    move v4, v0

    .line 523
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;

    invoke-direct/range {v0 .. v6}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;IIIII)V

    .line 526
    invoke-virtual {v0, v12}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 527
    invoke-virtual {v0, v13}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->setSortEnabled(Z)V

    .line 528
    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->setBackgroundColor(I)V

    .line 530
    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

    .line 531
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v6, v10

    goto :goto_1

    :cond_3
    const/16 v11, 0x96

    .line 537
    :goto_1
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    if-lez v6, :cond_4

    .line 541
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveAnimator;

    invoke-direct {v0, v1, v7, v6}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;FI)V

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveAnimator;

    :cond_4
    if-lez v11, :cond_5

    .line 545
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropAnimator;

    invoke-direct {v0, v1, v7, v11}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropAnimator;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;FI)V

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDropAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropAnimator;

    :cond_5
    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 548
    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 552
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mMaxScrollSpeed:F

    return p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mItemHeightCollapsed:I

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    return p0
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    return p0
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveVelocityX:F

    return p0
.end method

.method static synthetic access$1602(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;F)F
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1616(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;F)F
    .locals 1

    .line 59
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveVelocityX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1700(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    return p0
.end method

.method static synthetic access$2100(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUpScrollStartYF:F

    return p0
.end method

.method static synthetic access$2200(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragUpScrollHeight:F

    return p0
.end method

.method static synthetic access$2300(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mScrollProfile:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDownScrollStartYF:F

    return p0
.end method

.method static synthetic access$2500(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDownScrollHeight:F

    return p0
.end method

.method static synthetic access$2602(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getItemHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDeltaY:I

    return p0
.end method

.method static synthetic access$3000(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastY:I

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$3100(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;II)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mY:I

    return p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    return p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    return p0
.end method

.method private adjustAllItems()V
    .locals 6

    .line 1857
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1858
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v1

    .line 1860
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    .line 1861
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 1864
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int v5, v0, v2

    .line 1866
    invoke-direct {p0, v5, v4, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2

    .line 1872
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1875
    invoke-direct {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 2

    .line 1886
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1888
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v1, :cond_0

    const/4 p3, -0x2

    goto :goto_0

    .line 1891
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result p3

    .line 1894
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v1, :cond_1

    .line 1895
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1896
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    :cond_1
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, p3, :cond_2

    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_4

    .line 1901
    :cond_2
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, p3, :cond_3

    .line 1902
    move-object p3, p2

    check-cast p3, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortItemView;

    const/16 v0, 0x50

    invoke-virtual {p3, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1

    :cond_3
    if-le p1, p3, :cond_4

    .line 1904
    move-object p3, p2

    check-cast p3, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortItemView;

    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortItemView;->setGravity(I)V

    .line 1910
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 1913
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eq p1, p3, :cond_6

    .line 1918
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private adjustOnReorder()V
    .locals 3

    .line 1549
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1551
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-ge v1, v0, :cond_1

    const/4 v1, 0x0

    .line 1554
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1557
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1560
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 7

    .line 2056
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 2058
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 2059
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 2063
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_0

    sub-int v3, p2, v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    move v3, p2

    move v0, v1

    .line 2068
    :goto_0
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2069
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v2, v5, :cond_1

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v2, v6, :cond_1

    .line 2070
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v4, v2

    :cond_1
    const/4 v2, 0x0

    if-gt p1, p3, :cond_2

    if-le p1, v5, :cond_7

    sub-int/2addr v4, v0

    return v4

    :cond_2
    if-ne p1, p4, :cond_5

    if-gt p1, v5, :cond_3

    sub-int/2addr v3, v4

    return v3

    .line 2080
    :cond_3
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_4

    sub-int/2addr p2, v1

    return p2

    :cond_4
    return v3

    :cond_5
    if-gt p1, v5, :cond_6

    sub-int/2addr v2, v4

    return v2

    .line 2088
    :cond_6
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p2, :cond_7

    sub-int/2addr v2, v0

    :cond_7
    return v2
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 8

    .line 2701
    invoke-static {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2705
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    add-int/2addr v0, v4

    const/4 v5, 0x0

    .line 2708
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-ge v6, p2, :cond_3

    .line 2709
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v6, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2714
    :cond_2
    aput v1, p3, v5

    .line 2715
    aput v3, p4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v6, 0x1

    move v3, v1

    move v1, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, p2, :cond_4

    move v3, p1

    .line 2729
    :cond_4
    aput v1, p3, v5

    .line 2730
    aput v3, p4, v5

    add-int/lit8 p0, v5, 0x1

    if-le p0, v4, :cond_5

    .line 2734
    aget p2, p3, v2

    if-ne p2, p1, :cond_5

    aget p2, p4, v5

    if-ne p2, p1, :cond_5

    .line 2739
    aget p0, p3, v5

    aput p0, p3, v2

    return v5

    :cond_5
    return p0
.end method

.method private calcItemHeight(II)I
    .locals 6

    .line 2009
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getDividerHeight()I

    .line 2011
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2012
    :goto_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v1, v2

    .line 2013
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 2017
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 2018
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, p1, :cond_2

    if-eqz v0, :cond_1

    add-int/2addr v4, v2

    return v4

    :cond_1
    return v1

    .line 2024
    :cond_2
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, p1, :cond_3

    sub-int/2addr v1, v4

    return v1

    :cond_3
    return v2

    .line 2030
    :cond_4
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    add-int/2addr p2, v4

    return p2

    :cond_5
    add-int/2addr p2, v3

    return p2

    .line 2036
    :cond_6
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_7

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    :cond_7
    return p2
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 0

    .line 2004
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private clearPositions()V
    .locals 1

    const/4 v0, -0x1

    .line 1488
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    .line 1489
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1490
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    .line 1491
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 5

    .line 1792
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1793
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v0, p2, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    const/4 p1, 0x1

    .line 1795
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1797
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1798
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1801
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v1

    .line 1803
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastY:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v4, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    .line 1809
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1813
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    return-void

    :cond_1
    if-ge p2, v2, :cond_3

    .line 1814
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    .line 1820
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1824
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    return-void

    .line 1826
    :cond_3
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt p2, v1, :cond_4

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, p2, :cond_4

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    .line 1827
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1831
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_4
    return-void
.end method

.method private destroyFloatView()V
    .locals 2

    .line 2408
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2409
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2410
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2411
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 2413
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2414
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    const/4 v0, 0x0

    .line 1664
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelMethod:I

    .line 1665
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1666
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1667
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    .line 1669
    :cond_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatAlpha:F

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1670
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1671
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mChildHeightCache:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2317
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2319
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->updateFloatView()V

    .line 2321
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 2322
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    .line 2324
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2327
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustAllItems()V

    .line 2328
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 2331
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2332
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->layoutChildren()V

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 2336
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->invalidate()V

    :cond_2
    const/4 p1, 0x0

    .line 2339
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .line 2306
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2307
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2313
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .line 1519
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doRemoveItem(I)V

    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1528
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    .line 1531
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1532
    invoke-interface {v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1535
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->destroyFloatView()V

    .line 1537
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustOnReorder()V

    .line 1538
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearPositions()V

    .line 1541
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 1542
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1544
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 752
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 753
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getDividerHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    .line 757
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingLeft()I

    move-result v3

    .line 761
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 765
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 767
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_0

    .line 768
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    sub-int/2addr p1, v5

    sub-int v1, p1, v1

    move v7, v1

    move v1, p1

    move p1, v7

    .line 777
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 778
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 779
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 780
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 781
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private dropFloatView()V
    .locals 4

    const/4 v0, 0x2

    .line 1497
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    .line 1499
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDropListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1501
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDropListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1504
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->destroyFloatView()V

    .line 1506
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustOnReorder()V

    .line 1507
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearPositions()V

    .line 1508
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustAllItems()V

    .line 1511
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 1512
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1514
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    return-void
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 2

    .line 2759
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2760
    invoke-static {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 2761
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_2

    .line 2763
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    if-lt p0, p2, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private getChildHeight(I)I
    .locals 4

    .line 1923
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1927
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1932
    invoke-direct {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p1

    return p1

    .line 1936
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mChildHeightCache:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    .line 1942
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1943
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1946
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1947
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1948
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 1952
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v3, v3, v1

    if-nez v3, :cond_4

    .line 1953
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1954
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_0

    .line 1956
    :cond_4
    invoke-interface {v0, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1960
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 1964
    invoke-direct {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1967
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mChildHeightCache:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$HeightCache;->add(II)V

    return v0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .line 1974
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1979
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1982
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1985
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1988
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_3

    .line 1989
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    .line 1993
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    return p1

    .line 1996
    :cond_5
    :goto_1
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1997
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private getItemHeight(I)I
    .locals 1

    .line 834
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 842
    :cond_0
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private getShuffleEdge(II)I
    .locals 7

    .line 916
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 917
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_7

    .line 923
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 931
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 932
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 933
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 938
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_3

    if-ne p1, v4, :cond_2

    .line 941
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v4, :cond_2

    if-ne p1, v5, :cond_1

    add-int/2addr p2, v3

    .line 943
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    goto :goto_0

    :cond_2
    if-le p1, v4, :cond_5

    if-gt p1, v5, :cond_5

    :goto_0
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-le p1, v5, :cond_4

    .line 955
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v6, :cond_4

    add-int/2addr p2, v1

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_5

    .line 957
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v1, v4, :cond_5

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    :cond_5
    :goto_1
    if-gt p1, v5, :cond_6

    .line 965
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildHeight(I)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    return p2

    :cond_6
    sub-int/2addr v2, v0

    .line 967
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_7
    :goto_2
    return p2
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4

    .line 2770
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sub-int v2, v0, v1

    if-lez v2, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 2773
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    const/4 v0, 0x1

    .line 2179
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewInvalidated:Z

    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .line 2114
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2115
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2117
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 4

    .line 2097
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2099
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2100
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2102
    :cond_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    .line 2103
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2102
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2105
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 2106
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2108
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2110
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private printPosData()V
    .locals 2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSrcPos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFirstExpPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSecondExpPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobeta"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static rotate(IIII)I
    .locals 1

    sub-int v0, p3, p2

    add-int/2addr p0, p1

    if-ge p0, p2, :cond_0

    add-int/2addr p0, v0

    return p0

    :cond_0
    if-lt p0, p3, :cond_1

    sub-int/2addr p0, v0

    :cond_1
    return p0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 1677
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastX:I

    .line 1678
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastY:I

    .line 1680
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mX:I

    .line 1681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mY:I

    if-nez v0, :cond_1

    .line 1683
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mX:I

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastX:I

    .line 1684
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastY:I

    .line 1686
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mOffsetX:I

    .line 1687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mOffsetY:I

    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .line 2348
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mX:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2350
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2353
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 2354
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 2357
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingLeft()I

    move-result v2

    .line 2358
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    if-le v0, v2, :cond_1

    .line 2359
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-ge v0, v2, :cond_2

    .line 2361
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 2365
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 2366
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    .line 2367
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2368
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2372
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    if-ge v3, v0, :cond_3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 2374
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2376
    :cond_3
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    .line 2377
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-gt v3, v0, :cond_4

    sub-int/2addr v0, v3

    .line 2378
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2383
    :cond_4
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    .line 2384
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_5

    .line 2385
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2387
    :cond_5
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 2388
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v2, :cond_6

    sub-int/2addr v2, v3

    .line 2389
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_6
    if-ge v1, v5, :cond_7

    .line 2398
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 2399
    :cond_7
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_8

    .line 2400
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2404
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    return-void
.end method

.method private updatePositions()Z
    .locals 13

    .line 975
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 976
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    sub-int v2, v1, v0

    .line 977
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int v0, v1, v0

    .line 981
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 983
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 985
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 987
    invoke-direct {p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v3

    .line 990
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 996
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v5, v3, :cond_4

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 1001
    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    if-nez v1, :cond_1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    :goto_1
    move v12, v3

    move v3, v0

    move v0, v12

    goto :goto_3

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 1009
    invoke-direct {p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 1012
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v5, v2, :cond_2

    move v0, v3

    move v3, v2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_3

    .line 1021
    :cond_4
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v5

    :goto_2
    if-ge v1, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_5

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1029
    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getItemHeight(I)I

    move-result v6

    .line 1030
    invoke-direct {p0, v2, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v7

    .line 1034
    iget v8, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v8, v7, :cond_6

    move v0, v3

    move v3, v7

    goto :goto_3

    :cond_6
    move v1, v2

    move v2, v6

    move v3, v7

    goto :goto_2

    .line 1043
    :goto_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    .line 1044
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    .line 1048
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1049
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    .line 1050
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideFrac:F

    .line 1052
    iget-boolean v8, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAnimate:Z

    if-eqz v8, :cond_a

    sub-int v8, v3, v0

    .line 1053
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 1056
    iget v9, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v9, v3, :cond_7

    move v12, v3

    move v3, v0

    move v0, v12

    .line 1065
    :cond_7
    iget v10, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideRegionFrac:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    int-to-float v8, v8

    mul-float v10, v10, v8

    float-to-int v8, v10

    int-to-float v10, v8

    add-int/2addr v3, v8

    sub-int v8, v0, v8

    if-ge v9, v3, :cond_8

    add-int/lit8 v0, v1, -0x1

    .line 1072
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1073
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v3, v9

    int-to-float v0, v3

    mul-float v0, v0, v11

    div-float/2addr v0, v10

    .line 1074
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_4

    :cond_8
    if-ge v9, v8, :cond_9

    .line 1078
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1079
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_4

    .line 1081
    :cond_9
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    add-int/lit8 v3, v1, 0x1

    .line 1082
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v0, v9

    int-to-float v0, v0

    div-float/2addr v0, v10

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    mul-float v0, v0, v11

    .line 1083
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_4

    .line 1090
    :cond_a
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1091
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    .line 1095
    :goto_4
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_b

    .line 1097
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1098
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    move v1, v2

    goto :goto_5

    .line 1099
    :cond_b
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-lt v0, v8, :cond_c

    .line 1100
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 1101
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1102
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    .line 1105
    :cond_c
    :goto_5
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v0, v5, :cond_e

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v6, :cond_e

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v0, 0x1

    .line 1110
    :goto_7
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    if-eq v1, v4, :cond_10

    .line 1111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_f

    sub-int/2addr v4, v2

    sub-int v2, v1, v2

    .line 1112
    invoke-interface {v0, v4, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1115
    :cond_f
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    return v3

    :cond_10
    return v0
.end method

.method private updateScrollStarts()V
    .locals 7

    .line 1836
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1837
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    .line 1840
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUpScrollStartYF:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1841
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v5, v6

    mul-float v5, v5, v2

    add-float/2addr v5, v3

    iput v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v2, v4

    .line 1843
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUpScrollStartY:I

    float-to-int v2, v5

    .line 1844
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDownScrollStartY:I

    sub-float/2addr v4, v3

    .line 1846
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragUpScrollHeight:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v5

    .line 1847
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDownScrollHeight:F

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .line 1473
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1474
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1475
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->destroyFloatView()V

    .line 1476
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearPositions()V

    .line 1477
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->adjustAllItems()V

    .line 1479
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1480
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1482
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 788
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 790
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 792
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_0

    .line 793
    invoke-direct {p0, v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 795
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_1

    .line 796
    invoke-direct {p0, v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 802
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 803
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 805
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 807
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getWidth()I

    move-result v3

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    if-ge v2, v3, :cond_3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v2, v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 818
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float v4, v4, v3

    mul-float v4, v4, v2

    float-to-int v10, v4

    .line 820
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 822
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 823
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v8, v0

    int-to-float v9, v1

    const/16 v11, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    .line 826
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 827
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 828
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 829
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .line 581
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAdapterWrapper:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 637
    :cond_0
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 2494
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .line 2136
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2139
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2143
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->measureFloatView()V

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2146
    iput-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .line 1691
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 9

    .line 2631
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-ge p2, p1, :cond_0

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, p1

    move v1, p2

    :goto_0
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 2640
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2641
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2642
    invoke-static {v0, v2, v1, v4, v5}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v0

    const/4 v6, 0x0

    if-ne v0, v3, :cond_1

    .line 2643
    aget v7, v4, v6

    aget v8, v5, v6

    if-ne v7, v8, :cond_1

    goto :goto_3

    :cond_1
    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    :goto_1
    if-eq p1, v0, :cond_3

    .line 2651
    aget p2, v4, p1

    const/4 v7, -0x1

    invoke-static {p2, v7, v2, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p0, p2, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2652
    aget p2, v5, p1

    invoke-static {p2, v7, v2, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p0, p2, v6}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eq p1, v0, :cond_3

    .line 2657
    aget p2, v4, p1

    invoke-virtual {p0, p2, v6}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2658
    aget p2, v5, p1

    invoke-virtual {p0, p2, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public moveItem(II)V
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDropListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDropListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;->drop(II)V

    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2156
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_1

    .line 2157
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->cancelDrag()V

    .line 2159
    :cond_1
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2169
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2163
    :cond_3
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 2164
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2166
    :cond_4
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1124
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1126
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_0

    .line 1127
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragSortTracker:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;->appendState()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1698
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 1699
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1702
    :cond_0
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 1703
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 1708
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    .line 1710
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v0

    .line 1713
    :cond_1
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1719
    :cond_2
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    .line 1723
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1724
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mListViewIntercepted:Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eq v1, v0, :cond_6

    if-eq v1, v3, :cond_6

    if-eqz p1, :cond_5

    .line 1735
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 1737
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1731
    :cond_6
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_1
    if-eq v1, v0, :cond_8

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    return p1

    .line 1743
    :cond_8
    :goto_2
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 2123
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2125
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 2126
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2127
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->measureFloatView()V

    :cond_0
    const/4 p2, 0x1

    .line 2129
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2131
    :cond_1
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1852
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1853
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->updateScrollStarts()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1613
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1614
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v1

    .line 1618
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_1

    .line 1619
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1624
    :cond_1
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1625
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLastCallWasIntercept:Z

    if-nez v0, :cond_2

    .line 1628
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1632
    :cond_2
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 1633
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_3
    if-nez v0, :cond_4

    .line 1641
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 1646
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    if-eqz v1, :cond_5

    .line 1655
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelMethod:I

    :cond_5
    return v1

    .line 1651
    :cond_6
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doActionUpOrCancel()V

    return v1
.end method

.method public removeCheckState(I)V
    .locals 10

    .line 2677
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2679
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2681
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2682
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2684
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    add-int/2addr v3, v4

    .line 2685
    invoke-static {v0, p1, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-eq v6, v0, :cond_3

    .line 2687
    aget v7, v1, v6

    const/4 v8, -0x1

    if-eq v7, p1, :cond_2

    aget v9, v2, v6

    if-ge v9, v7, :cond_1

    if-gt v9, p1, :cond_2

    .line 2691
    :cond_1
    invoke-static {v7, v8, p1, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v4}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2693
    :cond_2
    aget v7, v2, v6

    invoke-static {v7, v8, p1, v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v5}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1402
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1403
    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->removeItem(IF)V

    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .line 1414
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1418
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    .line 1419
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 1420
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    .line 1421
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    .line 1422
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1424
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    .line 1428
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    .line 1429
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1431
    iget-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p2, :cond_5

    .line 1432
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelMethod:I

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    goto :goto_1

    .line 1437
    :cond_3
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1434
    :cond_4
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1442
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveAnimator;

    if-eqz p2, :cond_6

    .line 1443
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveAnimator;->start()V

    return-void

    .line 1445
    :cond_6
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->doRemoveItem(I)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2048
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2049
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 59
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 607
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAdapterWrapper:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    .line 608
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 610
    instance-of v0, p1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 611
    move-object v0, p1

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDropListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;)V

    .line 613
    :cond_0
    instance-of v0, p1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    .line 614
    move-object v0, p1

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;)V

    .line 616
    :cond_1
    instance-of v0, p1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_3

    .line 617
    check-cast p1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setRemoveListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 620
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAdapterWrapper:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    .line 623
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mAdapterWrapper:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 2490
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;)V
    .locals 0

    .line 2476
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2574
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mScrollProfile:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1758
    invoke-virtual {p0, p1, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 1773
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1775
    :cond_0
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 1779
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1

    .line 1781
    :cond_1
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1784
    :goto_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1785
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->updateScrollStarts()V

    :cond_2
    return-void
.end method

.method public setDragSortListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortListener;)V
    .locals 0

    .line 2560
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDropListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;)V

    .line 2561
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragListener;)V

    .line 2562
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setRemoveListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;)V
    .locals 0

    .line 2510
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDropListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .line 577
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCurrFloatAlpha:F

    return-void
.end method

.method public setFloatViewManager(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .line 2472
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .line 591
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mMaxScrollSpeed:F

    return-void
.end method

.method public setRemoveListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .line 2524
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mRemoveListener:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 8

    .line 2206
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatViewManager:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2210
    :cond_0
    invoke-interface {v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 2215
    invoke-virtual/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 2

    .line 2243
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2248
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2249
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2252
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 2253
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFirstExpPos:I

    .line 2254
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSecondExpPos:I

    .line 2255
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    .line 2256
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatPos:I

    const/4 p1, 0x4

    .line 2259
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragState:I

    .line 2261
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragFlags:I

    .line 2263
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2264
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->measureFloatView()V

    .line 2266
    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDeltaX:I

    .line 2267
    iput p5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDeltaY:I

    .line 2268
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mY:I

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragStartY:I

    .line 2271
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mX:I

    sub-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 2272
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mY:I

    iget p4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Point;->y:I

    .line 2275
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2278
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2281
    :cond_2
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_3

    .line 2282
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragSortTracker:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2287
    :cond_3
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelMethod:I

    if-eq p1, v1, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_0

    .line 2292
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2289
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2296
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->requestLayout()V

    .line 2298
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mLiftAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$LiftAnimator;

    if-eqz p1, :cond_6

    .line 2299
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$LiftAnimator;->start()V

    :cond_6
    return v1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public stopDrag(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1576
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1577
    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .line 1587
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1588
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragScroller:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    if-eqz p1, :cond_0

    .line 1591
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->removeItem(IF)V

    goto :goto_0

    .line 1593
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDropAnimator:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropAnimator;

    if-eqz p1, :cond_1

    .line 1594
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1596
    :cond_1
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->dropFloatView()V

    .line 1600
    :goto_0
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_2

    .line 1601
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mDragSortTracker:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1582
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1583
    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method
