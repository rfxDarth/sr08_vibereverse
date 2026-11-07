.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3540
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "current body temp: "

    const-string v1, "current surface temp: "

    .line 3544
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->surfaceTemp:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 3545
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->bodyTemp:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 3546
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3547
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v2, 0x7f13054b

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3548
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3549
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->bodyTemp:F

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->bodyTemp:F

    .line 3550
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v1, 0x7f13054c

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3553
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a052d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3554
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->bodyTemp:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3555
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a052e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3556
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3558
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/16 v1, 0x18

    const/16 v2, 0xe10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3561
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initHeart onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
