.class Lcom/yydcdut/sdlv/SlideListView;
.super Lcom/yydcdut/sdlv/DragListView;
.source "SlideListView.java"

# interfaces
.implements Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;
.implements Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;
.implements Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;
.implements Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;


# static fields
.field private static final RETURN_SCROLL_BACK_CLICK_MENU_BUTTON:I = 0x3

.field private static final RETURN_SCROLL_BACK_NOTHING:I = 0x0

.field private static final RETURN_SCROLL_BACK_OTHER:I = 0x2

.field private static final RETURN_SCROLL_BACK_OWN:I = 0x1

.field private static final STATE_DOWN:I = 0x0

.field private static final STATE_LONG_CLICK_FINISH:I = 0x3

.field private static final STATE_MORE_FINGERS:I = 0x4

.field private static final STATE_NOTHING:I = -0x1

.field private static final STATE_SCROLL:I = 0x2


# instance fields
.field private isAtBottom:Z

.field private isDeleteAnimationRunning:Z

.field private isItemViewHandlingMotionEvent:Z

.field private isScrolling:Z

.field private isWannaTriggerClick:Z

.field private mItemLeftDistance:I

.field private mMenuSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yydcdut/sdlv/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemDeleteListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;

.field private mOnItemScrollBackListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;

.field private mOnListItemClickListener:Lcom/yydcdut/sdlv/Callback$OnItemClickListenerWrapper;

.field private mOnListItemLongClickListener:Lcom/yydcdut/sdlv/Callback$OnItemLongClickListenerWrapper;

.field private mOnListScrollListener:Lcom/yydcdut/sdlv/Callback$OnScrollListenerWrapper;

.field private mOnMenuItemClickListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;

.field private mOnSlideListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;

.field private mShortestDistance:I

.field private mState:I

.field private mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/yydcdut/sdlv/SlideListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/yydcdut/sdlv/SlideListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/yydcdut/sdlv/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/yydcdut/sdlv/SlideListView;->isWannaTriggerClick:Z

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/yydcdut/sdlv/SlideListView;->isScrolling:Z

    .line 55
    iput-boolean p2, p0, Lcom/yydcdut/sdlv/SlideListView;->isDeleteAnimationRunning:Z

    const/16 p3, 0x19

    .line 64
    iput p3, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    .line 66
    iput p2, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    .line 68
    iput-boolean p2, p0, Lcom/yydcdut/sdlv/SlideListView;->isItemViewHandlingMotionEvent:Z

    .line 70
    iput-boolean p2, p0, Lcom/yydcdut/sdlv/SlideListView;->isAtBottom:Z

    .line 91
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    .line 92
    invoke-super {p0, p0}, Lcom/yydcdut/sdlv/DragListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private fingerLeftAndRightMove(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getItemMainLayoutByPosition(II)Lcom/yydcdut/sdlv/ItemMainLayout;
    .locals 0

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/yydcdut/sdlv/SlideListView;->pointToPosition(II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 357
    instance-of p2, p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz p2, :cond_0

    .line 358
    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isFingerMoving2Left(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isFingerMoving2Right(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mShortestDistance:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    .line 269
    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    .line 271
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isItemViewHandlingMotionEvent:Z

    return-void
.end method

.method private scrollBack(IF)I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->getSlideItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1, p2}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition(F)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return p2

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->getSlideItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 294
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition()V

    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private scrollBackByDrag(I)Z
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->getSlideItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->getSlideItemPosition()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    .line 311
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition()V

    :cond_1
    return v1
.end method


# virtual methods
.method public closeSlidedItem()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition()V

    return-void
.end method

.method public deleteSlideItem()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->deleteSlideItemPosition()V

    return-void
.end method

.method protected getWrapperAdapter()Lcom/yydcdut/sdlv/WrapperAdapter;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 525
    invoke-super {p0}, Lcom/yydcdut/sdlv/DragListView;->onAttachedToWindow()V

    .line 526
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->addDataSetObserver()V

    :cond_0
    return-void
.end method

.method public onDeleteBegin()V
    .locals 1

    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isDeleteAnimationRunning:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/yydcdut/sdlv/DragListView;->onDetachedFromWindow()V

    .line 535
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->removeDataSetObserver()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->fingerLeftAndRightMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/yydcdut/sdlv/SlideListView;->getItemMainLayoutByPosition(II)Lcom/yydcdut/sdlv/ItemMainLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    goto :goto_0

    .line 132
    :cond_3
    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    .line 141
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onItemDelete(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isDeleteAnimationRunning:Z

    .line 501
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnItemDeleteListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v1, :cond_0

    .line 502
    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 503
    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;->onItemDeleteAnimationFinished(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result p1

    sub-int p1, p3, p1

    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemLongClickListener:Lcom/yydcdut/sdlv/Callback$OnItemLongClickListenerWrapper;

    const/4 p4, 0x3

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz p2, :cond_0

    .line 100
    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 101
    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-nez p2, :cond_0

    .line 102
    iput p4, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    .line 104
    iget-object p2, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p2}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition()V

    .line 106
    iget-object p2, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemLongClickListener:Lcom/yydcdut/sdlv/Callback$OnItemLongClickListenerWrapper;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/yydcdut/sdlv/Callback$OnItemLongClickListenerWrapper;->onListItemLongClick(Landroid/view/View;I)V

    .line 109
    :cond_0
    iget p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    if-eq p1, p4, :cond_1

    if-nez p1, :cond_2

    .line 110
    :cond_1
    invoke-virtual {p0, p3}, Lcom/yydcdut/sdlv/SlideListView;->startDrag(I)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemClick(Landroid/view/View;III)I
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnMenuItemClickListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/View;III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScrollBack(Landroid/view/View;I)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnItemScrollBackListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;

    if-eqz v0, :cond_0

    .line 651
    invoke-interface {v0, p1, p2}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;->onScrollBackAnimationFinished(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onScrollProxy(Landroid/widget/AbsListView;III)V
    .locals 1

    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    :goto_0
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isAtBottom:Z

    .line 488
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListScrollListener:Lcom/yydcdut/sdlv/Callback$OnScrollListenerWrapper;

    if-eqz v0, :cond_1

    .line 489
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yydcdut/sdlv/Callback$OnScrollListenerWrapper;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChangedProxy(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 474
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isWannaTriggerClick:Z

    .line 475
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/SlideListView;->isScrolling:Z

    goto :goto_0

    .line 477
    :cond_0
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/SlideListView;->isWannaTriggerClick:Z

    .line 478
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isScrolling:Z

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListScrollListener:Lcom/yydcdut/sdlv/Callback$OnScrollListenerWrapper;

    if-eqz v0, :cond_1

    .line 481
    invoke-interface {v0, p1, p2}, Lcom/yydcdut/sdlv/Callback$OnScrollListenerWrapper;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public onSlideClose(Landroid/view/View;II)V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnSlideListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v1, :cond_0

    .line 561
    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 562
    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;->onSlideClose(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onSlideOpen(Landroid/view/View;II)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnSlideListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v1, :cond_0

    .line 553
    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 554
    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;->onSlideOpen(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 146
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isDeleteAnimationRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isScrolling:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/yydcdut/sdlv/SlideListView;->reset()V

    .line 152
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isAtBottom:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/yydcdut/sdlv/SlideListView;->isWannaTriggerClick:Z

    :goto_0
    iput-boolean v3, p0, Lcom/yydcdut/sdlv/SlideListView;->isWannaTriggerClick:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    iget-boolean v1, p0, Lcom/yydcdut/sdlv/SlideListView;->isScrolling:Z

    :goto_1
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/SlideListView;->isScrolling:Z

    .line 155
    :cond_3
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 160
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_13

    const/4 v4, -0x1

    if-eq v0, v3, :cond_f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    goto/16 :goto_4

    :cond_6
    const/4 p1, 0x4

    .line 176
    iput p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    return v1

    .line 256
    :cond_7
    invoke-direct {p0}, Lcom/yydcdut/sdlv/SlideListView;->reset()V

    goto/16 :goto_4

    .line 179
    :cond_8
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->fingerLeftAndRightMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isItemViewHandlingMotionEvent:Z

    if-nez v0, :cond_e

    .line 180
    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    invoke-virtual {p0, v0, v1}, Lcom/yydcdut/sdlv/SlideListView;->pointToPosition(II)I

    move-result v0

    .line 181
    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    iget v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    invoke-direct {p0, v1, v2}, Lcom/yydcdut/sdlv/SlideListView;->getItemMainLayoutByPosition(II)Lcom/yydcdut/sdlv/ItemMainLayout;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 184
    iget v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    if-lez v2, :cond_9

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v6, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    int-to-float v6, v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_a

    return v3

    :cond_9
    if-gez v2, :cond_a

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v6, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    invoke-virtual {v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_a

    return v3

    .line 195
    :cond_a
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->isFingerMoving2Right(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 196
    invoke-virtual {v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->hasMenuItemViews()Z

    move-result v2

    if-nez v2, :cond_c

    .line 197
    invoke-virtual {v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getScrollState()I

    move-result v2

    if-nez v2, :cond_c

    .line 198
    iput v4, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    return v3

    .line 201
    :cond_b
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->isFingerMoving2Left(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 202
    invoke-virtual {v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemRightBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->hasMenuItemViews()Z

    move-result v2

    if-nez v2, :cond_c

    .line 203
    invoke-virtual {v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getScrollState()I

    move-result v2

    if-nez v2, :cond_c

    .line 204
    iput v4, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    return v3

    .line 209
    :cond_c
    iget-object v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v2, v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->setSlideItemPosition(I)V

    .line 210
    iput-boolean v3, p0, Lcom/yydcdut/sdlv/SlideListView;->isItemViewHandlingMotionEvent:Z

    .line 211
    iput v5, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    .line 212
    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    int-to-float v0, v0

    iget v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    int-to-float v2, v2

    iget v4, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    invoke-virtual {v1, p1, v0, v2, v4}, Lcom/yydcdut/sdlv/ItemMainLayout;->handleMotionEvent(Landroid/view/MotionEvent;FFI)V

    return v3

    .line 215
    :cond_d
    iput v4, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    return v3

    .line 219
    :cond_e
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/SlideListView;->isItemViewHandlingMotionEvent:Z

    if-eqz v0, :cond_15

    .line 220
    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    invoke-direct {p0, v0, v1}, Lcom/yydcdut/sdlv/SlideListView;->getItemMainLayoutByPosition(II)Lcom/yydcdut/sdlv/ItemMainLayout;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 222
    iget v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    int-to-float v2, v2

    iget v4, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/yydcdut/sdlv/ItemMainLayout;->handleMotionEvent(Landroid/view/MotionEvent;FFI)V

    return v3

    .line 229
    :cond_f
    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    iget v3, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    invoke-virtual {p0, v0, v3}, Lcom/yydcdut/sdlv/SlideListView;->pointToPosition(II)I

    move-result v0

    if-eq v0, v4, :cond_12

    .line 231
    iget v3, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    if-eqz v3, :cond_11

    if-ne v3, v2, :cond_10

    goto :goto_2

    .line 244
    :cond_10
    iget v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    iget v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    invoke-direct {p0, v0, v2}, Lcom/yydcdut/sdlv/SlideListView;->getItemMainLayoutByPosition(II)Lcom/yydcdut/sdlv/ItemMainLayout;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 246
    iget v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/yydcdut/sdlv/ItemMainLayout;->handleMotionEvent(Landroid/view/MotionEvent;FFI)V

    goto :goto_3

    .line 233
    :cond_11
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/yydcdut/sdlv/SlideListView;->scrollBack(IF)I

    move-result v2

    if-nez v2, :cond_12

    .line 235
    iget-object v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemClickListener:Lcom/yydcdut/sdlv/Callback$OnItemClickListenerWrapper;

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/yydcdut/sdlv/SlideListView;->isWannaTriggerClick:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/yydcdut/sdlv/SlideListView;->isScrolling:Z

    if-nez v2, :cond_12

    .line 236
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 237
    instance-of v3, v2, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v3, :cond_12

    .line 238
    check-cast v2, Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 239
    iget-object v3, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemClickListener:Lcom/yydcdut/sdlv/Callback$OnItemClickListenerWrapper;

    invoke-virtual {v2}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lcom/yydcdut/sdlv/Callback$OnItemClickListenerWrapper;->onListItemClick(Landroid/view/View;I)V

    .line 250
    :cond_12
    :goto_3
    iput v4, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    .line 251
    iput v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    .line 252
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/SlideListView;->isItemViewHandlingMotionEvent:Z

    goto :goto_4

    .line 163
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mYDown:I

    .line 166
    iput v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mState:I

    .line 168
    iget v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mXDown:I

    invoke-direct {p0, v2, v0}, Lcom/yydcdut/sdlv/SlideListView;->getItemMainLayoutByPosition(II)Lcom/yydcdut/sdlv/ItemMainLayout;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 170
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    goto :goto_4

    .line 172
    :cond_14
    iput v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mItemLeftDistance:I

    .line 262
    :cond_15
    :goto_4
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 33
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/yydcdut/sdlv/WrapperAdapter;-><init>(Landroid/content/Context;Lcom/yydcdut/sdlv/SlideListView;Landroid/widget/ListAdapter;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    .line 459
    invoke-virtual {v0, p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->setOnAdapterSlideListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;)V

    .line 460
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1, p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->setOnAdapterMenuClickListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;)V

    .line 461
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1, p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->setOnItemDeleteListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;)V

    .line 462
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1, p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->setOnScrollListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;)V

    .line 463
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {p1, p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->setOnItemScrollBackListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;)V

    .line 464
    iget-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 456
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Set Menu first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMenu(Lcom/yydcdut/sdlv/Menu;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/Menu;->getMenuViewType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMenu(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yydcdut/sdlv/Menu;",
            ">;)V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    .line 390
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/Menu;

    .line 391
    iget-object v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/Menu;->getMenuViewType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public varargs setMenu([Lcom/yydcdut/sdlv/Menu;)V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 404
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    .line 406
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 407
    iget-object v3, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/yydcdut/sdlv/Menu;->getMenuViewType()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 586
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemClickListener:Lcom/yydcdut/sdlv/Callback$OnItemClickListenerWrapper;

    return-void

    .line 589
    :cond_0
    new-instance v0, Lcom/yydcdut/sdlv/SlideListView$1;

    invoke-direct {v0, p0, p1}, Lcom/yydcdut/sdlv/SlideListView$1;-><init>(Lcom/yydcdut/sdlv/SlideListView;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemClickListener:Lcom/yydcdut/sdlv/Callback$OnItemClickListenerWrapper;

    return-void
.end method

.method public setOnItemDeleteListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnItemDeleteListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 600
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemLongClickListener:Lcom/yydcdut/sdlv/Callback$OnItemLongClickListenerWrapper;

    return-void

    .line 603
    :cond_0
    new-instance v0, Lcom/yydcdut/sdlv/SlideListView$2;

    invoke-direct {v0, p0, p1}, Lcom/yydcdut/sdlv/SlideListView$2;-><init>(Lcom/yydcdut/sdlv/SlideListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListItemLongClickListener:Lcom/yydcdut/sdlv/Callback$OnItemLongClickListenerWrapper;

    return-void
.end method

.method public setOnItemScrollBackListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnItemScrollBackListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnMenuItemClickListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 623
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListScrollListener:Lcom/yydcdut/sdlv/Callback$OnScrollListenerWrapper;

    return-void

    .line 626
    :cond_0
    new-instance v0, Lcom/yydcdut/sdlv/SlideListView$3;

    invoke-direct {v0, p0, p1}, Lcom/yydcdut/sdlv/SlideListView$3;-><init>(Lcom/yydcdut/sdlv/SlideListView;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnListScrollListener:Lcom/yydcdut/sdlv/Callback$OnScrollListenerWrapper;

    return-void
.end method

.method public setOnSlideListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView;->mOnSlideListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;

    return-void
.end method

.method protected setOnSuperScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 645
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public slideItem(II)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    .line 439
    invoke-virtual {v1, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mMenuSparseArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v1, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/Menu;

    invoke-virtual {v0, p2}, Lcom/yydcdut/sdlv/Menu;->getMenuItems(I)Ljava/util/List;

    move-result-object v0

    .line 444
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->getSlideItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->getSlideItemPosition()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->closeSlidedItem()V

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView;->mWrapperAdapter:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/yydcdut/sdlv/WrapperAdapter;->slideItem(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public startDrag(I)Z
    .locals 3

    .line 514
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->scrollBackByDrag(I)Z

    move-result v0

    .line 516
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 517
    instance-of v2, v1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setDragPosition(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 520
    instance-of p1, v1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
