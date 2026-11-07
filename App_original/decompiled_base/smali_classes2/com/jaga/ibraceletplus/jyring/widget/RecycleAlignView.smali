.class public Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecycleAlignView.java"


# instance fields
.field public bScrolled:Z

.field public middle:I

.field public size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    .line 20
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->bScrolled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    .line 20
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->bScrolled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    .line 20
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->bScrolled:Z

    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public clickPosition(I)V
    .locals 1

    .line 86
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    if-le p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x3

    .line 87
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x3

    .line 89
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->smoothScrollToPosition(I)V

    .line 91
    :cond_1
    :goto_0
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    return-void
.end method
