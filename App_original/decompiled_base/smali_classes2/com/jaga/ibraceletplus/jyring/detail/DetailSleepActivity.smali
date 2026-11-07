.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;
.super Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.source "DetailSleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;,
        Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;
    }
.end annotation


# instance fields
.field private ccd:Llecho/lib/hellocharts/model/ColumnChartData;

.field ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00cb
    .end annotation
.end field

.field private height:F

.field private lcd:Llecho/lib/hellocharts/model/LineChartData;

.field lcvSleep:Llecho/lib/hellocharts/view/LineChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a022d
    .end annotation
.end field

.field llDay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024f
    .end annotation
.end field

.field llSleepEndTime:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0278
    .end annotation
.end field

.field llSleepStartTime:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0279
    .end annotation
.end field

.field llWeek:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0287
    .end annotation
.end field

.field pbSleepAwake:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031d
    .end annotation
.end field

.field pbSleepDeep:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031e
    .end annotation
.end field

.field pbSleepLight:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031f
    .end annotation
.end field

.field tvAwakeSleep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0458
    .end annotation
.end field

.field tvAwakeSleepTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0459
    .end annotation
.end field

.field tvDeepSleep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048a
    .end annotation
.end field

.field tvDeepSleepTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048b
    .end annotation
.end field

.field tvEmpty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049f
    .end annotation
.end field

.field tvLightSleep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c5
    .end annotation
.end field

.field tvLightSleepTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c6
    .end annotation
.end field

.field tvSleepEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a050c
    .end annotation
.end field

.field tvSleepQuality:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a050d
    .end annotation
.end field

.field tvSleepStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a050e
    .end annotation
.end field

.field tvSleepTotalDuration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a050f
    .end annotation
.end field

.field tvTotalSleepTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a053e
    .end annotation
.end field

.field private weight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;-><init>()V

    .line 98
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/LineChartData;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    .line 99
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->height:F

    .line 101
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->weight:F

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;IIIII)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initSleepTask(IIIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;IIIII)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initWalkTask(IIIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/LineChartData;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object p0
.end method

.method private initData()V
    .locals 9

    .line 104
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    const-string v2, "170"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->height:F

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->weight:F

    .line 109
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 111
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 112
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 113
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    .line 114
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/model/LineChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 115
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 117
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 118
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 119
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    .line 121
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setInside(Z)Llecho/lib/hellocharts/model/Axis;

    const/16 v4, 0x8

    .line 122
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setLineDash(I)V

    .line 123
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 124
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/model/LineChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 125
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelBackgroundAuto(Z)V

    .line 128
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelBackgroundColor(I)V

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcd:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/LineChartData;->setValueLabelTouchAll(Z)V

    .line 132
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 133
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundAuto(Z)V

    .line 135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundColor(I)V

    .line 136
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelTouchAll(Z)V

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x5a0

    move-object v3, p0

    .line 138
    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initSleepTask(IIIII)V

    .line 140
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V

    return-void
.end method

.method private initSleepTask(IIIII)V
    .locals 3

    .line 706
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;)V

    .line 707
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initSleepTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f060278

    .line 250
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->setRange(I)V

    .line 252
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setZoomEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    .line 254
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->lcvSleep:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setZoomEnabled(Z)V

    return-void
.end method

.method private initWalkTask(IIIII)V
    .locals 3

    .line 519
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;)V

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$initWalkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 216
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 219
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    .line 221
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_1

    .line 223
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    .line 224
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initSleepTask(IIIII)V
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

    .line 227
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 229
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    .line 230
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    .line 231
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 232
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initWalkTask(IIIII)V

    return-void

    .line 235
    :cond_2
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    if-ne p1, v1, :cond_3

    .line 236
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    .line 237
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    .line 239
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 240
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 241
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initWalkTask(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_0
    return-void

    :catch_2
    move-exception v0

    :goto_1
    move-object p1, v0

    .line 245
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

    .line 184
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    .line 185
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_0

    .line 187
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    .line 188
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initSleepTask(IIIII)V
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

    .line 191
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 193
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    .line 194
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    .line 195
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 196
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initWalkTask(IIIII)V

    return-void

    .line 199
    :cond_1
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    if-ne p1, v1, :cond_2

    .line 200
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    .line 201
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    .line 203
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 204
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 205
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initWalkTask(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    return-void

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002e

    .line 89
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->setContentView(I)V

    .line 90
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 93
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initData()V

    .line 94
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initView()V

    return-void
.end method
