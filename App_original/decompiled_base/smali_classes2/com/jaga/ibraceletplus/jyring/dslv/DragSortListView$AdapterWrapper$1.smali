.class Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

.field final synthetic val$this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V
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

    .line 648
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper$1;->val$this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
