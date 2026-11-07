.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;
.super Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.source "DetailPressureActivity.java"


# instance fields
.field tvChartName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0476
    .end annotation
.end field

.field tvEmpty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;IIII)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V

    return-void
.end method

.method private initData()V
    .locals 4

    const/16 v0, 0x18

    const/16 v1, 0xe10

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 45
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V

    .line 47
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f060368

    .line 61
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->setRange(I)V

    return-void
.end method

.method private initWalk(IIII)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 144
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 145
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

    .line 147
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->TAG:Ljava/lang/String;

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

    .line 148
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->mid:Ljava/lang/String;

    const/16 v10, 0x11

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 151
    new-array v4, v2, [F

    .line 152
    new-array v6, v2, [F

    .line 153
    new-array v7, v2, [F

    .line 154
    new-array v8, v2, [F

    const/16 p1, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 159
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x42c80000    # 100.0f

    if-ge v10, v9, :cond_8

    .line 160
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v20

    .line 161
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v9

    cmpl-float v22, v9, v16

    if-lez v22, :cond_0

    cmpg-float v19, v9, v19

    if-gtz v19, :cond_0

    move/from16 v16, v9

    :cond_0
    cmpl-float v19, v9, p1

    if-lez v19, :cond_2

    cmpl-float v22, v17, p1

    if-eqz v22, :cond_1

    cmpg-float v22, v9, v17

    if-gez v22, :cond_2

    :cond_1
    move/from16 v17, v9

    :cond_2
    move-object/from16 v22, v6

    sub-long v5, v20, v11

    long-to-int v6, v5

    .line 171
    div-int v6, v6, p4

    if-ltz v6, :cond_7

    if-lt v6, v2, :cond_3

    goto :goto_1

    .line 175
    :cond_3
    aget v5, v4, v6

    add-float/2addr v5, v9

    aput v5, v4, v6

    if-lez v19, :cond_4

    .line 178
    aget v5, v8, v6

    add-float v5, v5, v18

    aput v5, v8, v6

    .line 183
    :cond_4
    aget v5, v7, v6

    cmpl-float v5, v9, v5

    if-lez v5, :cond_5

    .line 184
    aput v9, v7, v6

    :cond_5
    if-lez v19, :cond_7

    .line 186
    aget v5, v22, v6

    cmpl-float v18, v5, p1

    if-eqz v18, :cond_6

    cmpg-float v5, v9, v5

    if-gez v5, :cond_7

    .line 187
    :cond_6
    aput v9, v22, v6

    :cond_7
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v22

    const/4 v5, 0x2

    goto :goto_0

    :cond_8
    move-object/from16 v22, v6

    move-object v5, v7

    .line 190
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-object v6, v8

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->mid:Ljava/lang/String;

    const/16 v10, 0x13

    move-object/from16 v16, v6

    move-object v6, v5

    const/4 v5, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 196
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_b

    .line 197
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v20

    .line 198
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v9

    move-object v14, v6

    const/16 p1, 0x0

    sub-long v5, v20, v11

    long-to-int v6, v5

    .line 201
    div-int v6, v6, p4

    if-ltz v6, :cond_a

    if-lt v6, v2, :cond_9

    goto :goto_3

    :cond_9
    add-float/2addr v8, v9

    cmpl-float v5, v9, p1

    if-lez v5, :cond_a

    add-int/lit8 v13, v13, 0x1

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v6, v14

    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    move-object v14, v6

    const/16 p1, 0x0

    const v5, 0x7f0a04ad

    .line 210
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 211
    const-string v6, "%.0f"

    const-string v7, "--"

    cmpl-float v10, v9, p1

    if-lez v10, :cond_c

    .line 212
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v9, v10, v15

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 215
    :cond_c
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const v5, 0x7f0a0456

    .line 217
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-lez v13, :cond_d

    int-to-float v9, v13

    div-float/2addr v8, v9

    .line 219
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v15

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 222
    :cond_d
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const v5, 0x7f0a0082

    .line 225
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;

    .line 227
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 237
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const v11, 0x7f0a058c

    .line 241
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;

    const v12, 0x7f0a04f1

    .line 242
    invoke-virtual {v0, v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a04f3

    .line 243
    invoke-virtual {v0, v13}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_e

    .line 246
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {v5, v3}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->setCurrentValue(F)V

    .line 250
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 256
    :cond_e
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->mid:Ljava/lang/String;

    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->macid:Ljava/lang/String;

    move-object/from16 v21, v4

    const/16 v4, 0x11

    move-object/from16 v23, v6

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v15, v4, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryHeart(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-int v4, v4

    .line 260
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "adddate"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "initWalk history heartrate: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", addDate: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_6

    .line 258
    :cond_f
    const-string v1, ""

    const/4 v4, 0x0

    :goto_6
    if-lez v4, :cond_10

    int-to-float v3, v4

    .line 264
    invoke-virtual {v11, v3}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->setCurrentValue(F)V

    .line 265
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/TimeSlotUtils;->getHalfHourSlot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    .line 270
    invoke-virtual {v11, v1}, Lcom/jaga/ibraceletplus/jyring/widget/HorizontalValueIndicatorView;->setCurrentValue(F)V

    .line 271
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    move-object/from16 v6, v23

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v2, :cond_17

    .line 277
    aget v13, v16, v12

    cmpl-float v15, v13, v1

    if-lez v15, :cond_11

    .line 278
    aget v15, v21, v12

    div-float/2addr v15, v13

    goto :goto_9

    .line 280
    :cond_11
    aget v15, v21, v12

    .line 282
    :goto_9
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v15

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    cmpl-float v13, v15, v1

    if-lez v13, :cond_15

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v1, v15, v1

    if-gtz v1, :cond_12

    add-float v4, v4, v18

    goto :goto_a

    :cond_12
    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v1, v15, v1

    if-gtz v1, :cond_13

    add-float v7, v7, v18

    goto :goto_a

    :cond_13
    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v1, v15, v1

    if-gtz v1, :cond_14

    add-float v11, v11, v18

    goto :goto_a

    :cond_14
    cmpg-float v1, v15, v19

    if-gtz v1, :cond_15

    add-float v3, v3, v18

    :cond_15
    :goto_a
    const v1, -0x3c5c8000    # -327.0f

    cmpl-float v1, v15, v1

    if-lez v1, :cond_16

    const v1, 0x43a38000    # 327.0f

    cmpg-float v1, v15, v1

    if-gez v1, :cond_16

    .line 297
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    aget v1, v22, v12

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    aget v1, v14, v12

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_8

    .line 303
    :cond_17
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    .line 304
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvEmpty:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v5, v1}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setVisibility(I)V

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 307
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-virtual {v5, v2}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setVisibility(I)V

    :goto_b
    move v9, v4

    :goto_c
    const v1, 0x7f0a032a

    .line 312
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;

    .line 313
    invoke-virtual {v1, v9, v7, v11, v3}, Lcom/jaga/ibraceletplus/jyring/widget/PieChartView;->setData(FFFF)V

    const v1, 0x7f0a04f8

    .line 315
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04f9

    .line 316
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a04e5

    .line 318
    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a04e6

    .line 319
    invoke-virtual {v0, v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v10, 0x7f0a04d3

    .line 321
    invoke-virtual {v0, v10}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v12, 0x7f0a04d4

    .line 322
    invoke-virtual {v0, v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a04bf

    .line 324
    invoke-virtual {v0, v13}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0a04c0

    .line 325
    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    add-float v15, v9, v7

    add-float/2addr v15, v11

    add-float/2addr v15, v3

    move/from16 p3, v15

    .line 329
    iget v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    move/from16 v16, v15

    const-string v15, "%d%%"

    move-object/from16 p4, v5

    const-string v5, "--%"

    if-nez v16, :cond_1a

    move-object/from16 v16, v8

    .line 330
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvChartName:Landroid/widget/TextView;

    move-object/from16 v18, v14

    const v14, 0x7f130053

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v8, 0x0

    cmpl-float v8, p3, v8

    if-lez v8, :cond_19

    mul-float v5, v9, v19

    div-float v5, v5, p3

    .line 338
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v5, v14, v20

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v1, v7, v19

    div-float v1, v1, p3

    .line 339
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v20

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v1, v11, v19

    div-float v1, v1, p3

    .line 340
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v20

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v19, v19, v3

    div-float v19, v19, p3

    .line 341
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v20

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 344
    :cond_19
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    float-to-long v4, v9

    const-wide/16 v8, 0x3c

    mul-long v4, v4, v8

    .line 350
    invoke-static {v0, v4, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v7

    mul-long v1, v1, v8

    .line 351
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v11

    mul-long v1, v1, v8

    .line 352
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v3

    mul-long v1, v1, v8

    .line 353
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v18

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v8, p4

    move-object/from16 v1, v16

    .line 355
    invoke-virtual {v8, v1}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setData(Ljava/util/List;)V

    .line 356
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    invoke-virtual {v8, v1}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;)V

    return-void

    :cond_1a
    move-object/from16 v24, v8

    .line 358
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    const-wide/16 v21, 0x5a0

    move-object/from16 v18, v14

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1c

    .line 359
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvChartName:Landroid/widget/TextView;

    const v14, 0x7f130055

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v8, 0x0

    cmpl-float v8, p3, v8

    if-lez v8, :cond_1b

    mul-float v5, v9, v19

    div-float v5, v5, p3

    .line 362
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v5, v8, v20

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v1, v7, v19

    div-float v1, v1, p3

    .line 363
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v20

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v1, v11, v19

    div-float v1, v1, p3

    .line 364
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v1, v4, v20

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v19, v19, v3

    div-float v19, v19, p3

    .line 365
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v1, v4, v20

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 368
    :cond_1b
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    float-to-long v4, v9

    mul-long v4, v4, v21

    .line 374
    invoke-static {v0, v4, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v7

    mul-long v1, v1, v21

    .line 375
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v11

    mul-long v1, v1, v21

    .line 376
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v3

    mul-long v1, v1, v21

    .line 377
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v18

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v8, p4

    move-object/from16 v1, v24

    .line 379
    invoke-virtual {v8, v1}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setData(Ljava/util/List;)V

    .line 380
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->WEEK:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    invoke-virtual {v8, v1}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;)V

    return-void

    :cond_1c
    move-object/from16 v14, v18

    move-object/from16 v25, v24

    .line 382
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_1e

    .line 383
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvChartName:Landroid/widget/TextView;

    const v14, 0x7f130054

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v8, 0x0

    cmpl-float v8, p3, v8

    if-lez v8, :cond_1d

    mul-float v5, v9, v19

    div-float v5, v5, p3

    .line 386
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v5, v8, v20

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v1, v7, v19

    div-float v1, v1, p3

    .line 387
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v20

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v1, v11, v19

    div-float v1, v1, p3

    .line 388
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v1, v4, v20

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v19, v19, v3

    div-float v19, v19, p3

    .line 389
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v1, v4, v20

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 392
    :cond_1d
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    float-to-long v4, v9

    mul-long v4, v4, v21

    .line 398
    invoke-static {v0, v4, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v7

    mul-long v1, v1, v21

    .line 399
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v11

    mul-long v1, v1, v21

    .line 400
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-long v1, v3

    mul-long v1, v1, v21

    .line 401
    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->formatDurationDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v18

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v8, p4

    move-object/from16 v1, v25

    .line 403
    invoke-virtual {v8, v1}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setData(Ljava/util/List;)V

    .line 404
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    invoke-virtual {v8, v1}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;)V

    :cond_1e
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

    .line 108
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 111
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    .line 113
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    if-nez p1, :cond_1

    .line 115
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    .line 116
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    const/16 v1, 0x18

    const/16 v2, 0xe10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V

    return-void

    .line 119
    :cond_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    const v1, 0x15180

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    .line 121
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    .line 122
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    const/4 v3, 0x6

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

    .line 123
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 124
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvDate:Landroid/widget/TextView;

    const-string v4, "%s ~ %s"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

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

    .line 125
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V

    return-void

    .line 127
    :cond_2
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    if-ne p1, v2, :cond_3

    .line 128
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    .line 129
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

    .line 131
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 133
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 137
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

    .line 76
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    .line 77
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    .line 80
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    const/16 v1, 0x18

    const/16 v2, 0xe10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V

    return-void

    .line 83
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    const v1, 0x15180

    const/4 v2, 0x2

    if-ne p1, v0, :cond_1

    .line 85
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    .line 86
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    const/4 v3, 0x6

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

    .line 87
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 88
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvDate:Landroid/widget/TextView;

    const-string v4, "%s ~ %s"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

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

    .line 89
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V

    return-void

    .line 91
    :cond_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->indexRange:I

    if-ne p1, v2, :cond_2

    .line 92
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    .line 93
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

    .line 95
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateEnd:Ljava/util/Date;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 97
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initWalk(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002d

    .line 36
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->setContentView(I)V

    .line 37
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 40
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initData()V

    .line 41
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;->initView()V

    return-void
.end method
