.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initSleepTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected alSportInitSleep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private ccd:Llecho/lib/hellocharts/model/ColumnChartData;

.field private ccdTiny:Llecho/lib/hellocharts/model/ColumnChartData;

.field protected countDeep:I

.field protected countLight:I

.field protected countTotal:I

.field protected countWake:I

.field protected hmSleep:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2877
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2879
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countTotal:I

    .line 2880
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countLight:I

    .line 2881
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countDeep:I

    .line 2882
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 2877
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0

    .line 2877
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0

    .line 2877
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->ccdTiny:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object p0
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

    .line 2877
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "[debug: sleep] query sleep info : start = "

    move-object/from16 v2, p1

    .line 2891
    :try_start_0
    array-length v2, v2

    .line 2900
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v2

    int-to-long v8, v2

    add-long v14, v4, v8

    .line 2901
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v2

    int-to-long v10, v2

    add-long/2addr v8, v10

    const-wide/16 v18, 0x1

    sub-long v16, v8, v18

    .line 2902
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v10

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual/range {v10 .. v17}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    .line 2903
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-long v8, v14, v6

    invoke-static {v8, v9}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->longToTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v16, v16, v6

    invoke-static/range {v16 .. v17}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->longToTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sleep items = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 2905
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 2906
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleepTiny:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->ccdTiny:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 2911
    new-array v1, v3, [I

    .line 2912
    new-array v2, v3, [I

    .line 2913
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 2914
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v1

    sub-long/2addr v1, v14

    long-to-int v2, v1

    div-int/lit8 v2, v2, 0x3c

    .line 2915
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v8, v14

    long-to-int v1, v8

    div-int/lit8 v1, v1, 0x3c

    sub-int v5, v1, v2

    add-int/lit8 v8, v5, 0x1

    .line 2916
    new-array v8, v8, [I

    .line 2918
    filled-new-array {v3, v5}, [I

    move-result-object v5

    move/from16 v20, v2

    move v2, v1

    move-object v1, v8

    move-object v8, v5

    move/from16 v5, v20

    goto :goto_0

    :cond_0
    move-object v8, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v9, 0x0

    .line 2920
    :goto_1
    array-length v10, v1

    if-ge v9, v10, :cond_1

    .line 2921
    aput v3, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 2926
    :goto_2
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x50

    if-ge v9, v10, :cond_5

    .line 2927
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v12

    sub-long/2addr v12, v14

    long-to-int v10, v12

    div-int/lit8 v10, v10, 0x3c

    sub-int/2addr v10, v5

    .line 2928
    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v12

    .line 2929
    aput v12, v1, v10

    if-lt v12, v11, :cond_2

    .line 2933
    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countDeep:I

    add-int/2addr v10, v4

    iput v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countDeep:I

    goto :goto_3

    :cond_2
    if-lt v12, v4, :cond_3

    .line 2935
    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countLight:I

    add-int/2addr v10, v4

    iput v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countLight:I

    goto :goto_3

    :cond_3
    if-ltz v12, :cond_4

    .line 2937
    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    add-int/2addr v10, v4

    iput v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2939
    :cond_5
    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countDeep:I

    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countLight:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countTotal:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v9

    .line 2940
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    if-gez v2, :cond_6

    .line 2942
    iput v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    goto :goto_4

    :cond_6
    if-lez v2, :cond_7

    add-int/2addr v2, v4

    .line 2944
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->countWake:I

    .line 2947
    :cond_7
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 2948
    :goto_5
    array-length v10, v8

    if-ge v9, v10, :cond_9

    .line 2949
    aget v10, v8, v9

    .line 2951
    array-length v12, v8

    sub-int/2addr v12, v4

    if-ne v9, v12, :cond_8

    add-int/lit8 v12, v10, 0x1

    goto :goto_6

    :cond_8
    move v12, v10

    .line 2954
    :goto_6
    new-instance v13, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v10, v10

    invoke-direct {v13, v10}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    add-int/2addr v12, v5

    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2957
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 2959
    :goto_7
    array-length v12, v1

    if-ge v9, v12, :cond_11

    .line 2960
    aget v12, v1, v9

    add-int v13, v9, v5

    .line 2961
    invoke-static {v13}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v13

    .line 2963
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-lt v12, v11, :cond_a

    move-wide/from16 v16, v6

    const/16 v15, 0x50

    goto :goto_8

    :cond_a
    if-lt v12, v4, :cond_b

    move-wide/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_8

    :cond_b
    move-wide/from16 v16, v6

    if-ltz v12, :cond_c

    const/4 v15, 0x0

    goto :goto_8

    :cond_c
    const/4 v15, -0x1

    :goto_8
    const/high16 v6, 0x40400000    # 3.0f

    if-eq v10, v15, :cond_d

    if-eq v10, v8, :cond_d

    .line 2974
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2975
    new-instance v10, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v3, 0x7f06047d

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v10, v6, v3}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2976
    new-instance v3, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v3, v7}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-lt v12, v11, :cond_e

    .line 2981
    new-instance v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060277

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 2982
    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v8, 0x7f130426

    invoke-virtual {v7, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v3

    .line 2981
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    if-lt v12, v4, :cond_f

    .line 2984
    new-instance v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060278

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 2985
    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v8, 0x7f13042c

    invoke-virtual {v7, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v3

    .line 2984
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    if-ltz v12, :cond_10

    .line 2987
    new-instance v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060276

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 2988
    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v8, 0x7f130434

    invoke-virtual {v7, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v3

    .line 2987
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2991
    :cond_10
    :goto_9
    new-instance v3, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v3, v14}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    move-result-object v3

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move v10, v15

    move-wide/from16 v6, v16

    const/4 v3, 0x0

    const/4 v8, -0x1

    goto/16 :goto_7

    :cond_11
    move-wide/from16 v16, v6

    .line 2994
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[debug: sleep] valid visible condition : columns size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 3002
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 3003
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->ccdTiny:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 3013
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long v1, v1, v16

    .line 3014
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v3

    int-to-long v5, v3

    add-long v11, v1, v5

    .line 3015
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long v1, v1, v16

    .line 3016
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    sub-long v13, v1, v18

    .line 3017
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v7

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    .line 3018
    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 3017
    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->alSportInitSleep:Ljava/util/ArrayList;

    .line 3021
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/4 v9, 0x1

    const/16 v10, 0x64

    const v13, 0x3b888889

    invoke-static/range {v7 .. v13}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/util/ArrayList;IIJF)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->hmSleep:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 3030
    :catch_0
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v2, "initStep runOnUiThread Exception occured"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_a

    .line 3027
    :catch_1
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v2, "initStep runOnUiThread IllegalStateException occured"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_a

    .line 3024
    :catch_2
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v2, "initStep runOnUiThread NullPointerException occured"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    :goto_a
    const/4 v1, 0x0

    return-object v1
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

    .line 2877
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 3037
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3039
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->delay_show_ui_timeout:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
