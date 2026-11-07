.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3039
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 3046
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->access$5100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 3047
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setAlpha(F)V

    .line 3049
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleepTiny:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->access$5200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 3062
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countTotal:I

    div-int/lit8 v1, v1, 0x3c

    .line 3063
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countTotal:I

    rem-int/lit8 v2, v2, 0x3c

    .line 3064
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v4, 0x7f130122

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v1, :cond_0

    .line 3066
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v4, 0x7f130123

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3067
    :cond_0
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v5, 0x7f130124

    invoke-virtual {v4, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-lez v2, :cond_1

    .line 3069
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v5, 0x7f130125

    invoke-virtual {v4, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3072
    :cond_1
    const-string v5, "--"

    if-lez v1, :cond_2

    .line 3073
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    if-lez v2, :cond_3

    .line 3077
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    .line 3080
    const-string v5, "0"

    .line 3082
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s%s%s%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v3, v7, v6

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v3, 0x3

    aput-object v4, v7, v3

    invoke-static {v1, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3083
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3085
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const v3, 0x7f1000c3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 3087
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3088
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->hmSleep:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgressBottom(Ljava/util/HashMap;)V

    .line 3090
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countLight:I

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countDeep:I

    .line 3091
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    .line 3092
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countDeep:I

    .line 3093
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countLight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 3097
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initSleep onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
