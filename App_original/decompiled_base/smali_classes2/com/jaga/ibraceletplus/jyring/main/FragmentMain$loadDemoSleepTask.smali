.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadDemoSleepTask"
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

    .line 1564
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 1564
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

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

    .line 1564
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1568
    array-length v1, v1

    .line 1575
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1576
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1577
    const-string v4, "2025-10-13 00:00"

    invoke-virtual {v1, v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 1578
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    const-wide/16 v4, 0x5a0

    long-to-float v6, v4

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v6, v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    .line 1583
    new-instance v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 1585
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    const/4 v15, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    int-to-long v12, v8

    cmp-long v16, v12, v6

    if-gez v16, :cond_b

    const/16 p1, 0x0

    mul-int/lit8 v3, v8, 0x3c

    move-wide/from16 v16, v4

    int-to-long v4, v3

    add-long/2addr v4, v1

    mul-int/lit8 v3, v8, 0x64

    move-wide/from16 v18, v1

    int-to-long v1, v3

    .line 1592
    div-long/2addr v1, v6

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Integer;

    aput-object v1, v2, p1

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->publishProgress([Ljava/lang/Object;)V

    .line 1593
    rem-long v12, v12, v16

    .line 1594
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadDemoTask posInDay "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    const/16 v1, 0x64

    .line 1596
    invoke-virtual {v14, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-le v9, v1, :cond_0

    const/16 v1, 0x3c

    if-ge v10, v1, :cond_0

    add-int/lit8 v10, v10, 0x1

    move v1, v9

    move v3, v10

    goto/16 :goto_6

    :cond_0
    const/16 v1, 0x1e0

    int-to-long v9, v1

    const-wide/16 v20, 0x4ec

    cmp-long v1, v12, v9

    if-ltz v1, :cond_4

    cmp-long v1, v12, v20

    if-lez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-wide/16 v9, 0x21c

    const/16 v1, 0x8b

    cmp-long v3, v12, v9

    if-lez v3, :cond_2

    const-wide/16 v9, 0x258

    cmp-long v3, v12, v9

    if-gez v3, :cond_2

    .line 1623
    invoke-virtual {v14, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v9, v1, 0x65

    .line 1624
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "loadDemoTask 9:00 - 10:00 type "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    :goto_1
    move v1, v9

    goto :goto_3

    :cond_2
    const-wide/16 v9, 0x348

    cmp-long v3, v12, v9

    if-lez v3, :cond_3

    const-wide/16 v9, 0x384

    cmp-long v3, v12, v9

    if-gez v3, :cond_3

    .line 1626
    invoke-virtual {v14, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v9, v1, 0x65

    .line 1627
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "loadDemoTask 14:00 - 15:00 type "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-wide/16 v9, 0x438

    cmp-long v3, v12, v9

    if-lez v3, :cond_5

    const-wide/16 v9, 0x474

    cmp-long v3, v12, v9

    if-gez v3, :cond_5

    .line 1629
    invoke-virtual {v14, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v9, v1, 0x65

    .line 1630
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "loadDemoTask 18:00 - 19:00 type "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    const-wide/16 v1, 0x591

    cmp-long v3, v12, v1

    if-ltz v3, :cond_6

    cmp-long v1, v12, v16

    if-gtz v1, :cond_6

    const/16 v2, 0xa

    :cond_5
    const/4 v1, 0x1

    :goto_3
    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    const/16 v2, 0x28

    const-wide/16 v9, 0x528

    const/4 v1, 0x2

    cmp-long v3, v12, v20

    if-lez v3, :cond_7

    cmp-long v3, v12, v9

    if-gez v3, :cond_7

    :goto_4
    goto :goto_3

    :cond_7
    const/16 v3, 0x63

    cmp-long v20, v12, v9

    if-lez v20, :cond_8

    const-wide/16 v9, 0x564

    cmp-long v20, v12, v9

    if-gez v20, :cond_8

    :goto_5
    const/16 v2, 0x63

    goto :goto_3

    :cond_8
    const-wide/16 v9, 0x0

    cmp-long v20, v12, v9

    if-lez v20, :cond_9

    const-wide/16 v9, 0x3c

    cmp-long v20, v12, v9

    if-gez v20, :cond_9

    goto :goto_4

    :cond_9
    const-wide/16 v9, 0x78

    cmp-long v2, v12, v9

    if-lez v2, :cond_a

    const-wide/16 v9, 0xb4

    cmp-long v2, v12, v9

    if-gez v2, :cond_a

    goto :goto_5

    :cond_a
    const/16 v2, 0x14

    goto :goto_3

    .line 1634
    :goto_6
    invoke-virtual {v11, v4, v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 1635
    const-string v4, "+0800"

    invoke-virtual {v11, v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 1637
    invoke-virtual {v11, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    int-to-double v4, v2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v9

    double-to-int v4, v4

    .line 1638
    invoke-virtual {v11, v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    .line 1639
    invoke-virtual {v11, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 1641
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v9, "02:42:8A:B2:F8:9E"

    const-string v10, ""

    move/from16 v22, v8

    move-object v8, v2

    move/from16 v2, v22

    invoke-virtual/range {v8 .. v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertSportHistory(Ljava/lang/String;Ljava/lang/String;Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;ZZ)J

    add-int/lit8 v8, v2, 0x1

    move v9, v1

    move v10, v3

    move-wide/from16 v4, v16

    move-wide/from16 v1, v18

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
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

    .line 1564
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1650
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 1654
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

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

    .line 1564
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
