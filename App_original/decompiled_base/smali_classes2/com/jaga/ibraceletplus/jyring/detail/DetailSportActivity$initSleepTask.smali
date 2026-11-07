.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;
.super Landroid/os/AsyncTask;
.source "DetailSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initSleepTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected alSport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field protected chartEnd:J

.field protected chartStart:J

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 695
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartStart:J

    const-wide/16 v0, 0x59f

    .line 696
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartEnd:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;)V
    .locals 0

    .line 694
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 694
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 701
    array-length v2, v1

    const/4 v3, 0x4

    .line 702
    const-string v4, ""

    if-ge v2, v3, :cond_0

    return-object v4

    :cond_0
    const/4 v2, 0x0

    .line 705
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    .line 706
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    .line 707
    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const/4 v7, 0x3

    .line 708
    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 710
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v15, v7, v9

    .line 711
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    add-int/2addr v3, v6

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v9

    const-wide/16 v8, 0x1

    sub-long v17, v6, v8

    .line 712
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->macid:Ljava/lang/String;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->mid:Ljava/lang/String;

    const/16 v14, 0x64

    invoke-virtual/range {v11 .. v18}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    const/16 v1, 0x5a0

    .line 714
    new-array v3, v1, [I

    .line 715
    new-array v6, v1, [I

    const/16 v7, 0x8b

    .line 716
    new-array v8, v7, [I

    .line 717
    new-array v9, v7, [I

    .line 718
    new-array v7, v7, [I

    const/4 v10, 0x0

    .line 719
    :goto_0
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 720
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    return-object v4

    .line 723
    :cond_1
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v11

    add-int/lit8 v11, v11, -0x65

    .line 724
    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v12

    sub-long/2addr v12, v15

    long-to-int v13, v12

    div-int/lit8 v13, v13, 0x3c

    .line 725
    aput v11, v3, v13

    .line 726
    aget v12, v7, v11

    iget-object v14, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v14}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v14

    add-int/2addr v12, v14

    aput v12, v7, v11

    .line 727
    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v12

    .line 728
    aget v14, v8, v11

    add-int/2addr v14, v12

    aput v14, v8, v11

    if-lez v12, :cond_2

    .line 730
    aget v14, v9, v11

    add-int/2addr v14, v5

    aput v14, v9, v11

    .line 731
    :cond_2
    aput v12, v6, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 734
    :cond_3
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v10, v9, v7, v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;[I[I[I)V

    .line 737
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 738
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 739
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_4

    return-object v4

    .line 742
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    .line 743
    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v9

    if-nez v9, :cond_5

    .line 744
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 751
    :cond_5
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_2
    if-ltz v7, :cond_7

    .line 752
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_6

    return-object v4

    .line 755
    :cond_6
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v9

    if-nez v9, :cond_7

    .line 756
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_7
    const-wide/16 v9, 0x0

    .line 761
    iput-wide v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartStart:J

    const-wide/16 v9, 0x59f

    .line 762
    iput-wide v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartEnd:J

    .line 763
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 764
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v9

    sub-long/2addr v9, v15

    const-wide/16 v11, 0x3c

    div-long/2addr v9, v11

    iput-wide v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartStart:J

    .line 765
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v9

    sub-long/2addr v9, v15

    div-long/2addr v9, v11

    iput-wide v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartEnd:J

    .line 768
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 769
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge v2, v1, :cond_d

    .line 771
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_9

    return-object v4

    :cond_9
    int-to-long v9, v2

    .line 774
    iget-wide v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartStart:J

    cmp-long v13, v9, v11

    if-eqz v13, :cond_a

    iget-wide v13, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartEnd:J

    cmp-long v15, v9, v13

    if-eqz v15, :cond_a

    const-wide/16 v15, 0x2

    div-long/2addr v11, v15

    div-long/2addr v13, v15

    add-long/2addr v11, v13

    cmp-long v13, v9, v11

    if-nez v13, :cond_b

    .line 775
    :cond_a
    new-instance v9, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v10, v2

    invoke-direct {v9, v10}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 778
    aget v10, v3, v2

    .line 779
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)[I

    move-result-object v12

    aget v12, v12, v10

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 780
    aget v10, v8, v10

    int-to-float v10, v10

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v10, v12

    .line 781
    aget v12, v6, v2

    if-nez v12, :cond_c

    const/4 v10, 0x0

    .line 783
    :cond_c
    new-instance v12, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-direct {v12, v10, v11}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v10, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v10, v9}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 785
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 788
    :cond_d
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/ColumnChartView;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    .line 789
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v2

    invoke-virtual {v2, v5}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 790
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 791
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 694
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 798
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 800
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;->notifyDataSetChanged()V

    .line 802
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 803
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartStart:J

    long-to-float v0, v0

    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 804
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->chartEnd:J

    long-to-float v0, v0

    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 805
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 806
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 808
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 809
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 810
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 811
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 813
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 814
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$702(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 694
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
