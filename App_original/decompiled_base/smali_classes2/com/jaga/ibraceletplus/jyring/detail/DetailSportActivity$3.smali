.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;
.super Ljava/lang/Object;
.source "DetailSportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initSleep(IIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

.field final synthetic val$alSport:Ljava/util/ArrayList;

.field final synthetic val$iaCalor:[I

.field final synthetic val$iaSport:[I

.field final synthetic val$iaSportCalor:[I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Ljava/util/ArrayList;J[I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 887
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$alSport:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$start:J

    iput-object p5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$iaSport:[I

    iput-object p6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$iaCalor:[I

    iput-object p7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$iaSportCalor:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 892
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$alSport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$alSport:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    .line 894
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$alSport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$start:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x59f

    .line 897
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 898
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 899
    :goto_1
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$iaSport:[I

    array-length v5, v5

    if-ge v1, v5, :cond_4

    int-to-long v8, v1

    cmp-long v5, v8, v2

    if-eqz v5, :cond_1

    cmp-long v5, v8, v6

    if-eqz v5, :cond_1

    const-wide/16 v10, 0x2

    .line 900
    div-long v12, v2, v10

    div-long v10, v6, v10

    add-long/2addr v12, v10

    cmp-long v5, v8, v12

    if-nez v5, :cond_2

    .line 901
    :cond_1
    new-instance v5, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v8, v1

    invoke-direct {v5, v8}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 904
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$iaSport:[I

    aget v8, v8, v1

    .line 905
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)[I

    move-result-object v10

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 906
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$iaCalor:[I

    aget v8, v10, v8

    int-to-float v8, v8

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v8, v10

    .line 907
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->val$iaSportCalor:[I

    aget v10, v10, v1

    if-nez v10, :cond_3

    const/4 v8, 0x0

    .line 909
    :cond_3
    new-instance v10, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-direct {v10, v8, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v8, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v8, v5}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 911
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 914
    :cond_4
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/ColumnChartView;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    .line 915
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v5

    invoke-virtual {v5, v0}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 916
    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 917
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 919
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    long-to-float v1, v2

    .line 920
    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    long-to-float v1, v6

    .line 921
    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 922
    iget v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 923
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method
