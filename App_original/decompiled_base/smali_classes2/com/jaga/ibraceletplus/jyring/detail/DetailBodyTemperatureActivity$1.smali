.class Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;
.super Ljava/lang/Object;
.source "DetailBodyTemperatureActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(II)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    const/16 v1, 0x18

    const/16 v2, 0xe10

    invoke-static {v0, p1, p2, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;IIII)V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    const/4 v1, 0x1

    const v2, 0x15180

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    const/4 v1, 0x7

    invoke-static {v0, p1, p2, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;IIII)V

    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    invoke-static {v0, p1, p2, p2, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;IIII)V

    :cond_2
    return-void
.end method
