.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;
.super Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.source "DetailBodyTemperatureActivity.java"


# instance fields
.field private hrRest:F

.field private tempUnit:Ljava/lang/String;

.field tvEmpty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049f
    .end annotation
.end field

.field tvEmpty2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->hrRest:F

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tempUnit:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;IIII)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

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

    .line 66
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    rsub-int v0, v1, 0xdc

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 67
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->hrRest:F

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f13054b

    .line 71
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tempUnit:Ljava/lang/String;

    .line 72
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f13054c

    .line 73
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tempUnit:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x121

    const/16 v1, 0x12c

    const/4 v2, 0x1

    .line 76
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V

    .line 78
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f06043d

    .line 92
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->setRange(I)V

    const v0, 0x7f0a041d

    .line 94
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setAutoAdjustYAxis(Z)V

    const v0, 0x7f0a041e

    .line 120
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;

    .line 122
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setAutoAdjustYAxis(Z)V

    .line 126
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    return-void
.end method

.method private initWalk(IIII)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 201
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 202
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

    .line 204
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->TAG:Ljava/lang/String;

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

    .line 205
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->mid:Ljava/lang/String;

    const/16 v10, 0x10

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    new-array v4, v2, [F

    .line 211
    new-array v6, v2, [F

    .line 212
    new-array v7, v2, [F

    .line 213
    new-array v8, v2, [F

    .line 214
    new-array v9, v2, [F

    .line 215
    new-array v10, v2, [F

    .line 216
    new-array v13, v2, [F

    const/16 p1, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 222
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const v22, -0x3c5c8000    # -327.0f

    const v23, 0x43a38000    # 327.0f

    if-ge v14, v15, :cond_f

    .line 223
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v24

    .line 224
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue2()F

    move-result v15

    .line 228
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual/range {v26 .. v26}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v26

    cmpl-float v27, v15, v16

    if-lez v27, :cond_0

    cmpg-float v27, v15, v23

    if-gez v27, :cond_0

    cmpl-float v27, v15, v22

    if-lez v27, :cond_0

    move/from16 v16, v15

    :cond_0
    cmpl-float v27, v15, p1

    if-lez v27, :cond_2

    cmpl-float v28, v18, p1

    if-eqz v28, :cond_1

    cmpg-float v28, v15, v18

    if-gez v28, :cond_2

    :cond_1
    move/from16 v18, v15

    :cond_2
    cmpl-float v28, v26, v17

    if-lez v28, :cond_3

    cmpg-float v28, v26, v23

    if-gez v28, :cond_3

    cmpl-float v28, v26, v22

    if-lez v28, :cond_3

    move/from16 v17, v26

    :cond_3
    cmpl-float v28, v26, p1

    if-lez v28, :cond_5

    cmpl-float v29, v19, p1

    if-eqz v29, :cond_4

    cmpg-float v29, v26, v19

    if-gez v29, :cond_5

    :cond_4
    move/from16 v19, v26

    :cond_5
    move-object/from16 v30, v4

    sub-long v3, v24, v11

    long-to-int v4, v3

    .line 245
    div-int v4, v4, p4

    if-ltz v4, :cond_e

    if-lt v4, v2, :cond_6

    goto :goto_1

    :cond_6
    if-lez v28, :cond_7

    cmpg-float v3, v26, v23

    if-gez v3, :cond_7

    cmpl-float v3, v26, v22

    if-lez v3, :cond_7

    add-float v20, v20, v26

    add-int/lit8 v5, v5, 0x1

    .line 257
    :cond_7
    aget v3, v30, v4

    add-float/2addr v3, v15

    aput v3, v30, v4

    .line 258
    aget v3, v8, v4

    add-float v3, v3, v26

    aput v3, v8, v4

    if-lez v27, :cond_8

    .line 260
    aget v3, v13, v4

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v3, v3, v22

    aput v3, v13, v4

    .line 264
    :cond_8
    aget v3, v7, v4

    cmpl-float v3, v15, v3

    if-lez v3, :cond_9

    .line 265
    aput v15, v7, v4

    :cond_9
    if-lez v27, :cond_b

    .line 267
    aget v3, v6, v4

    cmpl-float v22, v3, p1

    if-eqz v22, :cond_a

    cmpg-float v3, v15, v3

    if-gez v3, :cond_b

    .line 268
    :cond_a
    aput v15, v6, v4

    .line 271
    :cond_b
    aget v3, v10, v4

    cmpl-float v3, v26, v3

    if-lez v3, :cond_c

    .line 272
    aput v26, v10, v4

    :cond_c
    if-lez v28, :cond_e

    .line 274
    aget v3, v9, v4

    cmpl-float v15, v3, p1

    if-eqz v15, :cond_d

    cmpg-float v3, v26, v3

    if-gez v3, :cond_e

    .line 275
    :cond_d
    aput v26, v9, v4

    :cond_e
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v30

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v30, v4

    .line 278
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "DistanceUnit"

    const-string v11, "0"

    invoke-virtual {v3, v4, v11}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 281
    invoke-static/range {v16 .. v16}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v16

    .line 282
    invoke-static/range {v17 .. v17}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v17

    .line 283
    invoke-static/range {v18 .. v18}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v18

    .line 284
    invoke-static/range {v19 .. v19}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v19

    :cond_10
    const v11, 0x7f0a04d6

    .line 287
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 288
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a04ce

    .line 289
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 290
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a0457

    .line 291
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    int-to-float v5, v5

    div-float v20, v20, v5

    .line 292
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    aput-object v5, v14, v21

    const-string v5, "%.1f"

    invoke-static {v5, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a04e9

    .line 293
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sub-float v17, v17, v19

    .line 294
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v14, v15, v21

    invoke-static {v5, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a04d5

    .line 295
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 296
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a04cd

    .line 297
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 298
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a041d

    .line 300
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;

    const v11, 0x7f0a041e

    .line 303
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;

    .line 306
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/16 v12, 0x8

    if-eqz v1, :cond_11

    .line 307
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-virtual {v5, v12}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    .line 309
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    invoke-virtual {v11, v12}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    return-void

    .line 313
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 317
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v6

    .line 318
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v7

    .line 319
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v19, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_18

    .line 323
    aget v20, v13, v8

    cmpl-float v24, v20, p1

    if-lez v24, :cond_12

    .line 324
    aget v24, v30, v8

    div-float v24, v24, v20

    goto :goto_3

    .line 326
    :cond_12
    aget v24, v30, v8

    :goto_3
    cmpl-float v20, v24, v22

    if-lez v20, :cond_14

    cmpg-float v20, v24, v23

    if-gez v20, :cond_14

    .line 329
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 330
    invoke-static/range {v24 .. v24}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v20

    move/from16 v24, v20

    .line 333
    :cond_13
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    aget v2, v16, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    aget v2, v17, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float v2, v2, v24

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    .line 342
    aget v2, v13, v8

    cmpl-float v20, v2, p1

    if-lez v20, :cond_15

    .line 343
    aget v20, v19, v8

    div-float v20, v20, v2

    goto :goto_4

    .line 345
    :cond_15
    aget v20, v19, v8

    :goto_4
    cmpl-float v2, v20, v22

    if-lez v2, :cond_17

    cmpg-float v2, v20, v23

    if-gez v2, :cond_17

    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 349
    invoke-static/range {v20 .. v20}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v20

    .line 352
    :cond_16
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    aget v2, v9, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    aget v2, v10, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p3

    goto/16 :goto_2

    .line 358
    :cond_18
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_19

    .line 359
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    .line 360
    invoke-virtual {v5, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    .line 361
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty2:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    invoke-virtual {v11, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    goto :goto_5

    :cond_19
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 365
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-virtual {v5, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    .line 367
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvEmpty2:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    invoke-virtual {v11, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    .line 371
    :goto_5
    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    if-nez v3, :cond_1c

    .line 373
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 374
    :goto_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1a

    .line 375
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v7}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;-><init>(F)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 377
    :cond_1a
    invoke-virtual {v5, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setDayData(Ljava/util/List;)V

    .line 378
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v5, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    .line 380
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 381
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_1b

    .line 382
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v2, v4}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;-><init>(F)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 384
    :cond_1b
    invoke-virtual {v11, v3}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setDayData(Ljava/util/List;)V

    .line 385
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    return-void

    .line 387
    :cond_1c
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 390
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 391
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v4, v8, v9}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 393
    :cond_1d
    invoke-virtual {v5, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setWeekData(Ljava/util/List;)V

    .line 394
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->WEEK:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v5, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    .line 396
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    :goto_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 398
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;-><init>(FF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 400
    :cond_1e
    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setWeekData(Ljava/util/List;)V

    .line 401
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->WEEK:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    return-void

    .line 403
    :cond_1f
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 407
    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 408
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v4, v8, v9}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 410
    :cond_20
    invoke-virtual {v5, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMonthData(Ljava/util/List;)V

    .line 411
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v5, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    .line 413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 414
    :goto_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 415
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;-><init>(FF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 417
    :cond_21
    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMonthData(Ljava/util/List;)V

    .line 418
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    :cond_22
    return-void
.end method


# virtual methods
.method OnClickDateNext(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01e7
        }
    .end annotation

    .line 165
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 168
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    .line 170
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    if-nez p1, :cond_1

    .line 172
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    .line 173
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    const/16 v1, 0x18

    const/16 v2, 0xe10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V

    return-void

    .line 176
    :cond_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    const v1, 0x15180

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    .line 178
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    .line 179
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    const/4 v3, 0x6

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    .line 180
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 181
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvDate:Landroid/widget/TextView;

    const-string v4, "%s ~ %s"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v2, v7

    aput-object v6, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    .line 182
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V

    return-void

    .line 184
    :cond_2
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    if-ne p1, v2, :cond_3

    .line 185
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    .line 186
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    .line 188
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 190
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method OnClickDatePrev(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01e8
        }
    .end annotation

    .line 133
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    .line 134
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    if-nez p1, :cond_0

    .line 136
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    .line 137
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    const/16 v1, 0x18

    const/16 v2, 0xe10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V

    return-void

    .line 140
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    const v1, 0x15180

    const/4 v2, 0x2

    if-ne p1, v0, :cond_1

    .line 142
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    .line 143
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    const/4 v3, 0x6

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    .line 144
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 145
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvDate:Landroid/widget/TextView;

    const-string v4, "%s ~ %s"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v2, v7

    aput-object v6, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    .line 146
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V

    return-void

    .line 148
    :cond_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->indexRange:I

    if-ne p1, v2, :cond_2

    .line 149
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    .line 150
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    .line 152
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 153
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateEnd:Ljava/util/Date;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 154
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initWalk(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    .line 51
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 55
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initData()V

    .line 56
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;->initView()V

    return-void
.end method
