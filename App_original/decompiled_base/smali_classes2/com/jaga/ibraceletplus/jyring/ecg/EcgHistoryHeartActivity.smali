.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgHistoryHeartActivity.java"

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

.field private dateNow:Ljava/util/Date;

.field private elvHeart:Landroid/widget/ExpandableListView;

.field private ivCalendar:Landroid/widget/ImageView;

.field private ivLeft:Landroid/widget/ImageView;

.field private ivRight:Landroid/widget/ImageView;

.field private simpleExpandableListAdapter:Landroid/widget/SimpleExpandableListAdapter;

.field private tvDate:Landroid/widget/TextView;

.field private tvHeart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alGroup:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alChild:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->initDate()V

    return-void
.end method

.method private initData()V
    .locals 10

    .line 69
    new-instance v0, Landroid/widget/SimpleExpandableListAdapter;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alGroup:Ljava/util/ArrayList;

    const-string/jumbo v3, "tvTime"

    const-string/jumbo v4, "tvHeart"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f0a0535

    const v5, 0x7f0a04b5

    filled-new-array {v3, v5}, [I

    move-result-object v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alChild:Ljava/util/ArrayList;

    const-string/jumbo v3, "tvHeartAvg"

    const-string/jumbo v7, "tvHeartMax"

    const-string/jumbo v8, "tvHeartMin"

    filled-new-array {v8, v3, v7}, [Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0a04b6

    const v7, 0x7f0a04b8

    const v9, 0x7f0a04b9

    filled-new-array {v9, v3, v7}, [I

    move-result-object v9

    const v3, 0x7f0d00a6

    const v7, 0x7f0d00a5

    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->simpleExpandableListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    .line 74
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->elvHeart:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 76
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->initDate()V

    return-void
.end method

.method private initDate()V
    .locals 13

    .line 116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alChild:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v8, v0, v3

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v3

    const-wide/16 v5, 0x1

    sub-long v10, v0, v5

    .line 124
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->macid:Ljava/lang/String;

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->mid:Ljava/lang/String;

    invoke-virtual/range {v5 .. v11}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgRecords2(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    const-string v1, "0"

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 126
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    .line 127
    iget-wide v7, v6, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->timestamp:J

    .line 128
    iget v9, v6, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    .line 130
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 131
    new-instance v11, Ljava/util/Date;

    mul-long v7, v7, v3

    invoke-direct {v11, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 132
    const-string/jumbo v8, "tvTime"

    invoke-virtual {v10, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v7, "tvHeart"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alGroup:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_0

    .line 136
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_0
    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgid:Ljava/lang/String;

    .line 139
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v7, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgHistorys2(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 141
    const-string v7, ""

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 142
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v9, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->heart:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 146
    :cond_1
    sget-object v6, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->ECG_SPLIT:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 151
    :goto_2
    array-length v12, v6

    if-ge v7, v12, :cond_6

    .line 152
    aget-object v12, v6, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 153
    aget-object v12, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_5

    if-le v12, v10, :cond_2

    move v10, v12

    :cond_2
    if-eqz v11, :cond_3

    if-ge v12, v11, :cond_4

    :cond_3
    move v11, v12

    :cond_4
    add-int/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-lez v8, :cond_7

    .line 168
    div-int/2addr v9, v8

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    .line 170
    :goto_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string/jumbo v7, "tvHeartMin"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v7, "tvHeartAvg"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v7, "tvHeartMax"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->alChild:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 180
    :cond_8
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->simpleExpandableListAdapter:Landroid/widget/SimpleExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleExpandableListAdapter;->notifyDataSetChanged()V

    .line 182
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->tvHeart:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a0165

    .line 51
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->elvHeart:Landroid/widget/ExpandableListView;

    const v0, 0x7f0a0489

    .line 52
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0a01db

    .line 53
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->ivCalendar:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04b5

    .line 55
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->tvHeart:Landroid/widget/TextView;

    const v0, 0x7f0a01f6

    .line 56
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->ivLeft:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0206

    .line 58
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->ivRight:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 81
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

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    .line 110
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->initData()V

    return-void

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    .line 106
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->initData()V

    return-void

    .line 85
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->dateNow:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x2

    .line 88
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v0, 0x5

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 90
    new-instance v2, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;Ljava/util/Calendar;)V

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 102
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0037

    .line 43
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->setStatusEcg()V

    .line 46
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->initView()V

    .line 47
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;->initData()V

    return-void
.end method
