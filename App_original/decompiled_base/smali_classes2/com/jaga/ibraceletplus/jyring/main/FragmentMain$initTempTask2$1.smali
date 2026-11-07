.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3972
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3979
    const-string v0, ""

    .line 0
    const-string v1, "--"

    .line 3979
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3980
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3982
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->surfaceTemp:F

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 3983
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 3984
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    const v6, 0x43a38000    # 327.0f

    const v7, -0x3c5c8000    # -327.0f

    cmpg-float v5, v5, v7

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->tempUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->tempUnit:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1, v0, v0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 3987
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6302(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;F)F

    .line 3996
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$4100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "tvName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 3998
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    .line 3999
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->maxTemp:F

    float-to-int v1, v1

    div-int/2addr v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 4001
    :goto_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 4003
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4004
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->bodyTemp:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 4005
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4006
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4009
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initTemp onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
