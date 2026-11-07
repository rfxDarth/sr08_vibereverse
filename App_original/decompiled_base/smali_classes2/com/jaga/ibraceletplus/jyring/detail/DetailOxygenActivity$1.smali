.class Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;
.super Ljava/lang/Object;
.source "DetailOxygenActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(II)V
    .locals 13

    .line 83
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->indexRange:I

    if-nez v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    const/16 v5, 0xe10

    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->indexRange:I

    const/16 v4, 0x18

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;IIIII)V

    return-void

    :cond_0
    move v8, p1

    move v9, p2

    .line 85
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->indexRange:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 86
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    const v11, 0x15180

    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->indexRange:I

    const/4 v10, 0x7

    invoke-static/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;IIIII)V

    return-void

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->indexRange:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 88
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    const v11, 0x15180

    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->indexRange:I

    move v10, v9

    invoke-static/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;IIIII)V

    :cond_2
    return-void
.end method
