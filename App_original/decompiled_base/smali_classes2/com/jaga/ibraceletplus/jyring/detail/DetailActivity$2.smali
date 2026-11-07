.class Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

.field final synthetic val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;)V
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

    .line 84
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 90
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object p2, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    move-result-object v0

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;II)V

    .line 91
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    move-result-object v0

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->notifyItemRangeInserted(II)V

    .line 92
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "alpha"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object p2

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->notifyItemChanged(I)V

    .line 94
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget p2, p2, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    move-result-object v1

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->middle:I

    aput v1, p1, p2

    .line 95
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object p2

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->notifyItemChanged(I)V

    .line 98
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    move-result-object p1

    iget-boolean p1, p1, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->bScrolled:Z

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->switchDate()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
