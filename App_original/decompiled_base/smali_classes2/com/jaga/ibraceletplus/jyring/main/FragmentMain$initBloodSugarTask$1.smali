.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3396
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "current sugar: "

    .line 3400
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->sugar:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 3401
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0468

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3402
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a046a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3403
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    const-string v3, "DistanceUnit"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3404
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f130133

    .line 3405
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3406
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->sugar:F

    const v3, 0x419020c5    # 18.016f

    mul-float v2, v2, v3

    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->sugar:F

    goto :goto_0

    :cond_0
    const v2, 0x7f130135

    .line 3409
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3412
    :goto_0
    const-string v1, "%.2f"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->sugar:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3413
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/16 v1, 0x18

    const/16 v2, 0xe10

    invoke-static {v0, v5, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3416
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initHeart onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
