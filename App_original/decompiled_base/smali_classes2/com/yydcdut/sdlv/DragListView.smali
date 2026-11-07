.class Lcom/yydcdut/sdlv/DragListView;
.super Landroid/widget/ListView;
.source "DragListView.java"


# instance fields
.field private mAdapterDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

.field private mDragListDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

.field public mDragManager:Lcom/yydcdut/sdlv/DragManager;

.field private mOnDragDropListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/yydcdut/sdlv/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/yydcdut/sdlv/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 50
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    new-instance p3, Lcom/yydcdut/sdlv/DragManager;

    invoke-direct {p3, p1, p0, p2}, Lcom/yydcdut/sdlv/DragManager;-><init>(Landroid/content/Context;Lcom/yydcdut/sdlv/DragListView;Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/yydcdut/sdlv/DragListView;->mDragManager:Lcom/yydcdut/sdlv/DragManager;

    return-void
.end method

.method private getViewByPoint(II)Landroid/view/View;
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/DragListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Lcom/yydcdut/sdlv/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected handleDragFinished(II)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragListView;->mAdapterDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragListView;->mOnDragDropListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/yydcdut/sdlv/Callback$OnDragDropListener;->onDragFinished(IILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragListView;->mDragListDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 131
    invoke-interface {v0, p1, p2, v1}, Lcom/yydcdut/sdlv/Callback$OnDragDropListener;->onDragFinished(IILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    :cond_1
    return-void
.end method

.method protected handleDragMoving(II)V
    .locals 3

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/yydcdut/sdlv/DragListView;->getViewByPoint(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragListView;->mAdapterDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    if-eqz v1, :cond_1

    .line 119
    iget-object v2, p0, Lcom/yydcdut/sdlv/DragListView;->mOnDragDropListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/yydcdut/sdlv/Callback$OnDragDropListener;->onDragMoving(IILandroid/view/View;Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragListView;->mDragListDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 122
    invoke-interface {v1, p1, p2, v0, v2}, Lcom/yydcdut/sdlv/Callback$OnDragDropListener;->onDragMoving(IILandroid/view/View;Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handleDragStarted(II)V
    .locals 3

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/yydcdut/sdlv/DragListView;->getViewByPoint(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragListView;->mAdapterDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v1, p1, p2, v0}, Lcom/yydcdut/sdlv/Callback$OnDragDropListener;->onDragStarted(IILandroid/view/View;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/yydcdut/sdlv/DragListView;->mDragListDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v2, p1, p2, v0}, Lcom/yydcdut/sdlv/Callback$OnDragDropListener;->onDragStarted(IILandroid/view/View;)Z

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragListView;->mOnDragDropListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/DragListView;->getPositionForView(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/DragListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;->onDragViewStart(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected isDragging()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragListView;->mDragManager:Lcom/yydcdut/sdlv/DragManager;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/DragManager;->isDragging()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragListView;->mDragManager:Lcom/yydcdut/sdlv/DragManager;

    invoke-virtual {v0, p1}, Lcom/yydcdut/sdlv/DragManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 150
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragListView;->mDragManager:Lcom/yydcdut/sdlv/DragManager;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/DragManager;->onSizeChanged()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragListView;->mDragManager:Lcom/yydcdut/sdlv/DragManager;

    invoke-virtual {v0, p1}, Lcom/yydcdut/sdlv/DragManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected serAdapterDragDropListener(Lcom/yydcdut/sdlv/Callback$OnDragDropListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yydcdut/sdlv/DragListView;->mAdapterDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    return-void
.end method

.method protected setDragPosition(I)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/DragListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/yydcdut/sdlv/DragListView;->mOnDragDropListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;

    if-eqz v1, :cond_0

    instance-of v0, v0, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/DragListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 59
    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    .line 60
    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemRightBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragListView;->mDragManager:Lcom/yydcdut/sdlv/DragManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/DragManager;->setDragging(Z)V

    :cond_0
    return-void
.end method

.method protected setListDragDropListener(Lcom/yydcdut/sdlv/Callback$OnDragDropListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/yydcdut/sdlv/DragListView;->mDragListDragDropListener:Lcom/yydcdut/sdlv/Callback$OnDragDropListener;

    return-void
.end method

.method public setOnDragDropListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yydcdut/sdlv/DragListView;->mOnDragDropListener:Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;

    return-void
.end method
