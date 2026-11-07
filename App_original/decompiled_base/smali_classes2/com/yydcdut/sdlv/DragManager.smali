.class Lcom/yydcdut/sdlv/DragManager;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Lcom/yydcdut/sdlv/Callback$OnDragDropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;
    }
.end annotation


# static fields
.field private static final DRAG_VIEW_ALPHA:F = 0.7f


# instance fields
.field private final BOUND_GAP_RATIO:F

.field private final DRAG_SCROLL_PX_UNIT:I

.field private final SCROLL_HANDLER_DELAY_MILLIS:J

.field private isDragging:Z

.field private isInvokedDraggingStarted:Z

.field private mBottomScrollBound:I

.field private mDecorView:Landroid/view/ViewGroup;

.field private mDragDelta:I

.field private mDragListView:Lcom/yydcdut/sdlv/DragListView;

.field private final mDragScroller:Ljava/lang/Runnable;

.field private mDragView:Landroid/widget/ImageView;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mFingerX:F

.field private mFingerY:F

.field private mIsDragScrollerRunning:Z

.field private mItemMainLayout:Lcom/yydcdut/sdlv/ItemMainLayout;

.field private mLastDragY:I

.field private mLeftAndTopOffset:[I

.field private mScrollHandler:Landroid/os/Handler;

.field private mTopScrollBound:I

.field private mTouchDownForDragStartY:I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yydcdut/sdlv/DragListView;Landroid/view/ViewGroup;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    .line 43
    iput-wide v0, p0, Lcom/yydcdut/sdlv/DragManager;->SCROLL_HANDLER_DELAY_MILLIS:J

    const/16 v0, 0x19

    .line 45
    iput v0, p0, Lcom/yydcdut/sdlv/DragManager;->DRAG_SCROLL_PX_UNIT:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 49
    iput v0, p0, Lcom/yydcdut/sdlv/DragManager;->BOUND_GAP_RATIO:F

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/DragManager;->mIsDragScrollerRunning:Z

    .line 182
    new-instance v1, Lcom/yydcdut/sdlv/DragManager$1;

    invoke-direct {v1, p0}, Lcom/yydcdut/sdlv/DragManager$1;-><init>(Lcom/yydcdut/sdlv/DragManager;)V

    iput-object v1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragScroller:Ljava/lang/Runnable;

    .line 79
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/yydcdut/sdlv/DragManager;->mTouchSlop:F

    .line 80
    iput-object p2, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    .line 81
    invoke-virtual {p2, p0}, Lcom/yydcdut/sdlv/DragListView;->setListDragDropListener(Lcom/yydcdut/sdlv/Callback$OnDragDropListener;)V

    .line 82
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    .line 83
    iput-object p3, p0, Lcom/yydcdut/sdlv/DragManager;->mDecorView:Landroid/view/ViewGroup;

    .line 84
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    filled-new-array {v0, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mLeftAndTopOffset:[I

    return-void
.end method

.method static synthetic access$000(Lcom/yydcdut/sdlv/DragManager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/yydcdut/sdlv/DragManager;->mLastDragY:I

    return p0
.end method

.method static synthetic access$100(Lcom/yydcdut/sdlv/DragManager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/yydcdut/sdlv/DragManager;->mTopScrollBound:I

    return p0
.end method

.method static synthetic access$200(Lcom/yydcdut/sdlv/DragManager;)Lcom/yydcdut/sdlv/DragListView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yydcdut/sdlv/DragManager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/yydcdut/sdlv/DragManager;->mBottomScrollBound:I

    return p0
.end method

.method static synthetic access$400(Lcom/yydcdut/sdlv/DragManager;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yydcdut/sdlv/DragManager;->mScrollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yydcdut/sdlv/DragManager;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yydcdut/sdlv/DragManager;->mDragViewBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yydcdut/sdlv/DragManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragViewBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yydcdut/sdlv/DragManager;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yydcdut/sdlv/DragManager;)Lcom/yydcdut/sdlv/ItemMainLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yydcdut/sdlv/DragManager;->mItemMainLayout:Lcom/yydcdut/sdlv/ItemMainLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/yydcdut/sdlv/DragManager;Lcom/yydcdut/sdlv/ItemMainLayout;)Lcom/yydcdut/sdlv/ItemMainLayout;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mItemMainLayout:Lcom/yydcdut/sdlv/ItemMainLayout;

    return-object p1
.end method

.method private calculateBound()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/DragListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 127
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    invoke-virtual {v1}, Lcom/yydcdut/sdlv/DragListView;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/yydcdut/sdlv/DragManager;->mTopScrollBound:I

    .line 128
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    invoke-virtual {v1}, Lcom/yydcdut/sdlv/DragListView;->getBottom()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/yydcdut/sdlv/DragManager;->mBottomScrollBound:I

    return-void
.end method

.method private createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .line 214
    instance-of v0, p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v0, :cond_0

    .line 215
    move-object v1, p1

    check-cast v1, Lcom/yydcdut/sdlv/ItemMainLayout;

    invoke-virtual {v1}, Lcom/yydcdut/sdlv/ItemMainLayout;->disableBackgroundDrawable()V

    :cond_0
    const/4 v1, 0x1

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 222
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 227
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 228
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-eqz v0, :cond_2

    .line 230
    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->enableBackgroundDrawable()V

    :cond_2
    return-object v3
.end method

.method private ensureScrollHandler()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager;->mScrollHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yydcdut/sdlv/DragManager;->mScrollHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private getOffset(Landroid/view/View;Landroid/view/View;[I)V
    .locals 1

    if-eq p1, p2, :cond_0

    .line 95
    invoke-direct {p0, p1, p3}, Lcom/yydcdut/sdlv/DragManager;->getOffset(Landroid/view/View;[I)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/yydcdut/sdlv/DragManager;->getOffset(Landroid/view/View;Landroid/view/View;[I)V

    :cond_0
    return-void
.end method

.method private getOffset(Landroid/view/View;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 104
    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    .line 105
    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr v1, p1

    aput v1, p2, v0

    return-void
.end method

.method private invokedDraggingStarted()V
    .locals 3

    .line 118
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/DragManager;->isInvokedDraggingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yydcdut/sdlv/DragManager;->isDragging:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    iget v1, p0, Lcom/yydcdut/sdlv/DragManager;->mFingerX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/yydcdut/sdlv/DragManager;->mFingerY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/yydcdut/sdlv/DragListView;->handleDragStarted(II)V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/DragManager;->isInvokedDraggingStarted:Z

    .line 121
    invoke-direct {p0}, Lcom/yydcdut/sdlv/DragManager;->calculateBound()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isDragging()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/DragManager;->isDragging:Z

    return v0
.end method

.method public onDragFinished(IILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const-string p3, "alpha"

    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x64

    .line 245
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    new-instance p2, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;-><init>(Lcom/yydcdut/sdlv/DragManager;Lcom/yydcdut/sdlv/DragManager$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data
.end method

.method public onDragMoving(IILandroid/view/View;Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/yydcdut/sdlv/DragManager;->mLeftAndTopOffset:[I

    const/4 p4, 0x0

    aget p3, p3, p4

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setX(F)V

    .line 238
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    iget p3, p0, Lcom/yydcdut/sdlv/DragManager;->mDragDelta:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/yydcdut/sdlv/DragManager;->mLeftAndTopOffset:[I

    const/4 p4, 0x1

    aget p3, p3, p4

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public onDragStarted(IILandroid/view/View;)Z
    .locals 2

    .line 196
    invoke-direct {p0, p3}, Lcom/yydcdut/sdlv/DragManager;->createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragViewBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 200
    :cond_0
    instance-of p1, p3, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz p1, :cond_1

    .line 201
    move-object p1, p3

    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    iput-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mItemMainLayout:Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 202
    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->disableBackgroundDrawable()V

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 207
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/DragListView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 208
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int p1, p2, p1

    iput p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragDelta:I

    .line 209
    iget-object p3, p0, Lcom/yydcdut/sdlv/DragManager;->mDragView:Landroid/widget/ImageView;

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mLeftAndTopOffset:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    add-int/2addr p2, p1

    int-to-float p1, p2

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setY(F)V

    return v0
.end method

.method protected onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yydcdut/sdlv/DragManager;->mFingerX:F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yydcdut/sdlv/DragManager;->mFingerY:F

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yydcdut/sdlv/DragManager;->mTouchDownForDragStartY:I

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/yydcdut/sdlv/DragManager;->invokedDraggingStarted()V

    .line 138
    iget-boolean p1, p0, Lcom/yydcdut/sdlv/DragManager;->isDragging:Z

    return p1
.end method

.method protected onSizeChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 89
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/yydcdut/sdlv/DragManager;->mLeftAndTopOffset:[I

    .line 90
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    iget-object v2, p0, Lcom/yydcdut/sdlv/DragManager;->mDecorView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, v0}, Lcom/yydcdut/sdlv/DragManager;->getOffset(Landroid/view/View;Landroid/view/View;[I)V

    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yydcdut/sdlv/DragManager;->mFingerX:F

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yydcdut/sdlv/DragManager;->mFingerY:F

    .line 144
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/DragManager;->isDragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/yydcdut/sdlv/DragManager;->invokedDraggingStarted()V

    .line 155
    iput v2, p0, Lcom/yydcdut/sdlv/DragManager;->mLastDragY:I

    .line 156
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    invoke-virtual {p1, v0, v2}, Lcom/yydcdut/sdlv/DragListView;->handleDragMoving(II)V

    .line 157
    iget-boolean p1, p0, Lcom/yydcdut/sdlv/DragManager;->mIsDragScrollerRunning:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/yydcdut/sdlv/DragManager;->mLastDragY:I

    iget v0, p0, Lcom/yydcdut/sdlv/DragManager;->mTouchDownForDragStartY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/yydcdut/sdlv/DragManager;->mTouchSlop:F

    mul-float v1, v1, v0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_4

    .line 158
    iput-boolean v3, p0, Lcom/yydcdut/sdlv/DragManager;->mIsDragScrollerRunning:Z

    .line 159
    invoke-direct {p0}, Lcom/yydcdut/sdlv/DragManager;->ensureScrollHandler()V

    .line 160
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mScrollHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager;->mDragScroller:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/yydcdut/sdlv/DragManager;->ensureScrollHandler()V

    .line 166
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mScrollHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/yydcdut/sdlv/DragManager;->mDragScroller:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/DragManager;->mIsDragScrollerRunning:Z

    .line 168
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager;->mDragListView:Lcom/yydcdut/sdlv/DragListView;

    invoke-virtual {p1, v0, v2}, Lcom/yydcdut/sdlv/DragListView;->handleDragFinished(II)V

    .line 169
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/DragManager;->isDragging:Z

    .line 170
    iput-boolean v1, p0, Lcom/yydcdut/sdlv/DragManager;->isInvokedDraggingStarted:Z

    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/yydcdut/sdlv/DragManager;->invokedDraggingStarted()V

    .line 173
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/yydcdut/sdlv/DragManager;->isDragging:Z

    return p1
.end method

.method protected setDragging(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/yydcdut/sdlv/DragManager;->isDragging:Z

    .line 110
    invoke-direct {p0}, Lcom/yydcdut/sdlv/DragManager;->invokedDraggingStarted()V

    return-void
.end method
