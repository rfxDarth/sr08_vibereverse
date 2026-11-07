.class Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$1;
.super Ljava/lang/Object;
.source "DateRecycleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$1;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$1;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->access$000(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;)Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;->OnItemClick(I)V

    return-void
.end method
