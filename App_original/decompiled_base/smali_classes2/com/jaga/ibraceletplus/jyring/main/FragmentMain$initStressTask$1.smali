.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3682
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "current pressure: "

    .line 3686
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 3688
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3689
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v2, 0x7f130056

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    .line 3690
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    const/16 v3, 0x1e

    if-gt v1, v3, :cond_0

    .line 3691
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3692
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    .line 3693
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v2, 0x7f13005b

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3694
    :cond_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    const/16 v2, 0x50

    if-ge v1, v2, :cond_2

    .line 3695
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v2, 0x7f13005a

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3697
    :cond_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v2, 0x7f130059

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3699
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3701
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/16 v1, 0x18

    const/16 v2, 0xe10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3704
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initHeart onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
