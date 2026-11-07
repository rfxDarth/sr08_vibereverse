.class Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;


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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(I)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnItemClick "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 p1, 0x3

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->notifyItemChanged(I)V

    .line 74
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->clickPosition(I)V

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aput p1, v0, v1

    .line 76
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->val$dateRecycleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->notifyItemChanged(I)V

    .line 78
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->switchDate()V

    return-void
.end method
