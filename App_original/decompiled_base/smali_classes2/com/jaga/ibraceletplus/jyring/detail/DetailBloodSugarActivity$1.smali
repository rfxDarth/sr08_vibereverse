.class Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;
.super Ljava/lang/Object;
.source "DetailBloodSugarActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(II)V
    .locals 13

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    if-nez v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    const/16 v5, 0xe10

    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/16 v4, 0x18

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;IIIII)V

    return-void

    :cond_0
    move v8, p1

    move v9, p2

    .line 112
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 113
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    const v11, 0x15180

    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v10, 0x7

    invoke-static/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;IIIII)V

    return-void

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 115
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    const v11, 0x15180

    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    move v10, v9

    invoke-static/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;IIIII)V

    :cond_2
    return-void
.end method
