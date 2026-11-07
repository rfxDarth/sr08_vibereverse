.class public Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;
.super Lcom/jaga/ibraceletplus/jyring/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;III)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;IIIII)V
    .locals 4

    .line 113
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mSortEnabled:Z

    .line 46
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mHitPos:I

    .line 58
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHitPos:I

    .line 60
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, 0x2

    .line 62
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTempLoc:[I

    .line 70
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragging:Z

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 72
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingSpeed:F

    .line 444
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController$1;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 114
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    .line 115
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 116
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 117
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTouchSlop:I

    .line 119
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragHandleId:I

    .line 120
    iput p5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mClickRemoveId:I

    .line 121
    iput p6, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHandleId:I

    .line 122
    invoke-virtual {p0, p4}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->setRemoveMode(I)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->setDragInitMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;)Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingSpeed:F

    return p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mPositionX:I

    return p0
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 314
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 318
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public getDragInitMode()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 361
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 362
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 366
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragInitMode:I

    if-nez v1, :cond_1

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->startDrag(III)Z

    :cond_1
    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    const/4 v1, 0x1

    .line 371
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mCanDrag:Z

    .line 372
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mPositionX:I

    .line 373
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHitPos:I

    return v1
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 277
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p1, :cond_0

    .line 278
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mPositionX:I

    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 415
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mHitPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragInitMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 416
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 417
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mHitPos:I

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mCurrX:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mCurrY:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemY:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->startDrag(III)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 385
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemX:I

    sub-int v0, p4, v0

    .line 386
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemY:I

    sub-int v1, p2, v1

    .line 388
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mCanDrag:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragging:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mHitPos:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHitPos:I

    if-eq v5, v4, :cond_4

    :cond_0
    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    .line 390
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragInitMode:I

    if-ne v2, v5, :cond_1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mSortEnabled:Z

    if-eqz p1, :cond_1

    .line 391
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 393
    :cond_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragInitMode:I

    if-eqz p1, :cond_4

    sub-int/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_4

    .line 395
    iput-boolean v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    .line 396
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 398
    :cond_2
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHitPos:I

    if-eq v2, v4, :cond_4

    sub-int/2addr p4, p3

    .line 399
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTouchSlop:I

    if-le p3, p4, :cond_3

    iget-boolean p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p3, :cond_3

    .line 400
    iput-boolean v5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    .line 401
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    :cond_3
    sub-int/2addr p2, p1

    .line 402
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_4

    .line 403
    iput-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mCanDrag:Z

    :cond_4
    :goto_0
    return v3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 430
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveMode:I

    if-nez p1, :cond_0

    .line 431
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->removeItem(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 239
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->isDragEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->listViewIntercepted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragging:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveMode:I

    if-ne p1, v1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto :goto_1

    .line 255
    :cond_2
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p1, :cond_4

    .line 256
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mPositionX:I

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    neg-int p1, p1

    .line 257
    :goto_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_4

    .line 259
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 263
    :cond_4
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    .line 264
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragging:Z

    goto :goto_1

    .line 251
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mCurrX:I

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mCurrY:I

    :cond_6
    :goto_1
    return v0
.end method

.method public setClickRemoveId(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mClickRemoveId:I

    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragHandleId:I

    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragInitMode:I

    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mFlingHandleId:I

    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveMode:I

    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mSortEnabled:Z

    return-void
.end method

.method public startDrag(III)Z
    .locals 3

    .line 224
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x3

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->startDrag(IIII)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDragging:Z

    return p1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2

    .line 300
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 7

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 325
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 328
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    .line 329
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 336
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mDslv:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 342
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 344
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTempLoc:[I

    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v2, v5, :cond_1

    const/4 v6, 0x1

    aget v3, v3, v6

    if-le p1, v3, :cond_1

    .line 345
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v5, v3

    if-ge v2, v5, :cond_1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mTempLoc:[I

    aget v2, v2, v6

    .line 346
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    if-ge p1, v2, :cond_1

    .line 348
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemX:I

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortController;->mItemY:I

    return v0

    :cond_1
    return v4
.end method
