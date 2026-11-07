.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;
.super Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.source "DetailWalkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;
    }
.end annotation


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private ccd:Llecho/lib/hellocharts/model/ColumnChartData;

.field ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00cb
    .end annotation
.end field

.field private height:F

.field private iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

.field pbCalories:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0317
    .end annotation
.end field

.field pbDistance:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0319
    .end annotation
.end field

.field pbStep:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0320
    .end annotation
.end field

.field private step2Calorie:F

.field private step2Distance:F

.field private targetCalories:F

.field private targetDistance:F

.field private targetStep:I

.field tvCalorie:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0470
    .end annotation
.end field

.field tvCurCalories:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0485
    .end annotation
.end field

.field tvCurDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0486
    .end annotation
.end field

.field tvCurSteps:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0487
    .end annotation
.end field

.field tvDetailInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048d
    .end annotation
.end field

.field tvDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field tvDistanceUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0498
    .end annotation
.end field

.field tvEmpty:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049f
    .end annotation
.end field

.field tvStep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0519
    .end annotation
.end field

.field tvStepUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a051c
    .end annotation
.end field

.field tvStepUnit2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a051d
    .end annotation
.end field

.field tvTargetCalories:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0528
    .end annotation
.end field

.field tvTargetDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0529
    .end annotation
.end field

.field tvTargetSteps:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a052c
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

.field private weight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetStep:I

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetCalories:F

    .line 107
    new-instance v1, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 108
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    .line 109
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    .line 110
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Distance:F

    .line 130
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Calorie:F

    .line 131
    const-string v0, "0"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->unit:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;IIIII)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;)Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    return p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    return p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->unit:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetStep:I

    return p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetCalories:F

    return p0
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    return p0
.end method

.method private initData()V
    .locals 8

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string v1, "jringWALK_DATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    const-string v2, "170"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    .line 141
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Distance:F

    .line 143
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "FUNCTION_NEW_DISTANCE"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Distance:F

    .line 148
    :cond_0
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Distance:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    invoke-static {v2, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Calorie:F

    .line 150
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "FUNCTION_NEW_DISTANCE3"

    invoke-virtual {v2, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Distance:F

    .line 154
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Calorie:F

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Distance:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->step2Calorie:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "DistanceUnit"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->unit:Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "P_GOAL_STEP"

    const-string v5, "4000"

    invoke-virtual {v3, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetStep:I

    .line 164
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    if-eqz v0, :cond_2

    .line 166
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetStep:I

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v0, v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    .line 168
    :cond_2
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    invoke-static {v0, v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetCalories:F

    if-eqz v2, :cond_3

    .line 170
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetStep:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    .line 171
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetCalories:F

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->unit:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    sget v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    .line 178
    :cond_4
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 180
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 181
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 182
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    .line 183
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 185
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 186
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 187
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 188
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    .line 189
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setInside(Z)Llecho/lib/hellocharts/model/Axis;

    const/16 v3, 0x8

    .line 190
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setLineDash(I)V

    .line 191
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 192
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 193
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 195
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundAuto(Z)V

    .line 196
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelTouchAll(Z)V

    const/16 v6, 0xe10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x18

    move-object v2, p0

    .line 199
    invoke-direct/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V

    .line 201
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V

    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f06047c

    .line 289
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->setRange(I)V

    .line 291
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setZoomEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    .line 299
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetSteps:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetStep:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetCalories:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetCalories:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetDistance:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetDistance:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvUnit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->unit:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f130547

    const v4, 0x7f130544

    if-eqz v1, :cond_0

    const v1, 0x7f130547

    goto :goto_0

    :cond_0
    const v1, 0x7f130544

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistanceUnit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0x7f130544

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetSteps:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetCalories:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTargetDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistanceUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initWalk(IIIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 596
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 597
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

    .line 599
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    mul-long v7, v11, v5

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    mul-long v5, v5, v13

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

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

    .line 600
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->mid:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    .line 603
    new-array v4, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 604
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 605
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v8

    .line 606
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v10

    add-int/2addr v7, v10

    sub-long/2addr v8, v11

    long-to-int v9, v8

    .line 612
    div-int v9, v9, p4

    .line 613
    aget v8, v4, v9

    int-to-float v10, v10

    add-float/2addr v8, v10

    aput v8, v4, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 616
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 617
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v2, :cond_3

    move/from16 v12, p5

    .line 620
    invoke-virtual {v0, v12, v6, v10, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v13

    .line 622
    aget v14, v4, v10

    cmpl-float v16, v14, v11

    if-lez v16, :cond_1

    move v11, v14

    :cond_1
    const/16 p1, 0x0

    .line 626
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 627
    new-instance v5, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v3, 0x7f06047c

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v5, v14, v3}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    const/4 v3, 0x1

    .line 628
    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v15

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->setTouchWidth(I)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    cmpl-float v3, v14, p1

    if-lez v3, :cond_2

    const/4 v3, 0x1

    .line 630
    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->setRound(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    .line 632
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060443

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v5, v13}, Llecho/lib/hellocharts/model/SubcolumnValue;->setColor(I)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 634
    :goto_2
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v5, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v5}, Llecho/lib/hellocharts/model/Column;-><init>()V

    .line 636
    invoke-virtual {v5, v9}, Llecho/lib/hellocharts/model/Column;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Column;

    .line 637
    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    .line 638
    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    .line 639
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v15, 0x0

    goto :goto_1

    .line 642
    :cond_3
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v3

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 643
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 644
    new-instance v4, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v4, v11}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v4, Llecho/lib/hellocharts/model/AxisValue;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v11, v5

    invoke-direct {v4, v11}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    int-to-float v2, v2

    const v4, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, v4

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 649
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v2, v8}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 650
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 652
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccd:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 653
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 654
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llecho/lib/hellocharts/model/AxisValue;

    invoke-virtual {v6}, Llecho/lib/hellocharts/model/AxisValue;->getValue()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 657
    :cond_4
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    .line 658
    iget v3, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    iput v3, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 659
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 661
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvStep:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurSteps:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit16 v2, v7, 0x168

    .line 663
    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->targetStep:I

    div-int/2addr v2, v3

    .line 664
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbStep:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 665
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbCalories:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 666
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->pbDistance:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 668
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v7, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v2

    .line 669
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "FUNCTION_NEW_DISTANCE"

    const-string v6, "false"

    invoke-virtual {v3, v5, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 672
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v7, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v2

    .line 674
    :cond_5
    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v3

    .line 676
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v8, "FUNCTION_NEW_DISTANCE3"

    invoke-virtual {v5, v8, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 679
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->height:F

    invoke-static {v7, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v2

    .line 680
    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->weight:F

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v3

    .line 683
    :cond_6
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->unit:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 684
    sget v5, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    mul-float v2, v2, v5

    .line 686
    :cond_7
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDistance:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v2, v7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurDistance:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCalorie:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvCurCalories:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v5, v16

    const/16 v17, 0x1

    aput-object v4, v5, v17

    const-string v3, "%1$02d:%2$02d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 693
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvEmpty:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 695
    :cond_8
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvEmpty:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initWalkTask(IIIII)V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->cancel(Z)Z

    .line 588
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$1;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->iTask:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;

    .line 589
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

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$initWalkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setStep(I)V
    .locals 0

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

    .line 254
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 257
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    .line 259
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_1

    .line 261
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    .line 262
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V
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

    .line 265
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 267
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    .line 268
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    .line 269
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 270
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V

    return-void

    .line 273
    :cond_2
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    if-ne p1, v1, :cond_3

    .line 274
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    .line 275
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    .line 277
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 278
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 279
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_0
    return-void

    :catch_2
    move-exception v0

    :goto_1
    move-object p1, v0

    .line 283
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

    .line 222
    :try_start_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    .line 223
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_0

    .line 225
    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    .line 226
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/16 v5, 0xe10

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V
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

    .line 229
    :try_start_3
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 231
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v2, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    .line 232
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    .line 233
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 234
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%s ~ %s"

    iget-object v3, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const/4 v9, 0x7

    const/4 v10, 0x7

    const v11, 0x15180

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V

    return-void

    .line 237
    :cond_1
    iget p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    if-ne p1, v1, :cond_2

    .line 238
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iget v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->first:I

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    .line 239
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    .line 241
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v8

    .line 242
    iget-object p1, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateEnd:Ljava/util/Date;

    iget-object v0, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->dateStart:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 243
    iget v12, v7, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->indexRange:I

    const v11, 0x15180

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initWalkTask(IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    return-void

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0031

    .line 93
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 97
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initData()V

    .line 98
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 103
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onDestroy()V

    return-void
.end method
