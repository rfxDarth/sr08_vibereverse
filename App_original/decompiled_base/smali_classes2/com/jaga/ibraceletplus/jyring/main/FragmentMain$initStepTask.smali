.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initStepTask"
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
.field private calorie:I

.field private distance:I

.field private note:Ljava/lang/String;

.field private note2:Ljava/lang/String;

.field private step:I

.field private target:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

.field private time:I

.field private unitText:Ljava/lang/String;


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

    .line 2727
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2728
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    .line 2729
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->distance:I

    .line 2730
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->calorie:I

    .line 2731
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->time:I

    .line 2732
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->target:I

    .line 2734
    const-string p1, ""

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->note:Ljava/lang/String;

    .line 2735
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->note2:Ljava/lang/String;

    .line 2736
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->unitText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 2727
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I
    .locals 0

    .line 2727
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    return p0
.end method

.method static synthetic access$4300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)Ljava/lang/String;
    .locals 0

    .line 2727
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->note:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)Ljava/lang/String;
    .locals 0

    .line 2727
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->note2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I
    .locals 0

    .line 2727
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->calorie:I

    return p0
.end method

.method static synthetic access$4600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I
    .locals 0

    .line 2727
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->distance:I

    return p0
.end method

.method static synthetic access$4700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)Ljava/lang/String;
    .locals 0

    .line 2727
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->unitText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)I
    .locals 0

    .line 2727
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->time:I

    return p0
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

    .line 2727
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2741
    const-string v2, "false"

    const-string v3, "0"

    :try_start_0
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    const-string v5, ""

    if-nez v4, :cond_0

    return-object v5

    .line 2745
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v4

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v6

    if-eq v4, v6, :cond_1

    return-object v5

    :cond_1
    const/4 v4, 0x0

    .line 2748
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2751
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v13, v5, v7

    .line 2752
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v7

    const-wide/32 v7, 0x1517f

    add-long v15, v5, v7

    .line 2753
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v9

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    .line 2758
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 2759
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2761
    :cond_2
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v4

    invoke-static {v6, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v4

    .line 2762
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v7

    const-string v8, "FUNCTION_NEW_DISTANCE"

    invoke-virtual {v7, v8, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2765
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v4

    invoke-static {v6, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v4

    .line 2767
    :cond_3
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v7

    invoke-static {v4, v7}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v7

    .line 2769
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v8

    const-string v9, "FUNCTION_NEW_DISTANCE3"

    invoke-virtual {v8, v9, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2772
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v2

    invoke-static {v6, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v4

    .line 2773
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v2

    invoke-static {v4, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v7

    .line 2777
    :cond_4
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "P_TEMP_STEP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    .line 2778
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "P_TEMP_DISTANCE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->distance:I

    .line 2779
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "P_TEMP_CALORIE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->calorie:I

    .line 2780
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 2781
    iput v6, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    float-to-int v1, v4

    .line 2782
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->distance:I

    float-to-int v1, v7

    .line 2783
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->calorie:I

    .line 2786
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->time:I

    .line 2787
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    if-lez v2, :cond_6

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 2788
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->time:I

    .line 2790
    :cond_6
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->time:I

    const/16 v4, 0x168

    mul-int/lit16 v2, v2, 0x168

    div-int/lit8 v2, v2, 0x78

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3902(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I

    .line 2792
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    mul-int/lit16 v2, v2, 0x168

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$4000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v5

    div-int/2addr v2, v5

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1802(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I

    .line 2793
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initStepTask step = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", progress = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 2794
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v1

    if-le v1, v4, :cond_7

    .line 2795
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1802(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I

    .line 2797
    :cond_7
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$4100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "tvName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2799
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    const-string v2, "DistanceUnit"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2800
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v3, 0x7f130544

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->unitText:Ljava/lang/String;

    .line 2801
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2802
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->distance:I

    int-to-float v1, v1

    sget v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->distance:I

    .line 2803
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v2, 0x7f130547

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->unitText:Ljava/lang/String;

    .line 2808
    :cond_8
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    const-string v2, "P_GOAL_STEP"

    const-string v3, "4000"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2809
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->target:I

    .line 2811
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->note:Ljava/lang/String;

    .line 2812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v3, 0x7f130511

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->step:I

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$4000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->note2:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2821
    :catch_0
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v2, "initStep runOnUiThread Exception occured"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_1

    .line 2818
    :catch_1
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v2, "initStep runOnUiThread IllegalStateException occured"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_1

    .line 2815
    :catch_2
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v2, "initStep runOnUiThread NullPointerException occured"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    :goto_1
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

    .line 2727
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 2828
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2830
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->delay_show_ui_timeout:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
