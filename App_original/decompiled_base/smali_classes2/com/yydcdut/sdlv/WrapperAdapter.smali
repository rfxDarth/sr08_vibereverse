.class Lcom/yydcdut/sdlv/WrapperAdapter;
.super Ljava/lang/Object;
.source "WrapperAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;
.implements Lcom/yydcdut/sdlv/Callback$OnDragDropListener;
.implements Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;
.implements Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;,
        Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;,
        Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;,
        Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;,
        Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;
    }
.end annotation


# instance fields
.field private isInDragging:Z

.field private isRegisterDataSetObserver:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnimationDuration:I

.field private mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDragEnteredEntityIndex:I

.field private mDraggedEntity:Ljava/lang/Object;

.field private mEndLimit:I

.field private mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/yydcdut/sdlv/SlideListView;

.field private mMenuSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yydcdut/sdlv/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAdapterMenuClickListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;

.field private mOnAdapterSlideListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;

.field private mOnItemDeleteListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;

.field private mOnItemScrollBackListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;

.field private mOnScrollListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;

.field private mSlideItemPosition:I

.field private mStartLimit:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/yydcdut/sdlv/SlideListView;Landroid/widget/ListAdapter;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yydcdut/sdlv/SlideListView;",
            "Landroid/widget/ListAdapter;",
            "Landroid/util/SparseArray<",
            "Lcom/yydcdut/sdlv/Menu;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    .line 56
    iput v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    .line 60
    iput v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mStartLimit:I

    const v0, 0x7fffffff

    .line 62
    iput v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mEndLimit:I

    const/16 v0, 0x12c

    .line 64
    iput v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAnimationDuration:I

    .line 110
    new-instance v0, Lcom/yydcdut/sdlv/WrapperAdapter$1;

    invoke-direct {v0, p0}, Lcom/yydcdut/sdlv/WrapperAdapter$1;-><init>(Lcom/yydcdut/sdlv/WrapperAdapter;)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 76
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    .line 78
    invoke-virtual {p2, p0}, Lcom/yydcdut/sdlv/SlideListView;->setOnSuperScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 79
    iput-object p3, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 80
    iput-object p4, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mMenuSparseArray:Landroid/util/SparseArray;

    .line 81
    iget-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {p1, p0}, Lcom/yydcdut/sdlv/SlideListView;->serAdapterDragDropListener(Lcom/yydcdut/sdlv/Callback$OnDragDropListener;)V

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mItemIdTopMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yydcdut/sdlv/WrapperAdapter;I)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->isIndexInBound(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yydcdut/sdlv/WrapperAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mItemIdTopMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yydcdut/sdlv/WrapperAdapter;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAnimationDuration:I

    return p0
.end method

.method private cacheOffsetsForDataSetChanged()V
    .locals 5

    .line 475
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    .line 476
    :goto_0
    iget-object v2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v2}, Lcom/yydcdut/sdlv/SlideListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 477
    iget-object v2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v2, v1}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v3, v0, v1

    .line 479
    iget-object v4, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v4}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    iget-object v4, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v4}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, v3, v4

    invoke-direct {p0, v4}, Lcom/yydcdut/sdlv/WrapperAdapter;->isIndexInBound(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v4}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/yydcdut/sdlv/WrapperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 488
    iget-object v4, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v4}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/yydcdut/sdlv/WrapperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 489
    iget-object v4, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The value of getItem(position) is NULL!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private createMenu(Lcom/yydcdut/sdlv/Menu;Lcom/yydcdut/sdlv/ItemMainLayout;)V
    .locals 6

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/Menu;->getTotalBtnLength(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 188
    :goto_0
    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/Menu;->getMenuItems(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 189
    invoke-virtual {p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v4

    .line 190
    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/Menu;->getMenuItems(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yydcdut/sdlv/MenuItem;

    invoke-virtual {v4, v5, v1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->addMenuItem(Lcom/yydcdut/sdlv/MenuItem;I)V

    .line 191
    invoke-virtual {v4, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setDirection(I)V

    .line 192
    invoke-virtual {v4, p0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setOnMenuItemClickListener(Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemLeftBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, -0x1

    .line 197
    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/Menu;->getTotalBtnLength(I)I

    move-result v1

    if-lez v1, :cond_3

    .line 198
    :goto_1
    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/Menu;->getMenuItems(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 199
    invoke-virtual {p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemRightBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object v1

    .line 200
    invoke-virtual {p1, v0}, Lcom/yydcdut/sdlv/Menu;->getMenuItems(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yydcdut/sdlv/MenuItem;

    invoke-virtual {v1, v3, v2}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->addMenuItem(Lcom/yydcdut/sdlv/MenuItem;I)V

    .line 201
    invoke-virtual {v1, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setDirection(I)V

    .line 202
    invoke-virtual {v1, p0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setOnMenuItemClickListener(Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 205
    :cond_3
    invoke-virtual {p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemRightBackGroundLayout()Lcom/yydcdut/sdlv/ItemBackGroundLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    return-void
.end method

.method private doAnimation()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/SlideListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yydcdut/sdlv/WrapperAdapter$2;

    invoke-direct {v1, p0}, Lcom/yydcdut/sdlv/WrapperAdapter$2;-><init>(Lcom/yydcdut/sdlv/WrapperAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private handleDrop(Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDraggedEntity:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 517
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    invoke-direct {p0, v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 519
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    invoke-interface {p1, v0}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;->onDragViewDown(I)V

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->cacheOffsetsForDataSetChanged()V

    .line 522
    invoke-direct {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->notifyDataSetChanged()V

    :cond_1
    const/4 p1, 0x0

    .line 524
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDraggedEntity:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private hide(Landroid/view/View;I)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDraggedEntity:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_4

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_4

    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yydcdut/sdlv/WrapperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDraggedEntity:Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/2addr p2, v2

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 176
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_4

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private isIndexInBound(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private markDropArea(ILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDraggedEntity:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    invoke-direct {p0, v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->cacheOffsetsForDataSetChanged()V

    if-eqz p2, :cond_0

    .line 460
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    invoke-interface {p2, v0, p1}, Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;->onDragDropViewMoved(II)V

    .line 462
    :cond_0
    iput p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    .line 463
    invoke-direct {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->doAnimation()V

    .line 464
    invoke-direct {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 470
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private popDragEntry(I)V
    .locals 1

    .line 449
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDraggedEntity:Ljava/lang/Object;

    .line 451
    iput p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, p1, v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->markDropArea(ILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    :cond_0
    return-void
.end method

.method private returnSlideItemPosition(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;)V
    .locals 4

    .line 262
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 263
    iget-object v2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v2}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->scrollBack(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;)V

    .line 267
    :cond_0
    iput v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    :cond_1
    return-void
.end method

.method private setInDragging(Z)V
    .locals 0

    .line 433
    iput-boolean p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->isInDragging:Z

    return-void
.end method


# virtual methods
.method protected addDataSetObserver()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->isRegisterDataSetObserver:Z

    :cond_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method protected deleteSlideItemPosition()V
    .locals 3

    .line 272
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v1}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->deleteItem(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method protected getSlideItemPosition()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_1

    .line 147
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 148
    new-instance p3, Lcom/yydcdut/sdlv/ItemMainLayout;

    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2}, Lcom/yydcdut/sdlv/ItemMainLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    iget-object p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p2

    .line 150
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mMenuSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yydcdut/sdlv/Menu;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p2, v0}, Lcom/yydcdut/sdlv/Menu;->getTotalBtnLength(I)I

    move-result v0

    const/4 v1, -0x1

    .line 155
    invoke-virtual {p2, v1}, Lcom/yydcdut/sdlv/Menu;->getTotalBtnLength(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/yydcdut/sdlv/Menu;->isSlideOver()Z

    move-result v2

    .line 154
    invoke-virtual {p3, v0, v1, v2}, Lcom/yydcdut/sdlv/ItemMainLayout;->setParams(IIZ)V

    .line 156
    invoke-direct {p0, p2, p3}, Lcom/yydcdut/sdlv/WrapperAdapter;->createMenu(Lcom/yydcdut/sdlv/Menu;Lcom/yydcdut/sdlv/ItemMainLayout;)V

    .line 157
    invoke-virtual {p3, p0}, Lcom/yydcdut/sdlv/ItemMainLayout;->setOnItemSlideListenerProxy(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemSlideListenerProxy;)V

    .line 158
    iget-object p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {p2}, Lcom/yydcdut/sdlv/SlideListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No menu matches any view types in ListView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_1
    check-cast p2, Lcom/yydcdut/sdlv/ItemMainLayout;

    .line 161
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->getItemCustomView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-object p3, p2

    .line 163
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->hide(Landroid/view/View;I)V

    return-object p3
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onClick(IILandroid/view/View;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnAdapterMenuClickListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;

    if-eqz v0, :cond_2

    .line 368
    iget v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    invoke-interface {v0, p3, v1, p1, p2}, Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;->onMenuItemClick(Landroid/view/View;III)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->deleteSlideItemPosition()V

    return-void

    .line 374
    :cond_1
    invoke-direct {p0, p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemScrollBackListenerProxy;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDelete(Landroid/view/View;)V
    .locals 3

    .line 412
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 414
    iget-object v2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnItemDeleteListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;

    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v2, p1, v0}, Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;->onItemDelete(Landroid/view/View;I)V

    .line 417
    :cond_0
    iput v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    .line 418
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    .line 419
    iget-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/SlideListView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onDeleteBegin()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnItemDeleteListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;->onDeleteBegin()V

    :cond_0
    return-void
.end method

.method public onDragFinished(IILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 511
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->setInDragging(Z)V

    .line 512
    invoke-direct {p0, p3}, Lcom/yydcdut/sdlv/WrapperAdapter;->handleDrop(Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    return-void
.end method

.method public onDragMoving(IILandroid/view/View;Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {p1, p3}, Lcom/yydcdut/sdlv/SlideListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {p2}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result p2

    sub-int/2addr p1, p2

    .line 503
    iget-boolean p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->isInDragging:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDragEnteredEntityIndex:I

    if-eq p2, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->isIndexInBound(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mStartLimit:I

    if-le p1, p2, :cond_1

    iget p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mEndLimit:I

    if-ge p1, p2, :cond_1

    .line 505
    invoke-direct {p0, p1, p4}, Lcom/yydcdut/sdlv/WrapperAdapter;->markDropArea(ILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragStarted(IILandroid/view/View;)Z
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {p1, p3}, Lcom/yydcdut/sdlv/SlideListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {p2}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result p2

    sub-int/2addr p1, p2

    .line 439
    iget p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mStartLimit:I

    if-le p1, p2, :cond_0

    iget p2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mEndLimit:I

    if-ge p1, p2, :cond_0

    const/4 p2, 0x1

    .line 440
    invoke-direct {p0, p2}, Lcom/yydcdut/sdlv/WrapperAdapter;->setInDragging(Z)V

    .line 441
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->popDragEntry(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 443
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/WrapperAdapter;->setInDragging(Z)V

    .line 445
    :goto_0
    iget-boolean p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->isInDragging:Z

    return p1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnScrollListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;->onScrollProxy(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollBack(Landroid/view/View;)V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnItemScrollBackListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;

    if-eqz v0, :cond_0

    .line 578
    iget-object v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v1, p1}, Lcom/yydcdut/sdlv/SlideListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;->onScrollBack(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnScrollListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;

    if-eqz v0, :cond_1

    .line 392
    invoke-interface {v0, p1, p2}, Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;->onScrollStateChangedProxy(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public onSlideClose(Landroid/view/View;I)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnAdapterSlideListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;

    if-eqz v0, :cond_0

    .line 347
    iget v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    invoke-interface {v0, p1, v1, p2}, Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;->onSlideClose(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onSlideOpen(Landroid/view/View;I)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnAdapterSlideListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;

    if-eqz v0, :cond_0

    .line 340
    iget v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    invoke-interface {v0, p1, v1, p2}, Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;->onSlideOpen(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method protected removeDataSetObserver()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->isRegisterDataSetObserver:Z

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->isRegisterDataSetObserver:Z

    :cond_0
    return-void
.end method

.method protected returnSlideItemPosition(F)I
    .locals 5

    .line 285
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 286
    iget-object v3, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v3}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0, p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->scrollBack(F)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return p1

    .line 292
    :cond_0
    iput v2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    return p1

    .line 299
    :cond_1
    iput v2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    :cond_2
    return v1
.end method

.method protected returnSlideItemPosition()V
    .locals 4

    .line 252
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 253
    iget-object v2, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v2}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/yydcdut/sdlv/ItemMainLayout;->scrollBack()V

    .line 257
    :cond_0
    iput v1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    :cond_1
    return-void
.end method

.method protected setEndLimit(I)V
    .locals 0

    .line 429
    iput p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mEndLimit:I

    return-void
.end method

.method protected setOnAdapterMenuClickListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnAdapterMenuClickListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterMenuClickListenerProxy;

    return-void
.end method

.method protected setOnAdapterSlideListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnAdapterSlideListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnAdapterSlideListenerProxy;

    return-void
.end method

.method protected setOnItemDeleteListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnItemDeleteListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$onItemDeleteListenerProxy;

    return-void
.end method

.method public setOnItemScrollBackListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnItemScrollBackListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnItemScrollBackListenerProxy;

    return-void
.end method

.method protected setOnScrollListenerProxy(Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mOnScrollListenerProxy:Lcom/yydcdut/sdlv/WrapperAdapter$OnScrollListenerProxy;

    return-void
.end method

.method protected setSlideItemPosition(I)V
    .locals 2

    .line 230
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition()V

    .line 233
    :cond_0
    iget v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    if-ne v0, p1, :cond_1

    return-void

    .line 236
    :cond_1
    iput p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    return-void
.end method

.method protected setStartLimit(I)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mStartLimit:I

    return-void
.end method

.method protected slideItem(II)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mListView:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/ItemMainLayout;

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    iput p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mSlideItemPosition:I

    .line 311
    invoke-virtual {v0, p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->scrollOpen(I)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
