.class Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$4;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->switchRange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->smoothScrollToPosition(I)V

    return-void
.end method
