.class Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;
.super Ljava/lang/Object;
.source "DetailBloodActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(II)V
    .locals 13

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->indexRange:I

    if-nez v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    const/16 v5, 0xe10

    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->indexRange:I

    const/16 v4, 0x18

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;IIIII)V

    return-void

    :cond_0
    move v8, p1

    move v9, p2

    .line 87
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->indexRange:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 88
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    const v11, 0x15180

    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->indexRange:I

    const/4 v10, 0x7

    invoke-static/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;IIIII)V

    return-void

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->indexRange:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 90
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    const v11, 0x15180

    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->indexRange:I

    move v10, v9

    invoke-static/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;IIIII)V

    :cond_2
    return-void
.end method
