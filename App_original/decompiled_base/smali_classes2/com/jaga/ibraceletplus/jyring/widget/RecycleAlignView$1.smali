.class Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecycleAlignView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

.field final synthetic val$listener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->val$listener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 8

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_3

    .line 45
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->bScrolled:Z

    .line 47
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 51
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v3

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 55
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    iget v5, v4, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    rsub-int/lit8 v2, v2, 0x7

    add-int/2addr v5, v2

    iput v5, v4, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    .line 59
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    .line 60
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->getScreen(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v3

    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 65
    div-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    if-ge v1, v5, :cond_1

    .line 67
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    invoke-virtual {v5, v4}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->smoothScrollToPosition(I)V

    .line 68
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    add-int/2addr v4, v6

    iput v4, v5, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    goto :goto_0

    .line 71
    :cond_1
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    add-int/lit8 v7, v4, -0x7

    invoke-virtual {v5, v7}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->smoothScrollToPosition(I)V

    .line 72
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iput v4, v5, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    :goto_0
    if-eqz v1, :cond_2

    sub-int/2addr v2, v1

    if-ge v2, v3, :cond_3

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    iput-boolean v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->bScrolled:Z

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;->val$listener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
