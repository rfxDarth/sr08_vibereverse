.class Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->access$100(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->cancelDrag()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;->cancel()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 566
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$2;->cancel()V

    return-void
.end method
