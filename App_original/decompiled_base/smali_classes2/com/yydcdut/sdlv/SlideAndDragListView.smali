.class public Lcom/yydcdut/sdlv/SlideAndDragListView;
.super Lcom/yydcdut/sdlv/SlideListView;
.source "SlideAndDragListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;,
        Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;,
        Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;,
        Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;,
        Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/yydcdut/sdlv/SlideAndDragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/yydcdut/sdlv/SlideAndDragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/yydcdut/sdlv/SlideListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic closeSlidedItem()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/yydcdut/sdlv/SlideListView;->closeSlidedItem()V

    return-void
.end method

.method public bridge synthetic deleteSlideItem()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/yydcdut/sdlv/SlideListView;->deleteSlideItem()V

    return-void
.end method

.method public bridge synthetic onDeleteBegin()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/yydcdut/sdlv/SlideListView;->onDeleteBegin()V

    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onItemDelete(Landroid/view/View;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/yydcdut/sdlv/SlideListView;->onItemDelete(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 25
    invoke-super/range {p0 .. p5}, Lcom/yydcdut/sdlv/SlideListView;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMenuItemClick(Landroid/view/View;III)I
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yydcdut/sdlv/SlideListView;->onMenuItemClick(Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onScrollBack(Landroid/view/View;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/yydcdut/sdlv/SlideListView;->onScrollBack(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onScrollProxy(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yydcdut/sdlv/SlideListView;->onScrollProxy(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChangedProxy(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/yydcdut/sdlv/SlideListView;->onScrollStateChangedProxy(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public bridge synthetic onSlideClose(Landroid/view/View;II)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/yydcdut/sdlv/SlideListView;->onSlideClose(Landroid/view/View;II)V

    return-void
.end method

.method public bridge synthetic onSlideOpen(Landroid/view/View;II)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/yydcdut/sdlv/SlideListView;->onSlideOpen(Landroid/view/View;II)V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public bridge synthetic setMenu(Lcom/yydcdut/sdlv/Menu;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setMenu(Lcom/yydcdut/sdlv/Menu;)V

    return-void
.end method

.method public bridge synthetic setMenu(Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setMenu(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setMenu([Lcom/yydcdut/sdlv/Menu;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setMenu([Lcom/yydcdut/sdlv/Menu;)V

    return-void
.end method

.method public setNotDragFooterCount(I)V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideAndDragListView;->getWrapperAdapter()Lcom/yydcdut/sdlv/WrapperAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/yydcdut/sdlv/WrapperAdapter;->setEndLimit(I)V

    :cond_0
    return-void
.end method

.method public setNotDragHeaderCount(I)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SlideAndDragListView;->getWrapperAdapter()Lcom/yydcdut/sdlv/WrapperAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 156
    invoke-virtual {v0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->setStartLimit(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOnDragDropListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnDragDropListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    return-void
.end method

.method public bridge synthetic setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public bridge synthetic setOnItemDeleteListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnItemDeleteListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemDeleteListener;)V

    return-void
.end method

.method public bridge synthetic setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public bridge synthetic setOnItemScrollBackListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnItemScrollBackListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnItemScrollBackListener;)V

    return-void
.end method

.method public bridge synthetic setOnMenuItemClickListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnMenuItemClickListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnMenuItemClickListener;)V

    return-void
.end method

.method public bridge synthetic setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic setOnSlideListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->setOnSlideListener(Lcom/yydcdut/sdlv/SlideAndDragListView$OnSlideListener;)V

    return-void
.end method

.method public bridge synthetic slideItem(II)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/yydcdut/sdlv/SlideListView;->slideItem(II)V

    return-void
.end method

.method public bridge synthetic startDrag(I)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/yydcdut/sdlv/SlideListView;->startDrag(I)Z

    move-result p1

    return p1
.end method
