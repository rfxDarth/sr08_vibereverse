.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentData;
.super Lcom/jaga/ibraceletplus/jyring/BaseFragment;
.source "FragmentData.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c8
    .end annotation
.end field

.field public colorDeep:I
    .annotation runtime Lbutterknife/BindColor;
        value = 0x7f060025
    .end annotation
.end field

.field public colorLight:I
    .annotation runtime Lbutterknife/BindColor;
        value = 0x7f060026
    .end annotation
.end field

.field public colorWake:I
    .annotation runtime Lbutterknife/BindColor;
        value = 0x7f06035a
    .end annotation
.end field

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private indexType:I

.field lcvHeart:Llecho/lib/hellocharts/view/LineChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a022a
    .end annotation
.end field

.field lcvSport:Llecho/lib/hellocharts/view/LineChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a022e
    .end annotation
.end field

.field lcvStep:Llecho/lib/hellocharts/view/LineChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a022f
    .end annotation
.end field

.field llChart:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024a
    .end annotation
.end field

.field llDate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024e
    .end annotation
.end field

.field private macid:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field tvChartHeart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0475
    .end annotation
.end field

.field tvChartSleep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0477
    .end annotation
.end field

.field tvChartSport:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0478
    .end annotation
.end field

.field tvChartStep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0479
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;-><init>()V

    .line 55
    const-string v0, "FragmentData"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->TAG:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->macid:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->mid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->indexType:I

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->indexType:I

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->indexType:I

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;III)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initAll(III)V

    return-void
.end method

.method private initAll(III)V
    .locals 9

    .line 432
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "P_LAST_TIME_DATA"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvStep:Llecho/lib/hellocharts/view/LineChartView;

    const/4 v5, 0x1

    move-object v3, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initChart(Llecho/lib/hellocharts/view/LineChartView;IIII)I

    move-result p1

    move-object v0, v3

    move v3, v6

    move v4, v7

    move v5, v8

    .line 434
    iget-object p2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartStep:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p1, 0x7f130549

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    const/4 v2, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initChart(Llecho/lib/hellocharts/view/LineChartView;IIII)I

    move-result p1

    .line 438
    iget-object p2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartHeart:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p1, 0x7f130541

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/view/ColumnChartView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0x18

    if-ne v4, p1, :cond_0

    .line 441
    invoke-direct {p0, v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initSleepHour(II)V

    return-void

    :cond_0
    const/4 p1, 0x7

    if-eq v4, p1, :cond_2

    const/16 p1, 0x1e

    if-ne v4, p1, :cond_1

    goto :goto_0

    .line 445
    :cond_1
    iget-object p1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/view/ColumnChartView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 443
    :cond_2
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initSleepDay(II)V

    return-void
.end method

.method private initChart(Llecho/lib/hellocharts/view/LineChartView;IIII)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p4

    .line 451
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move/from16 v3, p3

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v11, 0x3e8

    div-long v6, v2, v11

    .line 452
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v13, 0x1

    invoke-static {v2, v13}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long v8, v2, v11

    .line 453
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->macid:Ljava/lang/String;

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->mid:Ljava/lang/String;

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v2

    .line 456
    new-array v3, v10, [F

    .line 457
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    .line 459
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 462
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 466
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v19, 0x1

    if-ge v11, v8, :cond_7

    .line 467
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v20

    .line 468
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v8

    .line 469
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual/range {v22 .. v22}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    .line 470
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual/range {v22 .. v22}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getHeartrate()I

    move-result v14

    move/from16 v23, v14

    sub-long v13, v20, v6

    long-to-int v14, v13

    .line 473
    div-int v14, v14, p5

    .line 475
    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->indexType:I

    move-object/from16 v24, v2

    const/4 v2, 0x3

    if-ne v13, v2, :cond_2

    .line 476
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    mul-long v13, v20, v17

    .line 477
    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v13, 0x2

    .line 478
    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v2, v9, :cond_1

    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, -0x1

    move v14, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v10, -0x1

    sub-int v2, v9, v2

    sub-int/2addr v13, v2

    move v14, v13

    :cond_2
    :goto_2
    const/4 v2, -0x1

    if-ne v5, v2, :cond_5

    if-lez v23, :cond_4

    .line 489
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_3

    .line 492
    aget v8, v3, v14

    add-int/lit8 v13, v2, -0x1

    int-to-float v13, v13

    mul-float v8, v8, v13

    move/from16 v13, v23

    move-object/from16 v23, v3

    int-to-float v3, v13

    add-float/2addr v8, v3

    int-to-float v2, v2

    div-float/2addr v8, v2

    aput v8, v23, v14

    goto :goto_3

    :cond_3
    move/from16 v13, v23

    move-object/from16 v23, v3

    int-to-float v2, v13

    .line 494
    aput v2, v23, v14

    :goto_3
    cmp-long v2, v20, v15

    if-lez v2, :cond_6

    move v12, v13

    move-wide/from16 v15, v20

    goto :goto_4

    :cond_4
    move-object/from16 v23, v3

    goto :goto_4

    :cond_5
    move-object/from16 v23, v3

    .line 503
    aget v2, v23, v14

    int-to-float v3, v8

    add-float/2addr v2, v3

    aput v2, v23, v14

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v23

    move-object/from16 v2, v24

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v23, v3

    .line 507
    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v2

    .line 508
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/Line;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v3

    .line 509
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 510
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v6

    invoke-virtual {v6}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v6

    .line 511
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v10, :cond_d

    .line 516
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    sub-int v11, v8, v10

    const/4 v13, 0x1

    add-int/2addr v11, v13

    invoke-static {v9, v11}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v9

    .line 517
    new-instance v14, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v15, v8

    invoke-direct {v14, v15}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    .line 518
    iget v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->indexType:I

    if-ne v7, v13, :cond_8

    .line 519
    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateWeek(Ljava/util/Date;)I

    move-result v7

    .line 520
    sget-object v9, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    aget-object v7, v9, v7

    invoke-virtual {v14, v7}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, -0x1

    const/4 v9, 0x3

    const/4 v13, 0x2

    goto :goto_7

    :cond_8
    const/4 v13, 0x2

    if-ne v7, v13, :cond_9

    .line 522
    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, -0x1

    const/4 v9, 0x3

    goto :goto_7

    :cond_9
    const/4 v9, 0x3

    if-ne v7, v9, :cond_a

    .line 524
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v7, v11}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v7

    .line 525
    sget-object v11, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->month:[I

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v7

    aget v7, v11, v7

    invoke-virtual {v0, v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 527
    :cond_a
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v7, -0x1

    :goto_7
    if-eq v5, v7, :cond_b

    int-to-float v11, v12

    .line 532
    aget v12, v23, v8

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v12, v11

    .line 535
    :cond_b
    aget v11, v23, v8

    cmpl-float v14, v11, v4

    if-lez v14, :cond_c

    move v4, v11

    .line 537
    :cond_c
    new-instance v11, Llecho/lib/hellocharts/model/PointValue;

    aget v14, v23, v8

    float-to-int v14, v14

    int-to-float v14, v14

    invoke-direct {v11, v15, v14}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    aget v14, v23, v8

    float-to-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v11, v15, v14}, Llecho/lib/hellocharts/model/PointValue;->setTarget(FF)Llecho/lib/hellocharts/model/PointValue;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 541
    :cond_d
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v3

    .line 542
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    new-instance v6, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v4

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    invoke-direct {v6, v7}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v6, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v4

    div-float/2addr v7, v8

    invoke-direct {v6, v7}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v6, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v7, v7, v4

    div-float/2addr v7, v8

    invoke-direct {v6, v7}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {v3, v5}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 547
    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 549
    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    .line 550
    iput v4, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/4 v3, 0x0

    .line 551
    iput v3, v2, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 552
    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/LineChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return v12
.end method

.method private initData()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "memberid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->mid:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->macid:Ljava/lang/String;

    return-void

    .line 82
    :cond_0
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->macid:Ljava/lang/String;

    return-void
.end method

.method private initSleepDay(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 312
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v6, 0x5460

    sub-long v12, v2, v6

    .line 313
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    div-long/2addr v8, v4

    sub-long v14, v8, v6

    .line 314
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->macid:Ljava/lang/String;

    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->mid:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-virtual/range {v8 .. v15}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v2

    .line 315
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartSleep:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v8, 0x7f13051c

    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v8, 0x7f13051d

    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v6}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 319
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v7

    invoke-virtual {v7}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v7

    .line 320
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 321
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v8

    .line 322
    invoke-interface {v8}, Ljava/util/List;->clear()V

    mul-int/lit16 v9, v1, 0x5a0

    .line 324
    new-array v10, v9, [I

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_0

    const/4 v15, -0x1

    .line 326
    aput v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 328
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 329
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v15

    move-wide/from16 v17, v4

    sub-long v4, v15, v12

    long-to-int v5, v4

    div-int/lit8 v5, v5, 0x3c

    .line 330
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v4

    .line 334
    aput v4, v10, v5

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v4, v17

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x7

    if-ge v2, v9, :cond_7

    .line 345
    rem-int/lit16 v3, v2, 0x5a0

    const/16 v11, 0x59f

    if-eq v3, v11, :cond_5

    .line 346
    aget v3, v10, v2

    if-nez v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_2
    :goto_3
    move/from16 v19, v9

    move-object/from16 v20, v10

    goto/16 :goto_5

    :cond_3
    const/16 v11, 0x32

    if-lez v3, :cond_4

    if-ge v3, v11, :cond_4

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    if-lt v3, v11, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 354
    :cond_5
    new-instance v3, Ljava/util/Date;

    mul-int/lit8 v11, v2, 0x3c

    move/from16 v19, v9

    move-object/from16 v20, v10

    int-to-long v9, v11

    add-long/2addr v9, v12

    mul-long v9, v9, v17

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    if-ne v1, v15, :cond_6

    .line 356
    new-instance v9, Llecho/lib/hellocharts/model/AxisValue;

    div-int/lit16 v10, v2, 0x5a0

    int-to-float v10, v10

    invoke-direct {v9, v10}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    sget-object v10, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateWeek(Ljava/util/Date;)I

    move-result v3

    aget-object v3, v10, v3

    invoke-virtual {v9, v3}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 358
    :cond_6
    new-instance v9, Llecho/lib/hellocharts/model/AxisValue;

    div-int/lit16 v10, v2, 0x5a0

    int-to-float v10, v10

    invoke-direct {v9, v10}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v9, Llecho/lib/hellocharts/model/SubcolumnValue;

    int-to-float v5, v5

    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorDeep:I

    invoke-direct {v9, v5, v10}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v5, Llecho/lib/hellocharts/model/SubcolumnValue;

    int-to-float v9, v14

    iget v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorLight:I

    invoke-direct {v5, v9, v10}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v5, Llecho/lib/hellocharts/model/SubcolumnValue;

    int-to-float v4, v4

    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorWake:I

    invoke-direct {v5, v4, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v4, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v4, v3}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 366
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v19

    move-object/from16 v10, v20

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 402
    invoke-virtual {v6, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    const/4 v2, 0x1

    .line 403
    invoke-virtual {v6, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setStacked(Z)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 404
    invoke-virtual {v6, v8}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    if-ne v1, v15, :cond_8

    const v1, 0x3e5b6db7

    .line 406
    invoke-virtual {v6, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    goto :goto_6

    :cond_8
    const v1, 0x3edb6db7

    .line 408
    invoke-virtual {v6, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 412
    :goto_6
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    .line 413
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 414
    invoke-virtual {v6, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 416
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 418
    new-instance v3, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x43700000    # 240.0f

    invoke-direct {v3, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    const-string v4, "4"

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v3, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x43f00000    # 480.0f

    invoke-direct {v3, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    const-string v4, "8"

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 422
    invoke-virtual {v6, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 423
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 425
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    const/4 v2, 0x0

    .line 426
    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    const/high16 v2, 0x44340000    # 720.0f

    .line 427
    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 428
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method private initSleepHour(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 227
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v5, 0x5460

    sub-long v11, v1, v5

    .line 228
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    div-long/2addr v7, v3

    sub-long v13, v7, v5

    .line 229
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->mid:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 231
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v4

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v4

    .line 233
    invoke-interface {v4}, Ljava/util/List;->clear()V

    mul-int/lit8 v5, p2, 0x3c

    .line 235
    new-array v6, v5, [I

    const/4 v8, 0x0

    :goto_0
    const/4 v9, -0x1

    if-ge v8, v5, :cond_0

    .line 237
    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 242
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 243
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v14}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v14

    sub-long/2addr v14, v11

    long-to-int v15, v14

    div-int/lit8 v15, v15, 0x3c

    .line 244
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v14}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v14

    aput v14, v6, v15

    if-nez v8, :cond_1

    move v10, v15

    goto :goto_2

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v2

    if-ne v8, v14, :cond_2

    move v13, v15

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 252
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_3
    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v14, 0x40000000    # 2.0f

    if-ge v8, v5, :cond_a

    .line 254
    rem-int/lit16 v7, v8, 0xb4

    if-nez v7, :cond_4

    .line 255
    new-instance v7, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v15, v8

    invoke-direct {v7, v15}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    div-int/lit8 v15, v8, 0x3c

    add-int/lit8 v15, v15, 0x12

    rem-int/lit8 v15, v15, 0x18

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 259
    aget v15, v6, v8

    if-lt v8, v10, :cond_5

    if-gt v8, v13, :cond_5

    if-ne v15, v9, :cond_5

    const/4 v15, 0x0

    :cond_5
    const/16 v9, 0x50

    if-lt v15, v9, :cond_6

    .line 271
    new-instance v9, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget v14, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorDeep:I

    invoke-direct {v9, v12, v14}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    if-lt v15, v2, :cond_7

    .line 273
    new-instance v9, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorLight:I

    invoke-direct {v9, v14, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    if-ltz v15, :cond_8

    .line 275
    new-instance v9, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->colorWake:I

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v9, v14, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_8
    :goto_4
    new-instance v9, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v9}, Llecho/lib/hellocharts/model/Column;-><init>()V

    .line 279
    invoke-virtual {v9, v7}, Llecho/lib/hellocharts/model/Column;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Column;

    .line 280
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v15, :cond_9

    add-int/lit8 v11, v11, 0x1

    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/4 v9, -0x1

    goto :goto_3

    .line 286
    :cond_a
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->tvChartSleep:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v5, v11, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v5, 0x7f13051c

    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v5, 0x7f13051d

    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 289
    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 290
    invoke-virtual {v3, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 292
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v5, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v5, v2}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    const v2, 0x7f130434

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v2, v14}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    const v5, 0x7f13042c

    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v2, v12}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    const v5, 0x7f130426

    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 300
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 301
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    .line 303
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 304
    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/4 v2, 0x0

    .line 305
    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 308
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method private initView()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llDate:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llDate:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->lcvStep:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/16 v2, 0xe10

    const/16 v3, 0x18

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 148
    :goto_1
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llChart:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 149
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llChart:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v9, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v9}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    const/4 v10, -0x1

    .line 157
    invoke-virtual {v9, v10}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 158
    invoke-virtual {v9, v10}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 159
    const-string v11, "#7fffffff"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 160
    invoke-virtual {v9, v8}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 163
    new-instance v8, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v8}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06047e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 165
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 166
    invoke-virtual {v8, v5}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    .line 167
    invoke-virtual {v8, v5}, Llecho/lib/hellocharts/model/Axis;->setInside(Z)Llecho/lib/hellocharts/model/Axis;

    const/4 v11, 0x4

    .line 168
    invoke-virtual {v8, v11}, Llecho/lib/hellocharts/model/Axis;->setLineDash(I)V

    .line 169
    invoke-virtual {v8, v5}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 170
    invoke-virtual {v8, v0}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 172
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Llecho/lib/hellocharts/view/LineChartView;

    const-string v12, "LineChartView"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 173
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Llecho/lib/hellocharts/view/LineChartView;

    .line 175
    new-instance v11, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v11}, Llecho/lib/hellocharts/model/Line;-><init>()V

    .line 176
    invoke-virtual {v11, v7}, Llecho/lib/hellocharts/model/Line;->setValues(Ljava/util/List;)V

    .line 177
    invoke-virtual {v11, v10}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    .line 178
    invoke-virtual {v11, v5}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    .line 179
    invoke-virtual {v11, v4}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    .line 180
    invoke-virtual {v11, v5}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 181
    invoke-virtual {v11, v5}, Llecho/lib/hellocharts/model/Line;->setHasGradientToTransparent(Z)Llecho/lib/hellocharts/model/Line;

    .line 183
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v10, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {v10}, Llecho/lib/hellocharts/model/LineChartData;-><init>()V

    .line 187
    invoke-virtual {v10, v7}, Llecho/lib/hellocharts/model/LineChartData;->setLines(Ljava/util/List;)Llecho/lib/hellocharts/model/LineChartData;

    .line 188
    invoke-virtual {v10, v9}, Llecho/lib/hellocharts/model/LineChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 189
    invoke-virtual {v10, v8}, Llecho/lib/hellocharts/model/LineChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 191
    invoke-virtual {v6, v10}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 192
    invoke-virtual {v6, v0}, Llecho/lib/hellocharts/view/LineChartView;->setZoomEnabled(Z)V

    goto :goto_2

    .line 194
    :cond_1
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Llecho/lib/hellocharts/view/ColumnChartView;

    .line 195
    new-instance v7, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v7}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    .line 196
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {v7, v10}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 198
    invoke-virtual {v7, v9}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 199
    invoke-virtual {v8, v0}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 201
    invoke-virtual {v7, v8}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 203
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 204
    invoke-virtual {v6, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setZoomEnabled(Z)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 207
    :cond_2
    invoke-direct {p0, v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initAll(III)V

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "P_LAST_TIME_DATA"

    const-string v7, "0"

    invoke-virtual {v1, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 212
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "P_LAST_TIME_SYNC"

    invoke-virtual {v1, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-ltz v1, :cond_7

    .line 214
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->indexType:I

    if-nez v1, :cond_4

    .line 215
    invoke-direct {p0, v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initAll(III)V

    return-void

    :cond_4
    const v0, 0x15180

    if-ne v1, v5, :cond_5

    const/4 v1, -0x6

    const/4 v2, 0x7

    .line 217
    invoke-direct {p0, v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initAll(III)V

    return-void

    :cond_5
    if-ne v1, v4, :cond_6

    const/16 v1, -0x1d

    const/16 v2, 0x1e

    .line 219
    invoke-direct {p0, v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initAll(III)V

    return-void

    :cond_6
    const/4 v0, 0x3

    if-ne v1, v0, :cond_7

    const/16 v0, 0xc

    const v1, 0x278d00

    const/16 v2, -0x16c

    .line 221
    invoke-direct {p0, v2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initAll(III)V

    :cond_7
    return-void
.end method


# virtual methods
.method OnClickivShare()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a020e
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ImageUtil;->takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "/JRing/imgs"

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "share.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/ImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->view:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f0d0097

    const/4 p3, 0x0

    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->view:Landroid/view/View;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 65
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 67
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->setStatusMain()V

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initData()V

    .line 70
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initView()V

    .line 71
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->view:Landroid/view/View;

    return-object p1
.end method
