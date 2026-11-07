.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;
.super Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.source "DetailSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;,
        Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;
    }
.end annotation


# instance fields
.field private alCalor:Ljava/util/ArrayList;
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

.field private ccd:Llecho/lib/hellocharts/model/ColumnChartData;

.field private ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

.field ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ca
    .end annotation
.end field

.field ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00cb
    .end annotation
.end field

.field private height:F

.field private iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

.field private iTaskSleep:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

.field private iaColorSport:[I

.field private iaIconSport:[I

.field private iaNameSport:[I

.field llDay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024f
    .end annotation
.end field

.field llWeek:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0287
    .end annotation
.end field

.field lvSport:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0295
    .end annotation
.end field

.field protected final maxSportModeCnt:I

.field private simpleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;

.field tvEmpty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049f
    .end annotation
.end field

.field private weight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;-><init>()V

    const/16 v0, 0x8b

    .line 58
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->maxSportModeCnt:I

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    .line 60
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTaskSleep:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    .line 73
    new-instance v1, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 74
    new-instance v1, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->height:F

    .line 76
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->weight:F

    .line 332
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iaColorSport:[I

    .line 452
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iaNameSport:[I

    .line 572
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iaIconSport:[I

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->alCalor:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x7f060430
        0x7f06040a
        0x7f060402
        0x7f0603bd
        0x7f060424
        0x7f0603ae
        0x7f060427
        0x7f0603b4
        0x7f060418
        0x7f060406
        0x7f060425
        0x7f06042e
        0x7f0603b2
        0x7f060435
        0x7f0603b6
        0x7f0603ba
        0x7f0603c8
        0x7f0603c9
        0x7f0603cb
        0x7f0603d6
        0x7f0603dc
        0x7f060407
        0x7f0603d1
        0x7f060419
        0x7f0603fd
        0x7f06042f
        0x7f0603ad
        0x7f0603c6
        0x7f0603ca
        0x7f0603d7
        0x7f0603dd
        0x7f0603da
        0x7f0603e1
        0x7f0603e7
        0x7f0603ea
        0x7f0603fa
        0x7f0603fb
        0x7f060400
        0x7f060401
        0x7f06040b
        0x7f06040d
        0x7f060420
        0x7f06042d
        0x7f060432
        0x7f0603c0
        0x7f0603c1
        0x7f0603d8
        0x7f06041d
        0x7f0603d3
        0x7f0603e8
        0x7f0603e9
        0x7f0603ed
        0x7f0603f2
        0x7f060426
        0x7f060434
        0x7f0603bb
        0x7f0603e3
        0x7f0603f1
        0x7f0603af
        0x7f0603b0
        0x7f0603ef
        0x7f06041c
        0x7f060421
        0x7f0603d2
        0x7f0603f7
        0x7f0603f8
        0x7f060416
        0x7f060433
        0x7f0603b1
        0x7f0603bf
        0x7f0603db
        0x7f0603df
        0x7f0603e4
        0x7f0603e5
        0x7f0603ee
        0x7f0603f5
        0x7f0603f9
        0x7f0603ff
        0x7f06040f
        0x7f060410
        0x7f06041e
        0x7f060422
        0x7f060423
        0x7f0603ce
        0x7f0603d5
        0x7f0603e0
        0x7f060403
        0x7f060404
        0x7f060411
        0x7f0603ec
        0x7f06042a
        0x7f0603ac
        0x7f0603c2
        0x7f0603c4
        0x7f0603c7
        0x7f0603cd
        0x7f0603e2
        0x7f0603e6
        0x7f0603f6
        0x7f060414
        0x7f060413
        0x7f060417
        0x7f060429
        0x7f0603f0
        0x7f0603b3
        0x7f0603fe
        0x7f060405
        0x7f0603bc
        0x7f0603de
        0x7f0603b7
        0x7f0603c3
        0x7f0603c5
        0x7f0603fc
        0x7f06041b
        0x7f06042c
        0x7f060431
        0x7f0603ab
        0x7f06042b
        0x7f0603b9
        0x7f0603cf
        0x7f06040e
        0x7f0603d9
        0x7f0603be
        0x7f06041f
        0x7f060428
        0x7f0603b5
        0x7f0603cc
        0x7f0603d0
        0x7f0603f3
        0x7f060408
        0x7f060409
        0x7f0603b8
        0x7f0603d4
        0x7f0603eb
        0x7f0603f4
        0x7f06040c
        0x7f060412
        0x7f060415
        0x7f06041a
    .end array-data

    :array_1
    .array-data 4
        0x7f130137
        0x7f130454
        0x7f130441
        0x7f13043f
        0x7f130456
        0x7f130438
        0x7f130457
        0x7f13043a
        0x7f130448
        0x7f130452
        0x7f130458
        0x7f13045a
        0x7f130439
        0x7f13045c
        0x7f13043b
        0x7f13043c
        0x7f130445
        0x7f130446
        0x7f130447
        0x7f13044a
        0x7f13044e
        0x7f130453
        0x7f130449
        0x7f130455
        0x7f130451
        0x7f13045b
        0x7f1300a8
        0x7f1300bb
        0x7f1300bd
        0x7f1300c8
        0x7f1300cc
        0x7f1300cb
        0x7f1300d0
        0x7f1300d6
        0x7f1300d9
        0x7f1300e9
        0x7f1300ea
        0x7f1300ee
        0x7f1300ef
        0x7f1300f5
        0x7f1300f7
        0x7f130108
        0x7f130112
        0x7f130114
        0x7f1300b5
        0x7f1300b6
        0x7f1300c9
        0x7f130105
        0x7f1300c4
        0x7f1300d7
        0x7f1300d8
        0x7f1300dc
        0x7f1300e1
        0x7f13010c
        0x7f130116
        0x7f1300a9
        0x7f1300d2
        0x7f1300e0
        0x7f1300aa
        0x7f1300ab
        0x7f1300de
        0x7f130104
        0x7f130109
        0x7f1300c3
        0x7f1300e6
        0x7f1300e7
        0x7f130100
        0x7f130115
        0x7f1300ac
        0x7f1300b4
        0x7f1300c7
        0x7f1300ce
        0x7f1300d3
        0x7f1300d4
        0x7f1300dd
        0x7f1300e4
        0x7f1300e8
        0x7f1300ed
        0x7f1300f9
        0x7f1300fa
        0x7f130106
        0x7f13010a
        0x7f13010b
        0x7f1300c0
        0x7f1300c6
        0x7f1300cf
        0x7f1300f0
        0x7f1300f1
        0x7f1300fb
        0x7f1300db
        0x7f13010f
        0x7f1300a7
        0x7f1300b7
        0x7f1300b9
        0x7f1300bc
        0x7f1300bf
        0x7f1300d1
        0x7f1300d5
        0x7f1300e5
        0x7f1300fd
        0x7f1300ff
        0x7f130101
        0x7f13010e
        0x7f1300df
        0x7f1300ad
        0x7f1300ec
        0x7f1300f2
        0x7f1300b2
        0x7f1300cd
        0x7f1300af
        0x7f1300b8
        0x7f1300ba
        0x7f1300eb
        0x7f130103
        0x7f130111
        0x7f130113
        0x7f1300a6
        0x7f130110
        0x7f1300b1
        0x7f1300c1
        0x7f1300f8
        0x7f1300ca
        0x7f1300b3
        0x7f130107
        0x7f13010d
        0x7f1300ae
        0x7f1300be
        0x7f1300c2
        0x7f1300e2
        0x7f1300f3
        0x7f1300f4
        0x7f1300b0
        0x7f1300c5
        0x7f1300da
        0x7f1300e3
        0x7f1300f6
        0x7f1300fc
        0x7f1300fe
        0x7f130102
    .end array-data

    :array_2
    .array-data 4
        0x7f100190
        0x7f100168
        0x7f100160
        0x7f100116
        0x7f100184
        0x7f100105
        0x7f100185
        0x7f10010b
        0x7f100176
        0x7f100164
        0x7f100187
        0x7f100190
        0x7f100109
        0x7f100195
        0x7f10010d
        0x7f100112
        0x7f100122
        0x7f100123
        0x7f100125
        0x7f100130
        0x7f100139
        0x7f100165
        0x7f10012b
        0x7f100177
        0x7f10015b
        0x7f10018f
        0x7f100104
        0x7f100120
        0x7f100124
        0x7f100132
        0x7f10013a
        0x7f100137
        0x7f10013e
        0x7f100144
        0x7f100147
        0x7f100158
        0x7f100159
        0x7f10015e
        0x7f10015f
        0x7f100169
        0x7f10016b
        0x7f10017f
        0x7f10018e
        0x7f100192
        0x7f100119
        0x7f10011a
        0x7f100133
        0x7f10017b
        0x7f10012d
        0x7f100145
        0x7f100146
        0x7f10014a
        0x7f10014f
        0x7f100186
        0x7f100194
        0x7f100113
        0x7f100140
        0x7f10014e
        0x7f100106
        0x7f100107
        0x7f10014c
        0x7f10017a
        0x7f100181
        0x7f10012c
        0x7f100155
        0x7f100156
        0x7f100174
        0x7f100193
        0x7f100108
        0x7f100118
        0x7f100138
        0x7f10013c
        0x7f100141
        0x7f100142
        0x7f10014b
        0x7f100152
        0x7f100157
        0x7f10015d
        0x7f10016d
        0x7f10016e
        0x7f10017c
        0x7f100182
        0x7f100183
        0x7f100128
        0x7f10012f
        0x7f10013d
        0x7f100161
        0x7f100162
        0x7f10016f
        0x7f100149
        0x7f10018b
        0x7f100103
        0x7f10011b
        0x7f10011d
        0x7f100121
        0x7f100127
        0x7f10013f
        0x7f100143
        0x7f100153
        0x7f100172
        0x7f100171
        0x7f100175
        0x7f10018a
        0x7f10014d
        0x7f10010a
        0x7f10015c
        0x7f100163
        0x7f100115
        0x7f10013b
        0x7f10010e
        0x7f10011c
        0x7f10011f
        0x7f10015a
        0x7f100179
        0x7f10018d
        0x7f100191
        0x7f100102
        0x7f10018c
        0x7f100111
        0x7f100129
        0x7f10016c
        0x7f100134
        0x7f100117
        0x7f10017d
        0x7f100188
        0x7f10010c
        0x7f100126
        0x7f10012a
        0x7f100150
        0x7f100166
        0x7f100167
        0x7f100110
        0x7f10012e
        0x7f100148
        0x7f100151
        0x7f10016a
        0x7f100170
        0x7f100173
        0x7f100178
    .end array-data
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;IIII)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initSleepTask(IIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;IIII)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initWalkTask(IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;[I[I[I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->setListSport([I[I[I)V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)[I
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iaColorSport:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->simpleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTaskSleep:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTaskSleep:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    return-object p1
.end method

.method private initData()V
    .locals 10

    .line 80
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    const-string v2, "170"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->height:F

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->weight:F

    .line 85
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 87
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06047d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 88
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 89
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    .line 90
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 91
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 93
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 94
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 95
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    .line 97
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setInside(Z)Llecho/lib/hellocharts/model/Axis;

    const/16 v3, 0x8

    .line 98
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setLineDash(I)V

    .line 99
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06047e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 100
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 101
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 103
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setStacked(Z)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 104
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 105
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccdSport:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 109
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundAuto(Z)V

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundColor(I)V

    .line 113
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelTouchAll(Z)V

    .line 114
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 116
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->alCalor:Ljava/util/ArrayList;

    const-string/jumbo v0, "tvStep"

    const-string/jumbo v3, "tvCalor"

    const-string v5, "ivMode"

    const-string/jumbo v7, "tvName"

    const-string/jumbo v8, "tvTime"

    filled-new-array {v5, v7, v8, v0, v3}, [Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f0a0519

    const v3, 0x7f0a046e

    const v5, 0x7f0a01fa

    const v7, 0x7f0a04da

    const v9, 0x7f0a0535

    filled-new-array {v5, v7, v9, v0, v3}, [I

    move-result-object v9

    const v7, 0x7f0d00b1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v4, v5, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->simpleAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;

    .line 119
    iget-object v0, v5, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->lvSport:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x5a0

    const/16 v3, 0x3c

    .line 120
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initSleepTask(IIII)V

    .line 122
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V

    return-void
.end method

.method private initSleep(IIII)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 836
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v4, 0x2

    aput-object v5, v7, v4

    const/4 v4, 0x3

    aput-object v6, v7, v4

    const-string v4, "initSleep %s %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v13, v4, v6

    .line 838
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    add-int v0, v0, p2

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long v15, v4, v6

    .line 839
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->macid:Ljava/lang/String;

    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->mid:Ljava/lang/String;

    const/16 v12, 0x64

    invoke-virtual/range {v9 .. v16}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v0, 0x5a0

    .line 841
    new-array v5, v0, [I

    .line 842
    new-array v7, v0, [I

    const/16 v0, 0x8b

    .line 843
    new-array v6, v0, [I

    .line 844
    new-array v4, v0, [I

    .line 845
    new-array v0, v0, [I

    const/4 v9, 0x0

    .line 846
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 847
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v10

    add-int/lit8 v10, v10, -0x65

    .line 848
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v11

    sub-long/2addr v11, v13

    long-to-int v12, v11

    div-int/lit8 v12, v12, 0x3c

    .line 849
    aput v10, v5, v12

    .line 850
    aget v11, v0, v10

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v15

    add-int/2addr v11, v15

    aput v11, v0, v10

    .line 851
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v11

    .line 852
    aget v15, v6, v10

    add-int/2addr v15, v11

    aput v15, v6, v10

    if-lez v11, :cond_0

    .line 854
    aget v15, v4, v10

    add-int/2addr v15, v3

    aput v15, v4, v10

    .line 855
    :cond_0
    aput v11, v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 858
    :cond_1
    invoke-direct {v1, v4, v0, v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->setListSport([I[I[I)V

    .line 861
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 862
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 863
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    .line 864
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v4

    if-nez v4, :cond_2

    .line 865
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 872
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_3

    .line 873
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v3

    if-nez v3, :cond_3

    .line 874
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 879
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_4

    .line 880
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    return v8

    .line 884
    :cond_4
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v8}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 887
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;

    move-wide v3, v13

    invoke-direct/range {v0 .. v7}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Ljava/util/ArrayList;J[I[I[I)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 925
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    return v8
.end method

.method private initSleepTask(IIII)V
    .locals 4

    .line 827
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTaskSleep:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->cancel(Z)Z

    .line 830
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTaskSleep:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;

    .line 831
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initSleepTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f10000c

    .line 149
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->setRange(I)V

    .line 151
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setZoomEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    .line 153
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setZoomEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    return-void
.end method

.method private initWalk(IIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 267
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v4, 0x2

    aput-object v5, v7, v4

    const/4 v5, 0x3

    aput-object v6, v7, v5

    const-string v5, "initWalk %s %s"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v15, v5, v9

    .line 270
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    add-int v1, v1, p2

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v9

    const-wide/16 v5, 0x1

    sub-long v17, v1, v5

    .line 272
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    mul-long v5, v15, v9

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/Date;

    mul-long v9, v9, v17

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v5, v6, v3

    const-string v2, "%s %s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->macid:Ljava/lang/String;

    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->mid:Ljava/lang/String;

    const/16 v14, 0x64

    invoke-virtual/range {v11 .. v18}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 275
    new-array v2, v4, [I

    const/16 v5, 0x8b

    aput v5, v2, v3

    aput p3, v2, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 276
    new-array v4, v4, [I

    aput v5, v4, v3

    aput p3, v4, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 277
    new-array v6, v5, [I

    .line 278
    new-array v7, v5, [I

    .line 279
    new-array v5, v5, [I

    const/4 v9, 0x0

    .line 280
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 281
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v10

    .line 282
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v12

    add-int/lit8 v12, v12, -0x65

    sub-long/2addr v10, v15

    long-to-int v11, v10

    .line 283
    div-int v11, v11, p4

    .line 284
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v10

    .line 285
    aget-object v13, v4, v11

    aput v10, v13, v12

    .line 287
    aget-object v11, v2, v11

    aget v13, v11, v12

    add-int/2addr v13, v10

    aput v13, v11, v12

    .line 289
    aget v11, v5, v12

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v13}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v13

    add-int/2addr v11, v13

    aput v11, v5, v12

    .line 290
    aget v11, v6, v12

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v13}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v13

    add-int/2addr v11, v13

    aput v11, v6, v12

    if-lez v10, :cond_0

    .line 292
    aget v10, v7, v12

    add-int/2addr v10, v3

    aput v10, v7, v12

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {v0, v7, v5, v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->setListSport([I[I[I)V

    .line 296
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_2

    .line 297
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    return-void

    .line 301
    :cond_2
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v8}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 302
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;

    invoke-direct {v3, v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;[[I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initWalkTask(IIII)V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->cancel(Z)Z

    .line 261
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setListSport([I[I[I)V
    .locals 4

    .line 931
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->alCalor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 932
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 933
    aget v1, p3, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 936
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 937
    const-string v2, "mode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iaIconSport:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ivMode"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iaNameSport:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tvName"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    aget v2, p3, v0

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tvCalor"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    aget v2, p3, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "calor"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    aget v2, p1, v0

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tvTime"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "tvStep"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->alCalor:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->alCalor:Ljava/util/ArrayList;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$4;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 65
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initData()V

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initView()V

    return-void
.end method
