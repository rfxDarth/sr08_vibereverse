.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;
.super Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.source "DetailHeartActivity.java"


# instance fields
.field private hrRest:F

.field private lcd:Llecho/lib/hellocharts/model/LineChartData;

.field lcvHeart:Llecho/lib/hellocharts/view/LineChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a022a
    .end annotation
.end field

.field tvCalorie:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0470
    .end annotation
.end field

.field tvDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field tvEmpty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049f
    .end annotation
.end field

.field tvStep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0519
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;-><init>()V

    .line 60
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/LineChartData;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->hrRest:F

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;IIIII)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V

    return-void
.end method

.method private initData()V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Birthday"

    const-string v2, "1990-01-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 65
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    .line 68
    :try_start_0
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DetailHeartActivity initData: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->saveLog(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x12

    :goto_0
    sub-int/2addr v1, v0

    rsub-int v0, v1, 0xdc

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 75
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->hrRest:F

    .line 78
    :cond_0
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 79
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 80
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 81
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 82
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    .line 83
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/model/LineChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 85
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 86
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 87
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    .line 89
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setInside(Z)Llecho/lib/hellocharts/model/Axis;

    const/16 v4, 0x8

    .line 90
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setLineDash(I)V

    .line 91
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 92
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/model/LineChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 94
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelBackgroundAuto(Z)V

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelBackgroundColor(I)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelTouchAll(Z)V

    const/16 v6, 0xe10

    .line 98
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x18

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V

    .line 100
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0600c7

    .line 182
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->setRange(I)V

    .line 184
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setZoomEnabled(Z)V

    return-void
.end method

.method private initWalk(IIIII)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 195
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 196
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    add-int v1, v1, p2

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v5

    const-wide/16 v7, 0x1

    sub-long v13, v3, v7

    .line 198
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    mul-long v7, v11, v5

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    mul-long v5, v5, v13

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v6, v15

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const-string v4, "%s %s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->mid:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    .line 207
    new-array v6, v4, [F

    .line 208
    new-array v7, v4, [F

    .line 209
    new-array v8, v4, [F

    .line 210
    new-array v9, v4, [F

    const/16 p1, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 213
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v18, 0x3f800000    # 1.0f

    if-ge v13, v3, :cond_9

    .line 214
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v19

    .line 215
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v14, v3

    int-to-float v15, v3

    cmpl-float v21, v15, v10

    if-lez v21, :cond_0

    move v10, v15

    :cond_0
    if-lez v3, :cond_2

    cmpl-float v21, v5, p1

    if-eqz v21, :cond_1

    cmpg-float v21, v15, v5

    if-gez v21, :cond_2

    :cond_1
    move/from16 v22, v15

    goto :goto_1

    :cond_2
    move/from16 v22, v5

    :goto_1
    move-object/from16 v21, v6

    sub-long v5, v19, v11

    long-to-int v6, v5

    .line 225
    div-int v6, v6, p4

    if-ltz v6, :cond_8

    if-lt v6, v4, :cond_3

    goto :goto_2

    .line 228
    :cond_3
    aget v5, v21, v6

    add-float/2addr v5, v15

    aput v5, v21, v6

    .line 229
    aget v5, v7, v6

    add-float v5, v5, v18

    aput v5, v7, v6

    .line 231
    aget v5, v8, v6

    cmpl-float v18, v5, p1

    if-eqz v18, :cond_4

    cmpg-float v5, v5, v15

    if-gez v5, :cond_5

    if-eqz v3, :cond_5

    .line 232
    :cond_4
    aput v15, v8, v6

    .line 235
    :cond_5
    aget v5, v9, v6

    cmpl-float v18, v5, p1

    if-eqz v18, :cond_6

    cmpl-float v5, v5, v15

    if-lez v5, :cond_7

    if-eqz v3, :cond_7

    .line 236
    :cond_6
    aput v15, v9, v6

    .line 239
    :cond_7
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->hrRest:F

    cmpg-float v5, v15, v5

    if-gez v5, :cond_8

    add-int v17, v17, v3

    add-int/lit8 v16, v16, 0x1

    :cond_8
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v21

    move/from16 v5, v22

    const/4 v15, 0x0

    goto :goto_0

    :cond_9
    move-object/from16 v21, v6

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    const/16 v11, 0x1e

    if-ge v6, v2, :cond_a

    .line 311
    new-instance v12, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v13, v6

    int-to-float v11, v11

    invoke-direct {v12, v13, v11}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 312
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 314
    :cond_a
    new-instance v6, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v6, v4}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v4, 0x0

    .line 315
    invoke-virtual {v6, v4}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 316
    invoke-virtual {v6, v4}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    .line 317
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_b

    .line 321
    new-instance v12, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v13, v6

    const/16 v15, 0xdc

    int-to-float v15, v15

    invoke-direct {v12, v13, v15}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 322
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 324
    :cond_b
    new-instance v6, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v6, v4}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v4, 0x0

    .line 325
    invoke-virtual {v6, v4}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 326
    invoke-virtual {v6, v4}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    .line 327
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    if-nez v6, :cond_13

    .line 332
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v8, v2, :cond_11

    move/from16 v12, p5

    .line 336
    invoke-virtual {v0, v12, v4, v8, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v15

    .line 339
    aget v20, v7, v8

    cmpl-float v22, v20, p1

    if-lez v22, :cond_c

    .line 340
    aget v22, v21, v8

    div-float v22, v22, v20

    move/from16 v13, v22

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :goto_6
    cmpl-float v22, v13, v9

    if-lez v22, :cond_d

    move v9, v13

    .line 344
    :cond_d
    new-instance v11, Llecho/lib/hellocharts/model/PointValue;

    move-object/from16 v23, v1

    int-to-float v1, v8

    invoke-direct {v11, v1, v13}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    move-object/from16 v24, v7

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v15, v13

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    cmpg-float v7, v13, p1

    if-gtz v7, :cond_10

    .line 347
    new-instance v7, Llecho/lib/hellocharts/model/PointValue;

    const/16 v13, 0x1e

    int-to-float v11, v13

    invoke-direct {v7, v1, v11}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v7, v1}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 350
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 351
    new-instance v1, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v1, v6}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v7, 0x1

    .line 352
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 353
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 354
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x3

    if-le v6, v7, :cond_e

    .line 355
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v6, 0x2

    .line 356
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v15

    invoke-virtual {v15, v11}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v15, 0x7f0600c7

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    goto :goto_7

    :cond_e
    const v15, 0x7f0600c7

    .line 359
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v6, 0x4

    .line 360
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v13

    invoke-virtual {v13, v11}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 362
    :goto_7
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 363
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    goto :goto_8

    :cond_f
    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    const/4 v7, 0x1

    .line 370
    invoke-virtual {v11, v7}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 371
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v23

    move-object/from16 v7, v24

    const/16 v11, 0x1e

    goto/16 :goto_5

    :cond_11
    move-object/from16 v23, v1

    const/4 v7, 0x1

    .line 375
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 376
    new-instance v1, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v1, v6}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 377
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 378
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 379
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 380
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v7, :cond_12

    const/4 v6, 0x2

    .line 381
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x7f0600c7

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    goto :goto_9

    :cond_12
    const/4 v6, 0x4

    const v15, 0x7f0600c7

    .line 384
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v6}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 386
    :goto_9
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 387
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_13
    move-object/from16 v23, v1

    move-object/from16 v24, v7

    const/4 v7, 0x1

    .line 390
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    if-eq v1, v7, :cond_14

    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_1b

    :cond_14
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v1, v2, :cond_1b

    .line 397
    iget v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    invoke-virtual {v0, v7, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v7

    .line 400
    aget v11, v24, v1

    cmpl-float v12, v11, p1

    if-lez v12, :cond_15

    .line 401
    aget v12, v21, v1

    div-float/2addr v12, v11

    goto :goto_b

    :cond_15
    const/4 v12, 0x0

    :goto_b
    cmpl-float v11, v12, v6

    if-lez v11, :cond_16

    move v6, v12

    .line 405
    :cond_16
    aget v11, v8, v1

    cmpg-float v12, v11, p1

    if-gtz v12, :cond_17

    goto :goto_c

    .line 410
    :cond_17
    new-instance v12, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v13, v1

    invoke-direct {v12, v13, v11}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 411
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v11, v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    .line 412
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 413
    invoke-virtual {v12, v15}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 414
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    aget v12, v9, v1

    cmpg-float v15, v12, p1

    if-gtz v15, :cond_19

    :cond_18
    :goto_c
    const v12, 0x7f0600c7

    goto/16 :goto_e

    .line 421
    :cond_19
    aget v6, v8, v1

    .line 423
    new-instance v15, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v15, v13, v12}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    cmpl-float v13, v12, v6

    if-nez v13, :cond_1a

    .line 425
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v7, v12

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    goto :goto_d

    .line 428
    :cond_1a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v7, v12

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v7, v6

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    :goto_d
    const/4 v7, 0x0

    .line 430
    invoke-virtual {v15, v7}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 431
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_18

    .line 434
    new-instance v7, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v7, v11}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v11, 0x1

    .line 435
    invoke-virtual {v7, v11}, Llecho/lib/hellocharts/model/Line;->setSquare(Z)Llecho/lib/hellocharts/model/Line;

    .line 440
    invoke-virtual {v7, v11}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v12, 0x4

    .line 441
    invoke-virtual {v7, v12}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v13

    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v13

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v12, 0x7f0600c7

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v13, v15}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v13

    invoke-virtual {v13, v11}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 447
    invoke-virtual {v7, v11}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v13

    invoke-virtual {v13, v11}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v13

    invoke-virtual {v13, v11}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 448
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 469
    :cond_1b
    :goto_f
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 470
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 472
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x435c0000    # 220.0f

    invoke-direct {v2, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-direct {v2, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x43160000    # 150.0f

    invoke-direct {v2, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-direct {v2, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-direct {v2, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-direct {v2, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v2, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v2

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 483
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1, v3}, Llecho/lib/hellocharts/model/LineChartData;->setLines(Ljava/util/List;)Llecho/lib/hellocharts/model/LineChartData;

    .line 484
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 507
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 508
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 509
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_1c

    .line 510
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v2, v3

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 511
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v2, v3

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    goto :goto_10

    .line 513
    :cond_1c
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1d

    .line 514
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float v2, v2, v18

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 515
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float v2, v2, v18

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 517
    :cond_1d
    :goto_10
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/LineChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 519
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvStep:Landroid/widget/TextView;

    float-to-int v2, v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDistance:Landroid/widget/TextView;

    float-to-int v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "0"

    if-lez v1, :cond_1e

    .line 522
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvCalorie:Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v14, v3

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 524
    :cond_1e
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvCalorie:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    if-lez v16, :cond_1f

    .line 526
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvTime:Landroid/widget/TextView;

    div-int v17, v17, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 528
    :cond_1f
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :goto_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_20

    .line 530
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 531
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvEmpty:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_20
    const/4 v4, 0x0

    const/16 v15, 0x8

    .line 534
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v15}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 535
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method OnClickDateNext(Landroid/view/View;)V
    .locals 13
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01e7
        }
    .end annotation

    .line 148
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 151
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    .line 153
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_1

    .line 155
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    .line 156
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v1

    return-void

    :catch_0
    move-exception v0

    move-object v7, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v7, p0

    goto/16 :goto_1

    :cond_1
    move-object v7, p0

    .line 159
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 161
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    .line 162
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    .line 163
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 164
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V

    return-void

    .line 167
    :cond_2
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    if-ne p1, v1, :cond_3

    .line 168
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    .line 169
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    .line 171
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 172
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 173
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_0
    return-void

    :catch_2
    move-exception v0

    :goto_1
    move-object p1, v0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method OnClickDatePrev(Landroid/view/View;)V
    .locals 13
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01e8
        }
    .end annotation

    .line 116
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    .line 117
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_0

    .line 119
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    .line 120
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v1

    return-void

    :catch_0
    move-exception v0

    move-object v7, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v7, p0

    goto/16 :goto_0

    :cond_0
    move-object v7, p0

    .line 123
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 125
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    .line 126
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    .line 127
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 128
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V

    return-void

    .line 131
    :cond_1
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    if-ne p1, v1, :cond_2

    .line 132
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    .line 133
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    .line 135
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 136
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 137
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initWalk(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    return-void

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002b

    .line 51
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 55
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initData()V

    .line 56
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;->initView()V

    return-void
.end method
