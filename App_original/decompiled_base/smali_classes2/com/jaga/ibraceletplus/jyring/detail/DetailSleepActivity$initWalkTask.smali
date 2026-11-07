.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;
.super Landroid/os/AsyncTask;
.source "DetailSleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initWalkTask"
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

.field protected sleepDays:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;


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

    .line 257
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countTotal:I

    .line 259
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countDeep:I

    .line 260
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countLight:I

    .line 261
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    .line 262
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V

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

    .line 257
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 268
    array-length v2, v1

    .line 269
    const-string v3, ""

    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 272
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    .line 273
    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    .line 274
    aget-object v9, v1, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    .line 275
    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 276
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->dateMode:I

    .line 279
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v1

    move-wide v15, v13

    int-to-long v13, v1

    add-long v21, v11, v13

    .line 280
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    add-int/2addr v7, v5

    invoke-static {v1, v7}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    div-long/2addr v11, v15

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v1

    int-to-long v13, v1

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long v23, v11, v13

    .line 282
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    mul-long v11, v21, v15

    invoke-direct {v7, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/util/Date;

    move-wide/from16 v25, v13

    mul-long v13, v23, v15

    invoke-direct {v11, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v7, v12, v2

    aput-object v11, v12, v6

    const-string v7, "%s %s"

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v7, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->macid:Ljava/lang/String;

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v11, v11, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->mid:Ljava/lang/String;

    const/16 v20, 0x2

    move-object/from16 v17, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v11

    invoke-virtual/range {v17 .. v24}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    add-int/lit8 v1, v9, 0x1

    .line 286
    new-array v7, v1, [I

    .line 287
    new-array v11, v1, [I

    .line 288
    new-array v12, v1, [I

    .line 289
    new-array v13, v1, [I

    .line 290
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countTotal:I

    .line 291
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countDeep:I

    .line 292
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countLight:I

    .line 293
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    move-wide/from16 v17, v15

    const/4 v14, 0x0

    .line 294
    :goto_0
    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 295
    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v15

    move/from16 v20, v5

    sub-long v4, v15, v21

    long-to-int v5, v4

    .line 296
    div-int/2addr v5, v10

    .line 297
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v4

    const/16 v15, 0x50

    if-lt v4, v15, :cond_1

    .line 301
    iget v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countDeep:I

    add-int/2addr v15, v6

    iput v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countDeep:I

    .line 302
    aget v15, v11, v5

    add-int/2addr v15, v6

    aput v15, v11, v5

    goto :goto_1

    :cond_1
    if-lt v4, v6, :cond_2

    .line 304
    iget v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countLight:I

    add-int/2addr v15, v6

    iput v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countLight:I

    .line 305
    aget v15, v12, v5

    add-int/2addr v15, v6

    aput v15, v12, v5

    goto :goto_1

    :cond_2
    if-ltz v4, :cond_3

    .line 307
    iget v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    add-int/2addr v15, v6

    iput v15, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    .line 308
    aget v15, v13, v5

    add-int/2addr v15, v6

    aput v15, v13, v5

    :cond_3
    :goto_1
    if-ltz v4, :cond_4

    .line 311
    aget v4, v7, v5

    add-int/2addr v4, v6

    aput v4, v7, v5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v20

    const/4 v4, 0x4

    goto :goto_0

    :cond_5
    move/from16 v20, v5

    .line 313
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countDeep:I

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countLight:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countTotal:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_9

    .line 316
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    add-int v10, v20, v4

    invoke-static {v5, v10}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    div-long v14, v14, v17

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v5

    move-object/from16 v23, v7

    const/16 v16, 0x1

    int-to-long v6, v5

    add-long v31, v14, v6

    .line 317
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    add-int/lit8 v10, v10, 0x1

    invoke-static {v5, v10}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long v5, v5, v17

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v7

    int-to-long v14, v7

    add-long/2addr v5, v14

    sub-long v33, v5, v25

    .line 318
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->macid:Ljava/lang/String;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v7, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->mid:Ljava/lang/String;

    const/16 v30, 0x2

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    invoke-virtual/range {v27 .. v34}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v5

    .line 323
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 324
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v6

    sub-long v6, v6, v21

    long-to-int v7, v6

    div-int/lit8 v7, v7, 0x3c

    .line 325
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v5

    sub-long v5, v5, v21

    long-to-int v6, v5

    div-int/lit8 v6, v6, 0x3c

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 328
    :goto_3
    aget v5, v11, v4

    aget v10, v12, v4

    add-int/2addr v5, v10

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    if-gez v6, :cond_7

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    if-lez v6, :cond_8

    add-int/lit8 v6, v6, 0x1

    .line 335
    :cond_8
    :goto_4
    aput v6, v13, v4

    .line 336
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, v23

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v23, v7

    const/16 v16, 0x1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_b

    .line 340
    aget v5, v23, v4

    if-lez v5, :cond_a

    .line 341
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 348
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v9, :cond_c

    .line 352
    new-instance v6, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v7, v5

    int-to-float v10, v2

    invoke-direct {v6, v7, v10}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 353
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 355
    :cond_c
    new-instance v5, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v5, v4}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 356
    invoke-virtual {v5, v2}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 357
    invoke-virtual {v5, v2}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    .line 358
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v9, :cond_d

    .line 362
    new-instance v6, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v7, v5

    const/16 v10, 0x21c

    int-to-float v10, v10

    invoke-direct {v6, v7, v10}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 363
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 365
    :cond_d
    new-instance v5, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v5, v4}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 366
    invoke-virtual {v5, v2}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 367
    invoke-virtual {v5, v2}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    .line 368
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_8
    const/16 v6, 0xa

    if-ge v5, v6, :cond_e

    .line 382
    new-instance v6, Llecho/lib/hellocharts/model/AxisValue;

    mul-int/lit8 v7, v5, 0x3c

    int-to-float v7, v7

    invoke-direct {v6, v7}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v7, v13, v2

    aput-object v10, v13, v16

    const-string v7, "%1$02d:%2$02d"

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 386
    :cond_e
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v5

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/LineChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v5

    invoke-virtual {v5, v4}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 388
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v9, :cond_13

    .line 390
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->dateMode:I

    invoke-virtual {v6, v7, v4, v5, v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v6

    .line 393
    aget v7, v12, v5

    aget v8, v11, v5

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x0

    cmpg-float v10, v7, v8

    if-gtz v10, :cond_f

    :goto_a
    const/4 v2, 0x4

    const/4 v7, 0x1

    const/4 v14, 0x0

    goto/16 :goto_b

    .line 397
    :cond_f
    new-instance v10, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v13, v5

    invoke-direct {v10, v13, v7}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 398
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v7, v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    .line 399
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-virtual {v10, v2}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 401
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-float v10, v2

    .line 404
    new-instance v14, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v14, v13, v10}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 405
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x0

    float-to-int v8, v10

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    .line 406
    invoke-virtual {v14, v2}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 407
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v15, 0x8

    if-lez v14, :cond_10

    .line 410
    new-instance v14, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v14, v7}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v7, 0x1

    .line 411
    invoke-virtual {v14, v7}, Llecho/lib/hellocharts/model/Line;->setSquare(Z)Llecho/lib/hellocharts/model/Line;

    .line 412
    invoke-virtual {v14, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v2, 0x4

    .line 413
    invoke-virtual {v14, v2}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v7

    invoke-virtual {v7, v15}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f060278

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 414
    invoke-virtual {v14, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v2

    invoke-virtual {v2, v7}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 415
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_10
    aget v2, v11, v5

    int-to-float v2, v2

    cmpg-float v7, v2, p1

    if-gtz v7, :cond_11

    goto/16 :goto_a

    .line 423
    :cond_11
    new-instance v7, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v7, v13, v2}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 424
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v2, v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 426
    invoke-virtual {v7, v14}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 427
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v7, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v7, v13, v10}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Llecho/lib/hellocharts/model/PointValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;

    .line 432
    invoke-virtual {v7, v14}, Llecho/lib/hellocharts/model/PointValue;->setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;

    .line 433
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_12

    .line 436
    new-instance v6, Llecho/lib/hellocharts/model/Line;

    invoke-direct {v6, v2}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    const/4 v7, 0x1

    .line 437
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setSquare(Z)Llecho/lib/hellocharts/model/Line;

    .line 438
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    const/4 v2, 0x4

    .line 439
    invoke-virtual {v6, v2}, Llecho/lib/hellocharts/model/Line;->setPointRadius(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v8

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Llecho/lib/hellocharts/model/Line;->setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v8

    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f060277

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    move-result-object v8

    invoke-virtual {v8, v7}, Llecho/lib/hellocharts/model/Line;->setLabelTop(Z)V

    .line 440
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v8

    invoke-virtual {v8, v7}, Llecho/lib/hellocharts/model/Line;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;

    move-result-object v8

    invoke-virtual {v8, v7}, Llecho/lib/hellocharts/model/Line;->setTouchMargin(I)V

    .line 441
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    const/4 v2, 0x4

    const/4 v7, 0x1

    :goto_b
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/16 v16, 0x1

    goto/16 :goto_9

    .line 446
    :cond_13
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v2

    invoke-virtual {v2, v4}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 447
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v2

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/model/LineChartData;->setLines(Ljava/util/List;)Llecho/lib/hellocharts/model/LineChartData;

    .line 448
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

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

    .line 257
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8

    .line 455
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 457
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 458
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 459
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 460
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v0, v1

    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 461
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/view/LineChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 463
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleep:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleep:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleep:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvTotalSleepTime:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v3, v1, v0

    const-string v0, "%1$02d:%2$02d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleep:Landroid/widget/TextView;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countDeep:I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    div-int/2addr v3, v4

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleep:Landroid/widget/TextView;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countLight:I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    div-int/2addr v3, v4

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleep:Landroid/widget/TextView;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    div-int/2addr v3, v4

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countTotal:I

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    div-int v4, p1, v3

    div-int/lit8 v4, v4, 0x3c

    .line 476
    div-int/2addr p1, v3

    rem-int/lit8 p1, p1, 0x3c

    .line 477
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v5, 0x7f130122

    invoke-virtual {v3, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v4, :cond_1

    .line 479
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v5, 0x7f130123

    invoke-virtual {v3, v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 480
    :cond_1
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v6, 0x7f130124

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-lez p1, :cond_2

    .line 482
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v6, 0x7f130125

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 484
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    aput-object v3, v7, v0

    aput-object p1, v7, v1

    const/4 p1, 0x3

    aput-object v5, v7, p1

    const-string p1, "%d %s %d %s"

    invoke-static {v6, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 485
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvTotalSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :goto_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countTotal:I

    if-lez p1, :cond_3

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    if-lez v0, :cond_3

    .line 489
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countDeep:I

    div-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x168

    div-int/2addr p1, v0

    div-int/2addr v1, p1

    .line 490
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepDeep:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 491
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countLight:I

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    div-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x168

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countTotal:I

    div-int/2addr v1, v0

    div-int/2addr p1, v1

    .line 492
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepLight:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 493
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countWake:I

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->sleepDays:I

    div-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x168

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->countTotal:I

    div-int/2addr v1, v0

    div-int/2addr p1, v1

    .line 494
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepAwake:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 497
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepDeep:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 498
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepLight:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 499
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->pbSleepAwake:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 502
    :goto_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 503
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 504
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 505
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 507
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {p1, v2}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

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

    .line 257
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
