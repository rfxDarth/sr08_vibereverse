.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4985
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 4988
    const-string v0, "name"

    const-string v1, "color"

    const-string v2, "calor"

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v4

    if-eq v3, v4, :cond_0

    return-void

    .line 4992
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4993
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5, v6}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 4994
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->time:I

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v3

    .line 4995
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget v6, v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->calor:I

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v9, v9, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v10, 0x7f130543

    invoke-virtual {v9, v10}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v8, v9, v3}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4997
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor4:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-lez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4998
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor3:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4999
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5000
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v6, 0x0

    :cond_4
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5002
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount4:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->calor:I

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5003
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor3:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5004
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5005
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5006
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5007
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5008
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5009
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5010
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5011
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5013
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5014
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 5015
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEmptySport:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 5017
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEmptySport:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5018
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v7}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 5021
    :goto_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/ColumnChartView;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 5022
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alAv:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 5023
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 5024
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 5026
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 5027
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-wide v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartStart:J

    long-to-float v1, v1

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 5028
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-wide v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartEnd:J

    long-to-float v1, v1

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 5029
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5032
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initSport onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
