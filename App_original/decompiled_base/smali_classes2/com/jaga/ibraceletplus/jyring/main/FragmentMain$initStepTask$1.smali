.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2830
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2833
    const-string v0, ""

    .line 0
    const-string v1, "initStepTask onPostExecute progress = "

    .line 2833
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v3

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 2839
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2840
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 2841
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->walkView:Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1000cf

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->walkView:Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->setProgress(IFFF)V

    .line 2844
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 2847
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCalor:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2848
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkCalories:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v4, 0x7f130543

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2850
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvDistance:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2851
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvUnitDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2852
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkDistance:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2854
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvTime:Landroid/widget/TextView;

    const-string v1, "%1$02d:%2$02d"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2855
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkStep:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2857
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbCalor:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 2858
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbCalor:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2859
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbDistance:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 2860
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbDistance:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2861
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbTime:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 2862
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbTime:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->access$4800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    .line 2865
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initStep onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
