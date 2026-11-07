.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadDemoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
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

    .line 1462
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

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

    .line 1462
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1466
    array-length v1, v1

    .line 1478
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1479
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1480
    const-string v4, "2024-11-16 00:00"

    invoke-virtual {v1, v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 1481
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    const/4 v4, 0x7

    int-to-long v4, v4

    const-wide/16 v6, 0x5a0

    mul-long v4, v4, v6

    .line 1486
    new-instance v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 1488
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    const/4 v15, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    int-to-long v12, v8

    cmp-long v16, v12, v4

    if-gez v16, :cond_a

    const-wide/16 v16, 0x3c

    mul-long v18, v12, v16

    move-wide/from16 v20, v4

    const/16 p1, 0x0

    add-long v3, v1, v18

    mul-int/lit8 v5, v8, 0x64

    move-wide/from16 v18, v6

    int-to-long v6, v5

    .line 1495
    div-long v6, v6, v20

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Integer;

    aput-object v5, v6, p1

    invoke-virtual {v0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->publishProgress([Ljava/lang/Object;)V

    .line 1496
    rem-long v12, v12, v18

    .line 1497
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadDemoTask posInDay "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    const/16 v5, 0x64

    .line 1499
    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-le v9, v5, :cond_0

    const/16 v5, 0x3c

    if-ge v10, v5, :cond_0

    add-int/lit8 v10, v10, 0x1

    move v7, v9

    move v5, v10

    goto/16 :goto_6

    :cond_0
    const/16 v5, 0x1e0

    int-to-long v9, v5

    const-wide/16 v22, 0x4ec

    cmp-long v5, v12, v9

    if-ltz v5, :cond_5

    cmp-long v5, v12, v22

    if-lez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const-wide/16 v9, 0x21c

    const/16 v5, 0x8b

    cmp-long v7, v12, v9

    if-lez v7, :cond_2

    const-wide/16 v9, 0x258

    cmp-long v7, v12, v9

    if-gez v7, :cond_2

    .line 1520
    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v9, v5, 0x65

    .line 1521
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "loadDemoTask 9:00 - 10:00 type "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    :goto_1
    move v7, v9

    goto/16 :goto_5

    :cond_2
    const-wide/16 v9, 0x348

    cmp-long v7, v12, v9

    if-lez v7, :cond_3

    const-wide/16 v9, 0x384

    cmp-long v7, v12, v9

    if-gez v7, :cond_3

    .line 1523
    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v9, v5, 0x65

    .line 1524
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "loadDemoTask 14:00 - 15:00 type "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-wide/16 v9, 0x438

    cmp-long v7, v12, v9

    if-lez v7, :cond_4

    const-wide/16 v9, 0x474

    cmp-long v7, v12, v9

    if-gez v7, :cond_4

    .line 1526
    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v9, v5, 0x65

    .line 1527
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "loadDemoTask 18:00 - 19:00 type "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    :goto_2
    const/16 v5, 0x28

    const-wide/16 v9, 0x528

    const/4 v7, 0x2

    cmp-long v24, v12, v22

    if-lez v24, :cond_6

    cmp-long v22, v12, v9

    if-gez v22, :cond_6

    :goto_3
    const/4 v5, 0x0

    const/16 v6, 0x28

    goto :goto_6

    :cond_6
    const/16 v22, 0x63

    cmp-long v23, v12, v9

    if-lez v23, :cond_7

    const-wide/16 v9, 0x564

    cmp-long v23, v12, v9

    if-gez v23, :cond_7

    :goto_4
    const/4 v5, 0x0

    const/16 v6, 0x63

    goto :goto_6

    :cond_7
    const-wide/16 v9, 0x0

    cmp-long v23, v12, v9

    if-lez v23, :cond_8

    cmp-long v9, v12, v16

    if-gez v9, :cond_8

    goto :goto_3

    :cond_8
    const-wide/16 v9, 0x78

    cmp-long v5, v12, v9

    if-lez v5, :cond_9

    const-wide/16 v9, 0xb4

    cmp-long v5, v12, v9

    if-gez v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    const/4 v5, 0x0

    .line 1531
    :goto_6
    invoke-virtual {v11, v3, v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 1532
    const-string v3, "+0800"

    invoke-virtual {v11, v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {v11, v7}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 1534
    invoke-virtual {v11, v6}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    int-to-double v3, v6

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v9

    double-to-int v3, v3

    .line 1535
    invoke-virtual {v11, v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    .line 1536
    invoke-virtual {v11, v6}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 1538
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v9, "02:0B:4C:D8:B2:49"

    const-string v10, ""

    move/from16 v25, v8

    move-object v8, v3

    move/from16 v3, v25

    invoke-virtual/range {v8 .. v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertSportHistory(Ljava/lang/String;Ljava/lang/String;Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;ZZ)J

    add-int/lit8 v8, v3, 0x1

    move v10, v5

    move v9, v7

    move-wide/from16 v6, v18

    move-wide/from16 v4, v20

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
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

    .line 1462
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1547
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 1551
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadDemoTask "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

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

    .line 1462
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
