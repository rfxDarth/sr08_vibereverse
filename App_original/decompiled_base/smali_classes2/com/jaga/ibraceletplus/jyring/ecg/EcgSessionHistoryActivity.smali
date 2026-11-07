.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgSessionHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alChild:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private alGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private bSync:Z

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field chProgress:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d1
    .end annotation
.end field

.field private dateNow:Ljava/util/Date;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private elvHeart:Landroid/widget/ExpandableListView;

.field private simpleExpandableListAdapter:Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

.field srlSync:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03db
    .end annotation
.end field

.field private tvDate:Landroid/widget/TextView;

.field private tvHeart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alGroup:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alChild:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->bSync:Z

    .line 134
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->decimalFormat:Ljava/text/DecimalFormat;

    .line 135
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alChild:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->bSync:Z

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->bSync:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)Ljava/text/DecimalFormat;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->decimalFormat:Ljava/text/DecimalFormat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->initDate()V

    return-void
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    return-object p1
.end method

.method private initData()V
    .locals 3

    .line 90
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alGroup:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alChild:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->simpleExpandableListAdapter:Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

    .line 92
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->initDate()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    const-string v1, "jring.ECG_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->srlSync:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method private initDate()V
    .locals 29

    move-object/from16 v0, p0

    .line 217
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alChild:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 230
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->mid:Ljava/lang/String;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->macid:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgSession2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 232
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_3

    .line 233
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;

    .line 234
    iget v12, v11, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->count:I

    if-nez v12, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    iget-wide v12, v11, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->starttime:J

    if-eqz v9, :cond_1

    .line 240
    iget v10, v11, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->count:I

    const/4 v9, 0x0

    .line 244
    :cond_1
    new-instance v14, Ljava/util/Date;

    mul-long v12, v12, v4

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {v14, v3, v7}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v14

    .line 245
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/4 v12, 0x5

    invoke-static {v15, v3, v12}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v12

    .line 246
    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 249
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v1, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 258
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 260
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 262
    array-length v9, v6

    sub-int/2addr v9, v7

    :goto_2
    if-ltz v9, :cond_7

    .line 263
    aget-object v11, v6, v9

    .line 264
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 265
    const-string/jumbo v13, "tvTime"

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v14, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 269
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 270
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 271
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 272
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v17, v4

    move-object/from16 v4, v16

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;

    .line 273
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 274
    iget v3, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->type:I

    const-string/jumbo v7, "t_arrhythmia"

    move-object/from16 v19, v1

    const-string/jumbo v1, "t_vesc"

    move-object/from16 v20, v2

    const-string/jumbo v2, "t_slowBeat"

    move-object/from16 v21, v6

    const-string/jumbo v6, "t_pvc"

    move/from16 v22, v9

    const-string/jumbo v9, "t_fastBeat"

    move/from16 v23, v10

    const-string/jumbo v10, "t_beatStop"

    move-object/from16 v24, v11

    const-string/jumbo v11, "tvHeart"

    move/from16 v25, v14

    const-string/jumbo v14, "tvHealth"

    move-object/from16 v26, v12

    const-string v12, "--"

    move-object/from16 v27, v8

    const-string v8, "0"

    move-object/from16 v28, v13

    const/4 v13, 0x1

    if-ne v3, v13, :cond_5

    .line 275
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v13, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->sessionid:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgRecords2(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x0

    .line 277
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    .line 278
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    iget v12, v12, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartavg:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v5, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {v5, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 295
    invoke-virtual {v5, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v5, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {v5, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    .line 307
    invoke-virtual {v5, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {v5, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {v5, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v1, v28

    .line 317
    invoke-virtual {v5, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget v2, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tvCount"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-wide v2, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->starttime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v2, Ljava/util/Date;

    iget-wide v6, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->starttime:J

    mul-long v6, v6, v17

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v3, v27

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "starttime"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v2, Ljava/util/Date;

    iget-wide v6, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->endtime:J

    mul-long v6, v6, v17

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "endtime"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget v2, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->type:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v2, v4, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->sessionid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "sessionid"

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v26

    .line 325
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v25, 0x1

    move-object v13, v1

    move-object v12, v2

    move-object v8, v3

    move-wide/from16 v4, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v6, v21

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-wide/from16 v17, v4

    move-object/from16 v21, v6

    move-object v3, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object v2, v12

    const/4 v13, 0x0

    .line 327
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alChild:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v22, -0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_7
    move/from16 v23, v10

    const/4 v13, 0x0

    .line 329
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->simpleExpandableListAdapter:Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;->notifyDataSetChanged()V

    const/4 v3, 0x0

    .line 331
    :goto_5
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 332
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 335
    :cond_8
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->tvHeart:Landroid/widget/TextView;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a0165

    .line 73
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    const v0, 0x7f0a0489

    .line 74
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0a04b5

    .line 75
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->tvHeart:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01db

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a01f6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0206

    if-eq p1, v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    .line 211
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->initData()V

    return-void

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    .line 207
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->initData()V

    return-void

    .line 186
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->dateNow:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 188
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x2

    .line 189
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v0, 0x5

    .line 190
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 191
    new-instance v2, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;Ljava/util/Calendar;)V

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 203
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method public onClickivSync()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->srlSync:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003a

    .line 65
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->setStatusEcg()V

    .line 68
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    .line 130
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onIvSyncClick()V
    .locals 10

    .line 165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v1, 0x0

    .line 166
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string v3, "FUNCTION_ECG"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 168
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->macid:Ljava/lang/String;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->mid:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v6, 0x0

    .line 168
    invoke-virtual/range {v3 .. v9}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgRecords2(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    iget-wide v0, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->timestamp:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 173
    :goto_0
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    long-to-int v1, v0

    invoke-interface {v2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getEcgHistory(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return-void
.end method
