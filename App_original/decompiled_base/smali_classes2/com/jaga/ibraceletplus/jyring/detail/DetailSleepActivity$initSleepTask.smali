.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;
.super Landroid/os/AsyncTask;
.source "DetailSleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;
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

.field protected countDeep:I

.field protected countLight:I

.field protected countTotal:I

.field protected countWake:I

.field protected dateMode:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

.field protected timeSleepEnd:Ljava/lang/String;

.field protected timeSleepStart:Ljava/lang/String;

.field protected totalDays:I


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 524
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    .line 525
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    .line 526
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    .line 527
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    .line 529
    const-string p1, "00:00"

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->timeSleepStart:Ljava/lang/String;

    .line 530
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->timeSleepEnd:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;)V
    .locals 0

    .line 523
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V

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

    .line 523
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 536
    array-length v2, v1

    .line 537
    const-string v3, ""

    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 540
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    .line 541
    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    .line 542
    aget-object v9, v1, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    .line 543
    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 544
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 546
    iput v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->totalDays:I

    const/16 v1, 0x5a0

    if-eq v9, v1, :cond_1

    const/16 v1, 0x18

    if-ne v9, v1, :cond_2

    .line 548
    :cond_1
    iput v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->totalDays:I

    .line 550
    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v1

    int-to-long v13, v1

    add-long v19, v9, v13

    .line 551
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    add-int/2addr v5, v7

    invoke-static {v1, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v11

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v4, v9

    const-wide/16 v9, 0x1

    sub-long v21, v4, v9

    .line 552
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v15, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->macid:Ljava/lang/String;

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->mid:Ljava/lang/String;

    const/16 v18, 0x2

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    invoke-virtual/range {v15 .. v22}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    .line 557
    new-array v4, v2, [I

    .line 558
    new-array v5, v2, [I

    .line 559
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 560
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v4

    sub-long v4, v4, v19

    long-to-int v1, v4

    div-int/lit8 v1, v1, 0x3c

    .line 561
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v4

    sub-long v4, v4, v19

    long-to-int v5, v4

    div-int/lit8 v5, v5, 0x3c

    sub-int v4, v5, v1

    add-int/lit8 v7, v4, 0x1

    .line 562
    new-array v7, v7, [I

    .line 564
    new-array v8, v8, [I

    aput v2, v8, v2

    aput v4, v8, v6

    .line 565
    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->timeSleepStart:Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .line 566
    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->timeSleepEnd:Ljava/lang/String;

    move-object v4, v7

    goto :goto_0

    :cond_3
    move-object v8, v5

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    .line 568
    :goto_1
    array-length v9, v4

    if-ge v7, v9, :cond_4

    .line 569
    aput v2, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 573
    :cond_4
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    .line 574
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    .line 575
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    .line 576
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    const/4 v7, 0x0

    .line 578
    :goto_2
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x50

    if-ge v7, v9, :cond_8

    .line 579
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v11

    sub-long v11, v11, v19

    long-to-int v9, v11

    div-int/lit8 v9, v9, 0x3c

    sub-int/2addr v9, v1

    .line 580
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v11

    .line 581
    aput v11, v4, v9

    if-lt v11, v10, :cond_5

    .line 585
    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    goto :goto_3

    :cond_5
    if-lt v11, v6, :cond_6

    .line 587
    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    goto :goto_3

    :cond_6
    if-ltz v11, :cond_7

    .line 589
    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 591
    :cond_8
    iget v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v7

    .line 592
    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    if-gez v5, :cond_9

    .line 594
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    goto :goto_4

    :cond_9
    if-lez v5, :cond_a

    add-int/2addr v5, v6

    .line 596
    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    .line 599
    :cond_a
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 600
    :goto_5
    array-length v9, v8

    if-ge v7, v9, :cond_c

    .line 601
    aget v9, v8, v7

    .line 603
    array-length v11, v8

    sub-int/2addr v11, v6

    if-ne v7, v11, :cond_b

    add-int/lit8 v11, v9, 0x1

    goto :goto_6

    :cond_b
    move v11, v9

    .line 606
    :goto_6
    new-instance v12, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v9, v9

    invoke-direct {v12, v9}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    add-int/2addr v11, v1

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 609
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 610
    :goto_7
    array-length v8, v4

    if-ge v2, v8, :cond_10

    .line 611
    aget v8, v4, v2

    add-int v9, v2, v1

    .line 612
    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v9

    .line 614
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-lt v8, v10, :cond_d

    .line 616
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060277

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/high16 v13, 0x40400000    # 3.0f

    invoke-direct {v8, v13, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 617
    invoke-virtual {v8, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v13, 0x7f130426

    invoke-virtual {v9, v13}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v8

    .line 616
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    if-lt v8, v6, :cond_e

    .line 619
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060278

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v8, v13, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 620
    invoke-virtual {v8, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v13, 0x7f13042c

    invoke-virtual {v9, v13}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v8

    .line 619
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    if-ltz v8, :cond_f

    .line 622
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060276

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v8, v13, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 623
    invoke-virtual {v8, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v13, 0x7f130434

    invoke-virtual {v9, v13}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v8

    .line 622
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_f
    :goto_8
    new-instance v8, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v8, v11}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    invoke-virtual {v8, v6}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    move-result-object v8

    invoke-virtual {v8, v6}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 629
    :cond_10
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 630
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 631
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 632
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-object v3
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

    .line 523
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8

    .line 639
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 641
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 642
    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/4 v0, 0x0

    .line 643
    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 644
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 646
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleep:Landroid/widget/TextView;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "%1$02d:%2$02d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleep:Landroid/widget/TextView;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v4

    aput-object v5, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleep:Landroid/widget/TextView;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v4

    aput-object v5, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    div-int/lit8 v1, p1, 0x3c

    .line 651
    rem-int/lit8 p1, p1, 0x3c

    .line 652
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v5, 0x7f130122

    invoke-virtual {v3, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v1, :cond_0

    .line 654
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v5, 0x7f130123

    invoke-virtual {v3, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 655
    :cond_0
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v6, 0x7f130124

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-lez p1, :cond_1

    .line 657
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v6, 0x7f130125

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 659
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v3, v7, v0

    aput-object p1, v7, v2

    const/4 p1, 0x3

    aput-object v5, v7, p1

    const-string p1, "%d %s %d %s"

    invoke-static {v6, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 660
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvTotalSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepStartTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->timeSleepStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepEndTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->timeSleepEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    const/16 v0, 0x1e0

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    const/16 v1, 0x78

    if-lt v0, v1, :cond_2

    .line 665
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepQuality:Landroid/widget/TextView;

    const v0, 0x7f13040c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    .line 668
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepQuality:Landroid/widget/TextView;

    const v0, 0x7f13040d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 671
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepQuality:Landroid/widget/TextView;

    const v0, 0x7f13040b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 674
    :goto_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    if-lez p1, :cond_4

    .line 675
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countDeep:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->totalDays:I

    div-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x168

    div-int/2addr v0, p1

    .line 676
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepDeep:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 677
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countLight:I

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->totalDays:I

    div-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    div-int/2addr p1, v0

    .line 678
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepLight:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 679
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countWake:I

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->totalDays:I

    div-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->countTotal:I

    div-int/2addr p1, v0

    .line 680
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepAwake:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 683
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepDeep:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 684
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepLight:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 685
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepAwake:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 689
    :goto_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 690
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 691
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 692
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 694
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1, v4}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 695
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

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

    .line 523
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
