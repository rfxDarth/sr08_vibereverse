.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;
.super Ljava/lang/Object;
.source "DetailSportActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(II)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->indexRange:I

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    const/16 v1, 0x5a0

    const/16 v2, 0x3c

    invoke-static {v0, p1, p2, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;IIII)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->indexRange:I

    const/4 v1, 0x1

    const v2, 0x15180

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    const/4 v1, 0x7

    invoke-static {v0, p1, p2, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;IIII)V

    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v0, p1, p2, p2, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;IIII)V

    :cond_2
    return-void
.end method
