.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2095
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2102
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x7f130255

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 2103
    :try_start_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const-string v3, "0"

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v4, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    .line 2109
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2112
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v6, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v2, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    int-to-float v0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 2116
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 2119
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initEcg onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
