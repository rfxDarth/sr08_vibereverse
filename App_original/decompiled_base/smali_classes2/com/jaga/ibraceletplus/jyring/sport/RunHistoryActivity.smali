.class public Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "RunHistoryActivity.java"


# instance fields
.field private alhmRri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field lvRunHistory:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0293
    .end annotation
.end field

.field private sa:Landroid/widget/SimpleAdapter;

.field private totalCalor:F

.field private totalDistance:F

.field private totalTime:I

.field tvCalor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046e
    .end annotation
.end field

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047f
    .end annotation
.end field

.field tvDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field

.field tvUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0540
    .end annotation
.end field

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->unit:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalDistance:F

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalTime:I

    .line 45
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalCalor:F

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->reloadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)Landroid/widget/SimpleAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->sa:Landroid/widget/SimpleAdapter;

    return-object p0
.end method

.method private initData()V
    .locals 17

    move-object/from16 v1, p0

    .line 48
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->reloadData()V

    .line 50
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterRun;

    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    const-string/jumbo v15, "tvDistanceTotal"

    const-string/jumbo v16, "tvDistanceUnit"

    const-string v3, "ivType"

    const-string/jumbo v4, "tvDate"

    const-string/jumbo v5, "tvStart"

    const-string/jumbo v6, "tvSportType"

    const-string/jumbo v7, "tvPace"

    const-string/jumbo v8, "tvTime"

    const-string/jumbo v9, "tvDistance"

    const-string/jumbo v10, "tvUnit"

    const-string/jumbo v11, "tvCalor"

    const-string/jumbo v12, "tvStep"

    const-string/jumbo v13, "tvType"

    const-string/jumbo v14, "tvMonth"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xe

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    const v3, 0x7f0d00ae

    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterRun;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->sa:Landroid/widget/SimpleAdapter;

    return-void

    :array_0
    .array-data 4
        0x7f0a0216
        0x7f0a0489
        0x7f0a0516
        0x7f0a0515
        0x7f0a04ec
        0x7f0a0535
        0x7f0a0495
        0x7f0a0540
        0x7f0a046e
        0x7f0a0519
        0x7f0a053f
        0x7f0a04d7
        0x7f0a0497
        0x7f0a0498
    .end array-data
.end method

.method private initView()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvDistance:Landroid/widget/TextView;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalDistance:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvUnit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalTime:I

    const-string v2, ":"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvCalor:Landroid/widget/TextView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalCalor:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->lvRunHistory:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->sa:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->lvRunHistory:Landroid/widget/ListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->lvRunHistory:Landroid/widget/ListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private reloadData()V
    .locals 25

    move-object/from16 v0, p0

    .line 58
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "DistanceUnit"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f130544

    .line 61
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->unit:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f130547

    .line 64
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->unit:Ljava/lang/String;

    .line 65
    sget v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    :goto_0
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "memberid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryRunRecord(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 73
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_b

    .line 74
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getType()I

    move-result v10

    const v11, 0x7f130137

    .line 76
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f100190

    const/4 v14, 0x1

    if-ne v10, v14, :cond_1

    .line 80
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_1
    if-nez v10, :cond_2

    const v11, 0x7f130454

    .line 84
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f100168

    goto :goto_2

    :cond_2
    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    const v11, 0x7f130441

    .line 88
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f100160

    goto :goto_2

    :cond_3
    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    const v11, 0x7f13043f

    .line 92
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f100116

    goto :goto_2

    :cond_4
    const/16 v11, 0xa

    if-ne v10, v11, :cond_5

    const v11, 0x7f130456

    .line 96
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f100184

    goto :goto_2

    :cond_5
    const/16 v11, 0x9

    if-ne v10, v11, :cond_6

    const v11, 0x7f13044a

    .line 100
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f100130

    .line 103
    :cond_6
    :goto_2
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getRunid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    move-object/from16 v19, v4

    mul-long v3, v15, v17

    invoke-direct {v11, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 104
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotaldistance()F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    mul-float v3, v3, v1

    .line 105
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalDistance:F

    add-float/2addr v4, v3

    iput v4, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalDistance:F

    .line 107
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotaltime()I

    move-result v4

    .line 108
    iget v15, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalTime:I

    add-int/2addr v15, v4

    iput v15, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalTime:I

    .line 110
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotalcalories()F

    move-result v15

    .line 111
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalCalor:F

    add-float/2addr v5, v15

    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->totalCalor:F

    .line 113
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHeartrateavg()I

    move-result v5

    .line 114
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual/range {v20 .. v20}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHeartratemax()I

    move-result v20

    .line 115
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual/range {v21 .. v21}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHasheart()I

    move-result v14

    .line 117
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual/range {v21 .. v21}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotalstep()I

    move-result v21

    .line 119
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    move/from16 v24, v1

    invoke-virtual/range {v23 .. v23}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHasstep()I

    move-result v1

    move/from16 v23, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 120
    :goto_3
    const-string v5, "bShowStep"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getRunid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "runid"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v1, "tvType"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "ivType"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v11}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v5, "tvDate"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v1, "tvSportType"

    invoke-virtual {v9, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v1, "tvStart"

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getPace()I

    move-result v1

    const-string v5, "\'"

    invoke-static {v1, v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "tvPace"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, ":"

    invoke-static {v4, v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "tvTime"

    invoke-virtual {v9, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v12, v3

    invoke-virtual {v1, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "tvDistance"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "tvCalor"

    const/4 v5, 0x1

    if-ne v14, v5, :cond_8

    .line 131
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    float-to-int v5, v15

    .line 134
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_4
    const-string v1, "heartrateavg"

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "heartratemax"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "hasheart"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v1, "tvUnit"

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->unit:Ljava/lang/String;

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v1, "tvMonth"

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v1, "tvDistanceTotal"

    move-object/from16 v5, v19

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v10, "tvDistanceUnit"

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->unit:Ljava/lang/String;

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v10, "tvStep"

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v22, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_9

    add-float/2addr v7, v3

    .line 148
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    if-lez v6, :cond_a

    .line 150
    new-instance v9, Ljava/util/Date;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getRunid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    mul-long v12, v12, v17

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 151
    invoke-virtual {v11}, Ljava/util/Date;->getMonth()I

    move-result v10

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v9

    if-eq v10, v9, :cond_a

    .line 152
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->alhmRri:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v6

    const/4 v7, 0x0

    :cond_a
    add-float/2addr v7, v3

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object v4, v5

    move/from16 v1, v24

    goto/16 :goto_1

    :cond_b
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0053

    .line 34
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->initData()V

    .line 37
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->initView()V

    return-void
.end method
