.class Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;
.super Ljava/lang/Object;
.source "DetailWalkActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(II)V
    .locals 7

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    if-nez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;IIIII)V

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    .line 207
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/4 v3, 0x7

    const v4, 0x15180

    invoke-static/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;IIIII)V

    return-void

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 210
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const v4, 0x15180

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
