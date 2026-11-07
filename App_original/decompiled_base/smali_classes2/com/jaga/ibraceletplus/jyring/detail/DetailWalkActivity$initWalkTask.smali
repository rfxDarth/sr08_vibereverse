.class Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;
.super Landroid/os/AsyncTask;
.source "DetailWalkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;
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

.field protected calorie:F

.field protected dateMode:I

.field protected distance:F

.field protected stepAll:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

.field protected totalDays:I


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$1;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V

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

    .line 317
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 328
    const-string v2, "false"

    const-string v3, ""

    :try_start_0
    array-length v4, v1

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    .line 332
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    .line 333
    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    .line 334
    aget-object v10, v1, v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x3

    .line 335
    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 336
    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->dateMode:I

    .line 338
    iput v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    .line 339
    iput v10, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    .line 342
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v20, v12, v14

    .line 343
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    add-int/2addr v6, v8

    invoke-static {v1, v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v14

    const-wide/16 v12, 0x1

    sub-long v22, v5, v12

    .line 345
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->TAG:Ljava/lang/String;

    const-string v5, "%s %s"

    new-instance v6, Ljava/util/Date;

    mul-long v12, v20, v14

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/util/Date;

    mul-long v12, v22, v14

    invoke-direct {v8, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v4

    aput-object v8, v9, v7

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->macid:Ljava/lang/String;

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->mid:Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v16 .. v23}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    add-int/lit8 v1, v10, 0x1

    .line 349
    new-array v1, v1, [F

    const/4 v5, 0x0

    .line 350
    :goto_0
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " "

    if-ge v5, v6, :cond_2

    .line 351
    :try_start_1
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    .line 355
    :cond_1
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v12

    .line 356
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v6

    .line 358
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v9, v9, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->TAG:Ljava/lang/String;

    move-wide/from16 v16, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initWalkTask load steps : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/util/Date;

    move-object/from16 p1, v8

    mul-long v7, v12, v16

    invoke-direct {v15, v7, v8}, Ljava/util/Date;-><init>(J)V

    const/4 v7, 0x5

    invoke-static {v15, v4, v7}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    sub-long v12, v12, v20

    long-to-int v7, v12

    .line 363
    div-int/2addr v7, v11

    .line 364
    aget v8, v1, v7

    int-to-float v6, v6

    add-float/2addr v8, v6

    aput v8, v1, v7

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v14, v16

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v8

    move-wide/from16 v16, v14

    .line 368
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "P_TEMP_STEP"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v8, v8, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->macid:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "0"

    invoke-virtual {v5, v6, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 369
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/16 v8, 0x18

    if-ne v10, v8, :cond_3

    const/4 v8, 0x1

    .line 372
    iput v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    .line 373
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v8, v8, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {v8, v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v6

    if-nez v6, :cond_5

    .line 374
    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    sub-int v6, v5, v6

    if-lez v6, :cond_5

    .line 376
    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    .line 378
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    div-long v8, v8, v16

    sub-long v12, v8, v20

    long-to-int v5, v12

    .line 379
    div-int/2addr v5, v11

    .line 380
    aget v11, v1, v5

    int-to-float v6, v6

    add-float/2addr v11, v6

    aput v11, v1, v5

    .line 382
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 383
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 384
    div-long v8, v8, v16

    invoke-virtual {v5, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 385
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x7

    if-ne v10, v6, :cond_4

    .line 391
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    div-long v8, v8, v16

    sub-long v12, v8, v20

    long-to-int v6, v12

    .line 392
    div-int/2addr v6, v11

    int-to-float v5, v5

    .line 393
    aget v11, v1, v6

    sub-float v11, v5, v11

    float-to-int v11, v11

    .line 394
    aput v5, v1, v6

    if-lez v11, :cond_5

    .line 396
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    .line 398
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 399
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 400
    div-long v8, v8, v16

    invoke-virtual {v5, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 401
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    :cond_4
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    div-long v8, v8, v16

    sub-long v12, v8, v20

    long-to-int v6, v12

    .line 407
    div-int/2addr v6, v11

    int-to-float v5, v5

    .line 408
    aget v11, v1, v6

    sub-float v11, v5, v11

    float-to-int v11, v11

    .line 409
    aput v5, v1, v6

    if-lez v11, :cond_5

    .line 411
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    .line 413
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 414
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 415
    div-long v8, v8, v16

    invoke-virtual {v5, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 416
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_5
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v9, v10, :cond_8

    .line 425
    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->dateMode:I

    invoke-virtual {v12, v13, v5, v9, v10}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v12

    .line 427
    aget v13, v1, v9

    cmpl-float v14, v13, v11

    if-lez v14, :cond_6

    move v11, v13

    .line 431
    :cond_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 432
    new-instance v15, Llecho/lib/hellocharts/model/SubcolumnValue;

    const/16 p1, 0x0

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v4, 0x7f06047c

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v15, v13, v4}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    const/4 v8, 0x1

    .line 433
    invoke-virtual {v15, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setTouchWidth(I)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    cmpl-float v4, v13, p1

    if-lez v4, :cond_7

    const/4 v8, 0x1

    .line 435
    invoke-virtual {v15, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setRound(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    goto :goto_3

    .line 437
    :cond_7
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f060443

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v15, v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->setColor(I)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 439
    :goto_3
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v4, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v4}, Llecho/lib/hellocharts/model/Column;-><init>()V

    .line 441
    invoke-virtual {v4, v14}, Llecho/lib/hellocharts/model/Column;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Column;

    const/4 v8, 0x1

    .line 442
    invoke-virtual {v4, v8}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    .line 443
    invoke-virtual {v4, v8}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    .line 444
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 447
    :cond_8
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v4, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v4, v11}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v4, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v11, v5

    invoke-direct {v4, v11}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    int-to-float v4, v10

    const v5, 0x3ca3d70a    # 0.02f

    mul-float v4, v4, v5

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 454
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 455
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v4

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 457
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    .line 458
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 459
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_9

    return-object v3

    .line 461
    :cond_9
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llecho/lib/hellocharts/model/AxisValue;

    invoke-virtual {v8}, Llecho/lib/hellocharts/model/AxisValue;->getValue()F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 464
    :cond_a
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F

    move-result v4

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    .line 465
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "FUNCTION_NEW_DISTANCE"

    invoke-virtual {v1, v4, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 468
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F

    move-result v4

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    .line 470
    :cond_b
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F

    move-result v4

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->calorie:F

    .line 472
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "FUNCTION_NEW_DISTANCE3"

    invoke-virtual {v1, v4, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 475
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    .line 476
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->calorie:F

    .line 479
    :cond_c
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 480
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    sget v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    mul-float v1, v1, v2

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    return-object v3

    .line 485
    :catch_0
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->TAG:Ljava/lang/String;

    const-string v2, "initWalkTask exception is raised."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 317
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7

    .line 492
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 494
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStep:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistance:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCalorie:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->calorie:F

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const v0, 0x7f13054a

    const v2, 0x7f130549

    if-nez p1, :cond_1

    .line 501
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    if-lez p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDetailInfo:Landroid/widget/TextView;

    const v0, 0x7f130212

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurSteps:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    div-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurCalories:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->calorie:F

    float-to-int v2, v2

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    div-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurDistance:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 516
    :cond_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    if-lez p1, :cond_2

    .line 517
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 521
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStepUnit2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :goto_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDetailInfo:Landroid/widget/TextView;

    const v0, 0x7f130211

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 526
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurSteps:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f130210

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurCalories:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f13020e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->calorie:F

    float-to-int v5, v5

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurDistance:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f13020f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->distance:F

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :goto_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f130547

    const v4, 0x7f130544

    if-eqz v0, :cond_3

    const v0, 0x7f130547

    goto :goto_3

    :cond_3
    const v0, 0x7f130544

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 532
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistanceUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const v3, 0x7f130544

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 534
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    if-nez p1, :cond_5

    .line 535
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetSteps:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetCalories:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetDistance:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 540
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetSteps:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetCalories:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetDistance:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    :goto_5
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->stepAll:I

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->totalDays:I

    div-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x168

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)I

    move-result v0

    div-int/2addr p1, v0

    .line 546
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbStep:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 547
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbCalories:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 548
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbDistance:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 552
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 553
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 554
    iget v2, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    iput v2, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 555
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, p1}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 557
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 559
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 560
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 561
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 564
    :cond_6
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 569
    :cond_7
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 570
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 573
    :goto_6
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTime:Landroid/widget/TextView;

    div-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const-string p1, "%1$02d:%2$02d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;)Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

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

    .line 317
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
