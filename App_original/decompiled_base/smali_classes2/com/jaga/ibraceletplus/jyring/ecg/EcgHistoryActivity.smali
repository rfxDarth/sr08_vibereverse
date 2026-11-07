.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgHistoryActivity.java"

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

.field private dateNow:Ljava/util/Date;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private elvHeart:Landroid/widget/ExpandableListView;

.field private sessionid:Ljava/lang/String;

.field private simpleExpandableListAdapter:Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

.field private tvDate:Landroid/widget/TextView;

.field private tvHeart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alGroup:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alChild:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->sessionid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->bSync:Z

    .line 105
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alChild:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->initDate()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->sessionid:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alGroup:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alChild:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->simpleExpandableListAdapter:Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

    .line 83
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->initDate()V

    return-void
.end method

.method private initDate()V
    .locals 16

    move-object/from16 v0, p0

    .line 144
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alChild:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 206
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->sessionid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgRecords2(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 208
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 209
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    .line 210
    iget v10, v9, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    if-nez v10, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    iget-wide v10, v9, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->timestamp:J

    if-eqz v7, :cond_1

    .line 216
    iget v8, v9, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    const/4 v7, 0x0

    .line 220
    :cond_1
    new-instance v12, Ljava/util/Date;

    const-wide/16 v13, 0x3e8

    mul-long v10, v10, v13

    invoke-direct {v12, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12, v3, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v12

    .line 221
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    const/4 v10, 0x5

    invoke-static {v13, v3, v10}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v10

    .line 222
    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 225
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v1, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 234
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 236
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 238
    array-length v6, v4

    sub-int/2addr v6, v5

    :goto_2
    if-ltz v6, :cond_5

    .line 239
    aget-object v7, v4, v6

    .line 240
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 241
    const-string/jumbo v10, "tvTime"

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 245
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 246
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 247
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 248
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    .line 249
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 250
    iget v15, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "tvHealth"

    invoke-virtual {v14, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget v3, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v15, "tvHeart"

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v14, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v6

    const/4 v3, 0x1

    .line 253
    iget-wide v5, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->timestamp:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timestamp"

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v5, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_beatStop:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "t_beatStop"

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget v5, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_fastBeat:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "t_fastBeat"

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget v5, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_pvc:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "t_pvc"

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget v5, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_slowBeat:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "t_slowBeat"

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget v5, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_vesc:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "t_vesc"

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget v5, v13, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_arrhythmia:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "t_arrhythmia"

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v5, "type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move v6, v12

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_4
    move v12, v6

    const/4 v3, 0x1

    .line 265
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alChild:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v12, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 268
    :cond_5
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->simpleExpandableListAdapter:Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ecg/SessionListAdapter;->notifyDataSetChanged()V

    const/4 v3, 0x0

    .line 270
    :goto_4
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 271
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 274
    :cond_6
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->tvHeart:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a0165

    .line 50
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->elvHeart:Landroid/widget/ExpandableListView;

    const v0, 0x7f0a0489

    .line 51
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0a04b5

    .line 52
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->tvHeart:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 109
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

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    .line 138
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->initData()V

    return-void

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    .line 134
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->initData()V

    return-void

    .line 113
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->dateNow:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x2

    .line 116
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v0, 0x5

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 118
    new-instance v2, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;Ljava/util/Calendar;)V

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 130
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0036

    .line 42
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->setStatusEcg()V

    .line 45
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method
