.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;
.super Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.source "DetailBloodSugarActivity.java"


# instance fields
.field cvSample0:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a011a
    .end annotation
.end field

.field cvSample1:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a011b
    .end annotation
.end field

.field private lcd:Llecho/lib/hellocharts/model/LineChartData;

.field lcvHeart:Llecho/lib/hellocharts/view/LineChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a022a
    .end annotation
.end field

.field tvEmpty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049f
    .end annotation
.end field

.field tvSugarAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a051e
    .end annotation
.end field

.field tvSugarAvgUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a051f
    .end annotation
.end field

.field tvSugarMax:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0520
    .end annotation
.end field

.field tvSugarMaxUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0521
    .end annotation
.end field

.field tvSugarMin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0522
    .end annotation
.end field

.field tvSugarMinUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0523
    .end annotation
.end field

.field tvSugarOffset:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0524
    .end annotation
.end field

.field tvSugarOffsetUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0525
    .end annotation
.end field

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;-><init>()V

    .line 73
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/LineChartData;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;IIIII)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V

    return-void
.end method

.method private initData()V
    .locals 10

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->unit:Ljava/lang/String;

    .line 76
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample1:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->cvSample1:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 85
    :goto_0
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 86
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 87
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 88
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 89
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    .line 90
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/LineChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 92
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 93
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 94
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    .line 96
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setInside(Z)Llecho/lib/hellocharts/model/Axis;

    .line 97
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setLineDash(I)V

    .line 98
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 99
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/model/LineChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelBackgroundAuto(Z)V

    .line 102
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelBackgroundColor(I)V

    .line 103
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelTouchAll(Z)V

    const/16 v8, 0xe10

    .line 105
    iget v9, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x18

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V

    .line 107
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0600a3

    .line 189
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->setRange(I)V

    .line 191
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setZoomEnabled(Z)V

    return-void
.end method

.method private initWalk(IIIII)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 202
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 203
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

    .line 205
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->TAG:Ljava/lang/String;

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

    .line 206
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->mid:Ljava/lang/String;

    const/16 v10, 0x12

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    .line 210
    new-array v6, v4, [F

    .line 211
    new-array v7, v4, [F

    .line 212
    new-array v8, v4, [F

    .line 213
    new-array v9, v4, [F

    const/16 p1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 216
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/high16 v18, 0x3f800000    # 1.0f

    const-string v5, "1"

    if-ge v13, v10, :cond_9

    .line 217
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v19

    .line 218
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v10

    .line 220
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->unit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x419020c5    # 18.016f

    mul-float v10, v10, v3

    :cond_0
    add-float v16, v16, v10

    cmpl-float v3, v10, v14

    if-lez v3, :cond_1

    move v14, v10

    :cond_1
    cmpl-float v3, v10, p1

    if-lez v3, :cond_3

    cmpl-float v5, v17, p1

    if-eqz v5, :cond_2

    cmpg-float v5, v10, v17

    if-gez v5, :cond_3

    :cond_2
    move/from16 v17, v10

    :cond_3
    move-object/from16 v21, v6

    sub-long v5, v19, v11

    long-to-int v6, v5

    .line 233
    div-int v6, v6, p4

    if-ltz v6, :cond_8

    if-lt v6, v4, :cond_4

    goto :goto_1

    .line 236
    :cond_4
    aget v5, v21, v6

    add-float/2addr v5, v10

    aput v5, v21, v6

    .line 237
    aget v5, v7, v6

    add-float v5, v5, v18

    aput v5, v7, v6

    .line 239
    aget v5, v8, v6

    cmpl-float v18, v5, p1

    if-eqz v18, :cond_5

    cmpg-float v5, v5, v10

    if-gez v5, :cond_6

    if-eqz v3, :cond_6

    .line 240
    :cond_5
    aput v10, v8, v6

    .line 243
    :cond_6
    aget v5, v9, v6

    cmpl-float v18, v5, p1

    if-eqz v18, :cond_7

    cmpl-float v5, v5, v10

    if-lez v5, :cond_8

    if-eqz v3, :cond_8

    .line 244
    :cond_7
    aput v10, v9, v6

    :cond_8
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v21

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_0

    :cond_9
    move-object/from16 v21, v6

    .line 251
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->unit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 254
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMaxUnit:Landroid/widget/TextView;

    const v6, 0x7f130133

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMinUnit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffsetUnit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvgUnit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const/16 v3, 0x3c

    const/16 v6, 0x10e

    goto :goto_2

    .line 262
    :cond_a
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMaxUnit:Landroid/widget/TextView;

    const v6, 0x7f130135

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMinUnit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffsetUnit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvgUnit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const/16 v6, 0xf

    const/4 v3, 0x3

    .line 268
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 270
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v2, :cond_b

    .line 272
    new-instance v13, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v4, v12

    int-to-float v15, v3

    invoke-direct {v13, v4, v15}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 273
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x0

    goto :goto_3

    .line 275
    :cond_b
    new-instance v4, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v4, v11}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v11, 0x0

    .line 276
    invoke-virtual {v4, v11}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 277
    invoke-virtual {v4, v11}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    .line 278
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v2, :cond_c

    .line 282
    new-instance v12, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v13, v11

    int-to-float v15, v6

    invoke-direct {v12, v13, v15}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 283
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 285
    :cond_c
    new-instance v6, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v6, v4}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v11, 0x0

    .line 286
    invoke-virtual {v6, v11}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 287
    invoke-virtual {v6, v11}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    .line 288
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    if-nez v6, :cond_14

    .line 293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v8, v2, :cond_12

    move/from16 v15, p5

    .line 297
    invoke-virtual {v0, v15, v4, v8, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v11

    .line 300
    aget v22, v7, v8

    cmpl-float v23, v22, p1

    if-lez v23, :cond_d

    .line 301
    aget v23, v21, v8

    div-float v23, v23, v22

    move/from16 v13, v23

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    :goto_6
    cmpl-float v23, v13, v9

    if-lez v23, :cond_e

    move v9, v13

    .line 305
    :cond_e
    new-instance v12, Llecho/lib/hellocharts/model/PointValue;

    move-object/from16 v24, v1

    int-to-float v1, v8

    invoke-direct {v12, v1, v13}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    move-object/from16 v25, v7

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v11, v13

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    cmpg-float v7, v13, p1

    if-gtz v7, :cond_11

    .line 308
    new-instance v7, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v11, v3

    invoke-direct {v7, v1, v11}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    const/4 v11, 0x0

    .line 310
    invoke-virtual {v7, v11}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 311
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 312
    new-instance v1, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v1, v6}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v7, 0x1

    .line 313
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 314
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 315
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_f

    .line 316
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v6, 0x2

    .line 317
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v11

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0600a3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    goto :goto_7

    :cond_f
    const v12, 0x7f0600a3

    const/4 v13, 0x3

    .line 320
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v6, 0x4

    .line 321
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v11

    invoke-virtual {v11, v13}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 323
    :goto_7
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 324
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    goto :goto_8

    :cond_10
    const/4 v7, 0x1

    const/4 v13, 0x3

    goto :goto_8

    :cond_11
    const/4 v7, 0x1

    const/4 v13, 0x3

    .line 331
    invoke-virtual {v12, v7}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 332
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v24

    move-object/from16 v7, v25

    goto/16 :goto_5

    :cond_12
    move-object/from16 v24, v1

    const/4 v7, 0x1

    .line 336
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 337
    new-instance v1, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v1, v6}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 338
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 339
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 340
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 341
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v7, :cond_13

    const/4 v6, 0x2

    .line 342
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v12, 0x7f0600a3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    goto :goto_9

    :cond_13
    const/4 v6, 0x4

    const v12, 0x7f0600a3

    .line 345
    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v6}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 347
    :goto_9
    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 348
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_14
    move-object/from16 v24, v1

    move-object/from16 v25, v7

    const/4 v7, 0x1

    .line 351
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    if-eq v1, v7, :cond_15

    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_1c

    :cond_15
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v1, v2, :cond_1c

    .line 358
    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    invoke-virtual {v0, v6, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v6

    .line 361
    aget v7, v25, v1

    cmpl-float v11, v7, p1

    if-lez v11, :cond_16

    .line 362
    aget v11, v21, v1

    div-float/2addr v11, v7

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    :goto_b
    cmpl-float v7, v11, v3

    if-lez v7, :cond_17

    move v3, v11

    .line 366
    :cond_17
    aget v7, v8, v1

    cmpg-float v11, v7, p1

    if-gtz v11, :cond_18

    goto :goto_c

    .line 371
    :cond_18
    new-instance v11, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v12, v1

    invoke-direct {v11, v12, v7}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 372
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v7, v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    .line 373
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 374
    invoke-virtual {v11, v13}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 375
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    aget v11, v9, v1

    cmpg-float v13, v11, p1

    if-gtz v13, :cond_1a

    :cond_19
    :goto_c
    const/4 v11, 0x4

    const v15, 0x7f0600a3

    goto/16 :goto_e

    .line 382
    :cond_1a
    aget v3, v8, v1

    .line 384
    new-instance v13, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v13, v12, v11}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    cmpl-float v12, v11, v3

    if-nez v12, :cond_1b

    .line 386
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v6, v11

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    goto :goto_d

    .line 389
    :cond_1b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v6, v11

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v6, v3

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    :goto_d
    const/4 v11, 0x0

    .line 391
    invoke-virtual {v13, v11}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 392
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_19

    .line 395
    new-instance v6, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v6, v7}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v7, 0x1

    .line 396
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setSquare(Z)Llecho/lib/hellocharts/model/Line;

    .line 397
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v11, 0x4

    .line 398
    invoke-virtual {v6, v11}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v12

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0600a3

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v12

    invoke-virtual {v12, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 399
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v12

    invoke-virtual {v12, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v12

    invoke-virtual {v12, v7}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 400
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 405
    :cond_1c
    :goto_f
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 406
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->unit:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 409
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v3, 0x43020000    # 130.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 415
    :cond_1d
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :goto_10
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v2

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 422
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1, v10}, Llecho/lib/hellocharts/model/LineChartData;->setLines(Ljava/util/List;)Llecho/lib/hellocharts/model/LineChartData;

    .line 423
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 425
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 426
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 427
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1e

    .line 428
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v2, v3

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 429
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v2, v3

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    goto :goto_11

    .line 431
    :cond_1e
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1f

    .line 432
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float v2, v2, v18

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 433
    iget v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float v2, v2, v18

    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 435
    :cond_1f
    :goto_11
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/LineChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 437
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMax:Landroid/widget/TextView;

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v3, v19

    const-string v2, "%.2f"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarMin:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v19

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 440
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffset:Landroid/widget/TextView;

    sub-float v14, v14, v17

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v19

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvg:Landroid/widget/TextView;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v19

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 444
    :cond_20
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarOffset:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvSugarAvg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :goto_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_21

    .line 448
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 449
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvEmpty:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_21
    const/4 v11, 0x0

    const/16 v13, 0x8

    .line 452
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->lcvHeart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v13}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 453
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

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

    .line 155
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 158
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    .line 160
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_1

    .line 162
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    .line 163
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V
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

    .line 166
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 168
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    .line 169
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    .line 170
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 171
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V

    return-void

    .line 174
    :cond_2
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    if-ne p1, v1, :cond_3

    .line 175
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    .line 176
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    .line 178
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 179
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 180
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_0
    return-void

    :catch_2
    move-exception v0

    :goto_1
    move-object p1, v0

    .line 184
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

    .line 123
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    .line 124
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_0

    .line 126
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    .line 127
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V
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

    .line 130
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 132
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    .line 133
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    .line 134
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 135
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V

    return-void

    .line 138
    :cond_1
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    if-ne p1, v1, :cond_2

    .line 139
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    .line 140
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    .line 142
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 143
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 144
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initWalk(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    return-void

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0029

    .line 64
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 68
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initData()V

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->initView()V

    return-void
.end method
