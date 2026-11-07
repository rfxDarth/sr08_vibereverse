.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initSportTask"
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
.field protected alAv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;"
        }
    .end annotation
.end field

.field protected alSportInitSport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field protected arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected calor:I

.field protected chartEnd:J

.field protected chartStart:J

.field protected columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

.field protected time:I


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4868
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 4869
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->time:I

    .line 4870
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->calor:I

    const-wide/16 v0, 0x0

    .line 4874
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartStart:J

    const-wide/16 v0, 0x59f

    .line 4875
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartEnd:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 4868
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

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

    .line 4868
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 14

    .line 4880
    :try_start_0
    array-length p1, p1

    .line 4884
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4885
    const-string p1, ""

    return-object p1

    .line 4887
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    .line 4888
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v3

    const-wide/16 v2, 0x1

    sub-long v11, v5, v2

    .line 4889
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v5

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual/range {v5 .. v12}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    const/16 p1, 0x5a0

    .line 4890
    new-array v2, p1, [I

    .line 4891
    new-array v3, p1, [I

    const/16 v4, 0x8b

    .line 4892
    new-array v5, v4, [I

    .line 4893
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->time:I

    .line 4894
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->calor:I

    const/4 v6, 0x0

    .line 4895
    :goto_0
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 4896
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v7

    add-int/lit8 v7, v7, -0x65

    .line 4897
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-int v8, v11

    div-int/lit8 v8, v8, 0x3c

    .line 4898
    iget-object v11, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v11

    .line 4899
    aput v7, v2, v8

    .line 4900
    aput v11, v3, v8

    .line 4901
    aget v8, v5, v7

    add-int/2addr v8, v11

    aput v8, v5, v7

    .line 4902
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->calor:I

    add-int/2addr v7, v11

    iput v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->calor:I

    if-lez v11, :cond_1

    .line 4904
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->time:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->time:I

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4908
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    .line 4910
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4911
    const-string v8, "mode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    const-string v8, "calor"

    aget v11, v5, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4913
    const-string v8, "color"

    iget-object v11, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)[I

    move-result-object v11

    aget v11, v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4914
    const-string v8, "name"

    iget-object v11, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)[I

    move-result-object v11

    aget v11, v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4915
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4917
    :cond_3
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->arrayList:Ljava/util/ArrayList;

    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$1;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4927
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4928
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4929
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    .line 4930
    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v6

    if-nez v6, :cond_4

    .line 4931
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 4938
    :cond_4
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_3
    if-ltz v4, :cond_5

    .line 4939
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v6

    if-nez v6, :cond_5

    .line 4940
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    const-wide/16 v6, 0x0

    .line 4945
    iput-wide v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartStart:J

    const-wide/16 v6, 0x59f

    .line 4946
    iput-wide v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartEnd:J

    .line 4947
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4948
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v6, v9

    const-wide/16 v11, 0x3c

    div-long/2addr v6, v11

    iput-wide v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartStart:J

    .line 4949
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alSportInitSport:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v6, v9

    div-long/2addr v6, v11

    iput-wide v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartEnd:J

    .line 4952
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alAv:Ljava/util/ArrayList;

    .line 4953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->columns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_a

    int-to-long v6, v1

    .line 4955
    iget-wide v8, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartStart:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_7

    iget-wide v10, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->chartEnd:J

    cmp-long v4, v6, v10

    if-eqz v4, :cond_7

    const-wide/16 v12, 0x2

    div-long/2addr v8, v12

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-nez v4, :cond_8

    .line 4956
    :cond_7
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->alAv:Ljava/util/ArrayList;

    new-instance v6, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v7, v1

    invoke-direct {v6, v7}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4959
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4960
    aget v6, v2, v1

    .line 4961
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)[I

    move-result-object v8

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 4962
    aget v8, v3, v1

    if-nez v8, :cond_9

    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    aget v6, v5, v6

    .line 4963
    :goto_5
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    int-to-float v6, v6

    invoke-direct {v8, v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4964
    new-instance v6, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v6, v4}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 4965
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4976
    :catch_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initStep runOnUiThread Exception occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_6

    .line 4973
    :catch_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initStep runOnUiThread IllegalStateException occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_6

    .line 4970
    :catch_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initStep runOnUiThread NullPointerException occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    :cond_a
    :goto_6
    const/4 p1, 0x0

    return-object p1
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

    .line 4868
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 4983
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4985
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->delay_show_ui_timeout:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
