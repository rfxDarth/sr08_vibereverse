.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.super Lcom/jaga/ibraceletplus/jyring/BaseFragment;
.source "FragmentMain.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoTask;,
        Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private alBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private alColorBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final alSport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final alhmMain:Ljava/util/ArrayList;
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

.field private axisMaxValue:F

.field private axisMinValue:F

.field private bBloodPressure:Z

.field private bClickShare:Z

.field bTest:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0076
    .end annotation
.end field

.field barChart:Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0082
    .end annotation
.end field

.field private br:Landroid/content/BroadcastReceiver;

.field private buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

.field bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ae
    .end annotation
.end field

.field private calcDataHandler:Landroid/os/Handler;

.field private calendar_due_date:Ljava/util/Calendar;

.field private calendar_start:Ljava/util/Calendar;

.field private calenderToday:Ljava/util/Calendar;

.field private ccdFatigue:Llecho/lib/hellocharts/model/ColumnChartData;

.field private ccdOxygen:Llecho/lib/hellocharts/model/ColumnChartData;

.field ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c8
    .end annotation
.end field

.field ccvSleepTiny:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c9
    .end annotation
.end field

.field ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ca
    .end annotation
.end field

.field private child_birthday_data:Ljava/lang/String;

.field private child_sex_data:Ljava/lang/String;

.field public colorDeep:I
    .annotation runtime Lbutterknife/BindColor;
        value = 0x7f060025
    .end annotation
.end field

.field public colorLight:I
    .annotation runtime Lbutterknife/BindColor;
        value = 0x7f060026
    .end annotation
.end field

.field public colorWake:I
    .annotation runtime Lbutterknife/BindColor;
        value = 0x7f06047f
    .end annotation
.end field

.field private countDownTimer:Landroid/os/CountDownTimer;

.field cvBloodPressure:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a010e
    .end annotation
.end field

.field cvBloodSugar:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a010f
    .end annotation
.end field

.field cvFemailReminder:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0112
    .end annotation
.end field

.field cvHeart:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0115
    .end annotation
.end field

.field cvOxygen:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0118
    .end annotation
.end field

.field cvPressure:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0119
    .end annotation
.end field

.field cvTemperature:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a011e
    .end annotation
.end field

.field private data:F

.field protected delay_show_ui_timeout:I

.field private due_date_data:Ljava/lang/String;

.field private dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0181
    .end annotation
.end field

.field gvMain:Landroid/widget/GridView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ab
    .end annotation
.end field

.field private final handlerClose:Landroid/os/Handler;

.field private height:F

.field private hmBackground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hmBarColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hrRest:F

.field private final iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private final iaColorSport:[I

.field private final iaNameSport:[I

.field private indexBlood:I

.field private indexCurrent:I

.field private indexEcg:I

.field private indexHealth:I

.field private indexHeart:I

.field private indexOxygen:I

.field private indexSleep:I

.field private indexSport:I

.field private indexStep:I

.field private indexTemperature:I

.field private isFragmentVisible:Z

.field private isTest:Z

.field ivAnimate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d4
    .end annotation
.end field

.field ivBloodOxygenAnimate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d8
    .end annotation
.end field

.field ivColor1:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01de
    .end annotation
.end field

.field ivColor2:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01df
    .end annotation
.end field

.field ivColor3:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01e0
    .end annotation
.end field

.field ivColor4:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01e1
    .end annotation
.end field

.field ivConnectState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01e6
    .end annotation
.end field

.field ivDeviceBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01eb
    .end annotation
.end field

.field ivDeviceRing:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ec
    .end annotation
.end field

.field ivHeartAnimate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01f2
    .end annotation
.end field

.field ivRingTip1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0209
    .end annotation
.end field

.field ivRingTip2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a020a
    .end annotation
.end field

.field private lastReceiveTimestamp:J

.field llBackground:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023e
    .end annotation
.end field

.field llBattery:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023f
    .end annotation
.end field

.field llBlood:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0241
    .end annotation
.end field

.field llCalor1:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0245
    .end annotation
.end field

.field llCalor2:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0246
    .end annotation
.end field

.field llCalor3:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0247
    .end annotation
.end field

.field llCalor4:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0248
    .end annotation
.end field

.field llConnectState:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024b
    .end annotation
.end field

.field llDetail:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0251
    .end annotation
.end field

.field llDeviceRing:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0253
    .end annotation
.end field

.field llEcg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0257
    .end annotation
.end field

.field llEcgXt:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0258
    .end annotation
.end field

.field llHeart:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0260
    .end annotation
.end field

.field llNoDevice:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0269
    .end annotation
.end field

.field llSleep:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0277
    .end annotation
.end field

.field llSport:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a027a
    .end annotation
.end field

.field llTvBlood:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0282
    .end annotation
.end field

.field llWalk:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0286
    .end annotation
.end field

.field private macid:Ljava/lang/String;

.field protected final maxSportModeCnt:I

.field private menstruation_length_data:I

.field private menstruation_period_data:I

.field private menstruation_start_data:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private oivIndicator:Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;

.field pbCalor:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0316
    .end annotation
.end field

.field pbDistance:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0319
    .end annotation
.end field

.field pbTime:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0321
    .end annotation
.end field

.field private period_ovulation_day:J

.field private progress:I

.field private progressSync:I

.field private receiveCnt:I

.field private final runnableCloseBlood:Ljava/lang/Runnable;

.field private final runnableCloseBloodPressure:Ljava/lang/Runnable;

.field private final runnableCloseHeart:Ljava/lang/Runnable;

.field private final runnableCloseTemperature:Ljava/lang/Runnable;

.field private saType:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private stepGoal:I

.field svContent:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0401
    .end annotation
.end field

.field private temperatureMax:F

.field private timeInterval:I

.field private timeProgress:I

.field private timeTest:I

.field private final timezone:Ljava/lang/String;

.field tvBPAdjust:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045a
    .end annotation
.end field

.field tvBattery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045d
    .end annotation
.end field

.field tvBlood:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0460
    .end annotation
.end field

.field tvBloodOxygen:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0463
    .end annotation
.end field

.field tvBloodOxygenCurrent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0465
    .end annotation
.end field

.field tvBloodPressureCurrent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0466
    .end annotation
.end field

.field tvCalor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046e
    .end annotation
.end field

.field tvCalorUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046f
    .end annotation
.end field

.field tvConnectState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047c
    .end annotation
.end field

.field tvCount1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0480
    .end annotation
.end field

.field tvCount2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0481
    .end annotation
.end field

.field tvCount3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0482
    .end annotation
.end field

.field tvCount4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0483
    .end annotation
.end field

.field tvDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field private tvEcgHealth:Landroid/widget/TextView;

.field private tvEcgHeart:Landroid/widget/TextView;

.field tvEmptySport:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a1
    .end annotation
.end field

.field tvFemailReminder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a5
    .end annotation
.end field

.field tvHeartCurrent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b7
    .end annotation
.end field

.field tvName1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04db
    .end annotation
.end field

.field tvName2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04dc
    .end annotation
.end field

.field tvName3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04dd
    .end annotation
.end field

.field tvName4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04de
    .end annotation
.end field

.field tvSleep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a050b
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field

.field tvToday:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a053d
    .end annotation
.end field

.field tvUnitDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0541
    .end annotation
.end field

.field tvWalkCalories:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0545
    .end annotation
.end field

.field tvWalkDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0547
    .end annotation
.end field

.field tvWalkStep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0549
    .end annotation
.end field

.field private type:I

.field private unbinder:Lbutterknife/Unbinder;

.field vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03d3
    .end annotation
.end field

.field private view:Landroid/view/View;

.field walkView:Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a1
    .end annotation
.end field

.field private weight:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 133
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;-><init>()V

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bClickShare:Z

    const/high16 v1, 0x42f00000    # 120.0f

    .line 315
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->axisMaxValue:F

    const/4 v1, 0x0

    .line 316
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->axisMinValue:F

    .line 581
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->handlerClose:Landroid/os/Handler;

    .line 582
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseHeart:Ljava/lang/Runnable;

    .line 595
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$2;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseBlood:Ljava/lang/Runnable;

    .line 610
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$3;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseBloodPressure:Ljava/lang/Runnable;

    .line 625
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$4;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseTemperature:Ljava/lang/Runnable;

    .line 640
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->isFragmentVisible:Z

    .line 642
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->progress:I

    .line 643
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->progressSync:I

    .line 644
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeProgress:I

    .line 645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alSport:Ljava/util/ArrayList;

    .line 646
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timezone:Ljava/lang/String;

    .line 1226
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->br:Landroid/content/BroadcastReceiver;

    .line 1380
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 1381
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    .line 1382
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    const/4 v2, -0x1

    .line 1384
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    .line 1385
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->stepGoal:I

    .line 1386
    const-string v3, ""

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    .line 1387
    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    .line 1388
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->height:F

    .line 1389
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->weight:F

    .line 1390
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->hrRest:F

    .line 1721
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    .line 1722
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    .line 1746
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->hmBackground:Ljava/util/HashMap;

    .line 1747
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->hmBarColor:Ljava/util/HashMap;

    const/16 v3, 0xa

    .line 2022
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->delay_show_ui_timeout:I

    .line 2156
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexStep:I

    .line 2157
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSleep:I

    .line 2158
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexHealth:I

    .line 2159
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexHeart:I

    .line 2160
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexBlood:I

    .line 2161
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexOxygen:I

    .line 2162
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSport:I

    const/4 v2, 0x5

    .line 2163
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexEcg:I

    const/4 v2, 0x6

    .line 2164
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexTemperature:I

    const/4 v2, 0x2

    .line 2649
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_length_data:I

    const/16 v2, 0x1e

    .line 2650
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_period_data:I

    .line 2651
    const-string v2, "2017-11-06"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_start_data:Ljava/lang/String;

    .line 2652
    const-string v3, "1"

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->child_sex_data:Ljava/lang/String;

    .line 2653
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->child_birthday_data:Ljava/lang/String;

    .line 2654
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->due_date_data:Ljava/lang/String;

    const/4 v2, 0x1

    .line 2655
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->type:I

    .line 3271
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->isTest:Z

    .line 3886
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->temperatureMax:F

    .line 4104
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->data:F

    .line 4105
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$14;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$14;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calcDataHandler:Landroid/os/Handler;

    .line 4328
    new-instance v1, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccdOxygen:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 4484
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bBloodPressure:Z

    .line 4486
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccdFatigue:Llecho/lib/hellocharts/model/ColumnChartData;

    const/16 v0, 0x8b

    .line 4627
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iaColorSport:[I

    .line 4747
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iaNameSport:[I

    .line 4866
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->maxSportModeCnt:I

    const v0, 0x3a980

    .line 5467
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeTest:I

    const/16 v0, 0x3e8

    .line 5468
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeInterval:I

    .line 5469
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeTest:I

    int-to-long v3, v0

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeInterval:I

    int-to-long v5, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;JJ)V

    iput-object v1, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->countDownTimer:Landroid/os/CountDownTimer;

    return-void

    nop

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
.end method

.method private DealWithDate(Ljava/util/Calendar;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 2688
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 2689
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 2690
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2692
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_start:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 2693
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    sub-long/2addr v1, v4

    const-wide/32 v4, 0x5265c00

    .line 2698
    div-long/2addr v1, v4

    .line 2701
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_length_data:I

    add-int/lit8 v5, v4, -0x1

    int-to-long v5, v5

    const/4 v7, 0x1

    cmp-long v8, v1, v5

    if-gtz v8, :cond_1

    return v7

    .line 2706
    :cond_1
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_period_data:I

    int-to-long v8, v5

    div-long v8, v1, v8

    .line 2707
    iget-wide v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->period_ovulation_day:J

    const-wide/16 v12, 0x13

    sub-long v14, v10, v12

    const-wide/16 v16, 0xa

    sub-long v10, v10, v16

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-ltz v6, :cond_3

    int-to-long v10, v5

    .line 2710
    rem-long v10, v1, v10

    sub-int/2addr v4, v7

    int-to-long v6, v4

    cmp-long v4, v10, v6

    if-gtz v4, :cond_2

    const/4 v1, 0x2

    return v1

    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    int-to-long v4, v5

    mul-long v8, v8, v4

    sub-long v14, v8, v12

    sub-long v10, v8, v16

    :cond_3
    cmp-long v4, v1, v14

    if-ltz v4, :cond_4

    cmp-long v4, v1, v10

    if-gtz v4, :cond_4

    const/4 v1, 0x3

    return v1

    :cond_4
    return v3
.end method

.method private SaveLog(Ljava/lang/String;)V
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-ui.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/JRing/log/"

    invoke-static {v0, p1, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/Runnable;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseHeart:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/Handler;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->handlerClose:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/Runnable;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseBlood:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/Runnable;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseBloodPressure:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->setBle(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->progress:I

    return p0
.end method

.method static synthetic access$1802(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->progress:I

    return p1
.end method

.method static synthetic access$1900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->updateType()V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->progressSync:I

    return p0
.end method

.method static synthetic access$2000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saType:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->progressSync:I

    return p1
.end method

.method static synthetic access$2200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->updateDeviceImageByType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/widget/TextView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEcgHeart:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->type:I

    return p0
.end method

.method static synthetic access$2900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/util/Calendar;)I
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->DealWithDate(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->height:F

    return p0
.end method

.method static synthetic access$3000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_due_date:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestHeart(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestBloodPressure(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestBloodSugar(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestTemp(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestStress(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestBloodOxygen(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    return p0
.end method

.method static synthetic access$3800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexStep:I

    return p0
.end method

.method static synthetic access$3900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeProgress:I

    return p0
.end method

.method static synthetic access$3902(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I
    .locals 0

    .line 133
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->weight:F

    return p0
.end method

.method static synthetic access$4000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->stepGoal:I

    return p0
.end method

.method static synthetic access$4100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timezone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/util/ArrayList;IIJF)Ljava/util/HashMap;
    .locals 0

    .line 133
    invoke-direct/range {p0 .. p6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getSleep(Ljava/util/ArrayList;IIJF)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIIII)V
    .locals 0

    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initHeart(IIIII)V

    return-void
.end method

.method static synthetic access$5600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/view/View;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initBloodSugarData(IIII)V

    return-void
.end method

.method static synthetic access$5900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initTempData(IIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alSport:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initStressData(IIII)V

    return-void
.end method

.method static synthetic access$6300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->temperatureMax:F

    return p0
.end method

.method static synthetic access$6302(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;F)F
    .locals 0

    .line 133
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->temperatureMax:F

    return p1
.end method

.method static synthetic access$6400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/Handler;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calcDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->data:F

    return p0
.end method

.method static synthetic access$6602(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;F)F
    .locals 0

    .line 133
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->data:F

    return p1
.end method

.method static synthetic access$6700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initBpData(IIII)V

    return-void
.end method

.method static synthetic access$6800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIIII)V
    .locals 0

    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initOxygen(IIIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSport:I

    return p0
.end method

.method static synthetic access$7100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)[I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iaColorSport:[I

    return-object p0
.end method

.method static synthetic access$7200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)[I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iaNameSport:[I

    return-object p0
.end method

.method static synthetic access$7400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->timeInterval:I

    return p0
.end method

.method static synthetic access$7500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/CountDownTimer;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$7602(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->isTest:Z

    return p1
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initMain()V

    return-void
.end method

.method private autoSync()V
    .locals 14

    const-string/jumbo v0, "set appId before autoSync : "

    .line 384
    const-string v1, "call FragmentMain::autoSync"

    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jringACTION_START_HISTORY_END"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v4, v1

    .line 388
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-boolean v10, v10, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bSync:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v9, v11, v8

    sget-object v9, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v13, 0x2

    aput-object v9, v11, v13

    const/4 v9, 0x3

    aput-object v10, v11, v9

    const-string/jumbo v9, "sync: interval=%s mac=%s service=%s bSync=%s"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 391
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-boolean v9, v9, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bSync:Z

    if-eqz v9, :cond_1

    .line 392
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-wide/32 v10, 0xea60

    invoke-virtual {v9, v10, v11}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkSyncTimeout(J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 393
    const-string v0, "ignore new sync action when syncing"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    return-void

    .line 397
    :cond_0
    const-string/jumbo v9, "reset sync state when last sync time out"

    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 398
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v9, v12}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    :cond_1
    const-wide/16 v9, 0x12c

    cmp-long v11, v4, v9

    if-ltz v11, :cond_4

    .line 402
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v4, :cond_4

    .line 405
    new-instance v4, Ljava/util/Date;

    mul-long v1, v1, v6

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v12}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v6

    .line 406
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v12}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    sub-long/2addr v4, v1

    long-to-int v1, v4

    const v2, 0x15180

    .line 407
    div-int/2addr v1, v2

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 408
    :cond_2
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncEnd:J

    .line 414
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    mul-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncStart:J

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sync day "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-wide v4, v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncStart:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-wide v4, v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncEnd:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 418
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_3

    .line 420
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1, v8}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 421
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceTime()I

    .line 422
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneUniqueId(Lnet/grandcentrix/tray/AppPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppId(Ljava/lang/String;)I

    .line 425
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v8, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDataByDay(II)I

    .line 426
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "jring.SYNC_PROGRESS"

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_SYNC_HISTORY_DAY"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "autoSync exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ScrollView;Landroid/view/View$OnScrollChangeListener;)V

    .line 722
    :cond_0
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u6e05\u7406\u9996\u9875\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V

    .line 726
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1

    .line 727
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppState(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    return-void
.end method

.method private getSleep(Ljava/util/ArrayList;IIJF)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;IIJF)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 3236
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    move-wide v7, v5

    move-wide v9, v7

    .line 3245
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 3246
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v11

    .line 3247
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v12

    move/from16 v14, p2

    move/from16 v15, p3

    if-lt v11, v14, :cond_2

    if-gt v11, v15, :cond_2

    const-wide/16 v16, 0x3c

    cmp-long v11, v5, v2

    if-nez v11, :cond_0

    add-long v5, v5, v16

    move-wide v9, v12

    goto :goto_1

    :cond_0
    sub-long v7, v12, v7

    cmp-long v11, v7, v16

    if-lez v11, :cond_1

    sub-long v9, v9, p4

    long-to-float v7, v9

    mul-float v7, v7, p6

    .line 3253
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    long-to-float v5, v5

    mul-float v5, v5, p6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v9, v12

    move-wide/from16 v5, v16

    goto :goto_1

    :cond_1
    add-long/2addr v5, v7

    :goto_1
    move-wide v7, v12

    .line 3263
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_3

    sub-long v11, v9, p4

    long-to-float v11, v11

    mul-float v11, v11, p6

    .line 3264
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    long-to-float v12, v5

    mul-float v12, v12, p6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private initBloodSugarData(IIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 3424
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a0469

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3425
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a0089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;

    const/4 v4, 0x1

    .line 3428
    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setAutoAdjustYAxis(Z)V

    .line 3430
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v13, v5, v7

    .line 3431
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    add-int v1, v1, p2

    invoke-static {v5, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v7

    const-wide/16 v9, 0x1

    sub-long v15, v5, v9

    .line 3433
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    mul-long v9, v13, v7

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    mul-long v7, v7, v15

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v6, v7, v4

    const-string v4, "%s %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/16 v12, 0x12

    invoke-virtual/range {v9 .. v16}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 3437
    new-array v4, v2, [F

    .line 3438
    new-array v5, v2, [F

    .line 3439
    new-array v6, v2, [F

    .line 3440
    new-array v7, v2, [F

    const/4 v9, 0x0

    .line 3441
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 3442
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v15

    .line 3443
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v10

    const/16 p1, 0x0

    sub-long v11, v15, v13

    long-to-int v12, v11

    .line 3449
    div-int v12, v12, p4

    if-ltz v12, :cond_4

    if-lt v12, v2, :cond_0

    goto :goto_1

    .line 3453
    :cond_0
    aget v11, v4, v12

    add-float/2addr v11, v10

    aput v11, v4, v12

    cmpl-float v11, v10, p1

    if-lez v11, :cond_1

    .line 3455
    aget v15, v7, v12

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v15, v15, v16

    aput v15, v7, v12

    .line 3459
    :cond_1
    aget v15, v6, v12

    cmpl-float v15, v10, v15

    if-lez v15, :cond_2

    .line 3460
    aput v10, v6, v12

    :cond_2
    if-lez v11, :cond_4

    .line 3462
    aget v11, v5, v12

    cmpl-float v15, v11, p1

    if-eqz v15, :cond_3

    cmpg-float v11, v10, v11

    if-gez v11, :cond_4

    .line 3463
    :cond_3
    aput v10, v5, v12

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x0

    .line 3466
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "DistanceUnit"

    const-string v9, "0"

    invoke-virtual {v5, v6, v9}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3467
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 3469
    invoke-virtual {v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    return-void

    .line 3473
    :cond_6
    invoke-virtual {v3, v8}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    .line 3475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_8

    .line 3479
    aget v6, v7, v5

    cmpl-float v9, v6, p1

    if-lez v9, :cond_7

    .line 3480
    aget v9, v4, v5

    div-float/2addr v9, v6

    goto :goto_3

    .line 3482
    :cond_7
    aget v9, v4, v5

    .line 3489
    :goto_3
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3493
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3494
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_9

    .line 3495
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v5}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;-><init>(F)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3497
    :cond_9
    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setDayData(Ljava/util/List;)V

    .line 3498
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    return-void
.end method

.method private initBpData(IIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 4250
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a04a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4251
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a0335

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;

    .line 4254
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 4255
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

    .line 4257
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

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

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "%s %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 4261
    new-array v3, v2, [F

    .line 4262
    new-array v4, v2, [F

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4266
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 4267
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v13

    .line 4268
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v10

    .line 4269
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue2()F

    move-result v15

    sub-long/2addr v13, v11

    long-to-int v14, v13

    .line 4272
    div-int v14, v14, p4

    .line 4273
    aget v13, v3, v14

    cmpl-float v13, v10, v13

    if-lez v13, :cond_0

    .line 4274
    aput v10, v3, v14

    .line 4275
    :cond_0
    aget v13, v4, v14

    cmpl-float v16, v13, v5

    if-eqz v16, :cond_1

    cmpg-float v13, v15, v13

    if-gez v13, :cond_2

    .line 4276
    :cond_1
    aput v15, v4, v14

    :cond_2
    cmpl-float v13, v10, v8

    if-lez v13, :cond_3

    move v8, v10

    :cond_3
    cmpl-float v10, v9, v5

    if-eqz v10, :cond_4

    cmpg-float v10, v15, v9

    if-gez v10, :cond_5

    :cond_4
    move v9, v15

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4285
    :cond_6
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v8, 0x7f0a0095

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;

    .line 4288
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 4290
    invoke-virtual {v7, v1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->setVisibility(I)V

    return-void

    .line 4294
    :cond_7
    invoke-virtual {v7, v6}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->setVisibility(I)V

    .line 4296
    new-array v1, v2, [F

    .line 4297
    new-array v8, v2, [I

    .line 4298
    new-array v9, v2, [I

    :goto_1
    if-ge v6, v2, :cond_9

    .line 4303
    aget v10, v1, v6

    cmpl-float v11, v10, v5

    if-lez v11, :cond_8

    .line 4304
    aget v11, v3, v6

    div-float/2addr v11, v10

    .line 4305
    aget v12, v4, v6

    div-float/2addr v12, v10

    goto :goto_2

    .line 4308
    :cond_8
    aget v11, v3, v6

    .line 4309
    aget v12, v4, v6

    :goto_2
    float-to-int v10, v11

    .line 4312
    aput v10, v8, v6

    float-to-int v10, v12

    .line 4313
    aput v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4316
    :cond_9
    invoke-virtual {v7, v8, v9}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->setData([I[I)V

    return-void
.end method

.method private initBpDemoData()V
    .locals 3

    .line 2508
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;

    const/16 v1, 0xb

    .line 2509
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 2510
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 2511
    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureView;->setData([I[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x78
        0x76
        0x7d
        0x0
        0x82
        0x0
        0x0
        0x0
        0x0
        0x7d
        0x87
    .end array-data

    :array_1
    .array-data 4
        0x50
        0x4f
        0x52
        0x0
        0x55
        0x0
        0x0
        0x0
        0x0
        0x55
        0x5a
    .end array-data
.end method

.method private initCommon()V
    .locals 9

    .line 1660
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    .line 1661
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1663
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 1665
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    const-string v2, "170"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->height:F

    .line 1667
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->weight:F

    .line 1669
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    .line 1670
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getMacid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    .line 1671
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_GOAL_STEP"

    const-string v2, "4000"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->stepGoal:I

    .line 1675
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1676
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1677
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    .line 1679
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->lastReceiveTimestamp:J

    const/4 v0, 0x0

    .line 1681
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->receiveCnt:I

    .line 1683
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v1

    .line 1684
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    .line 1685
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llNoDevice:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1686
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llDeviceRing:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1687
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1690
    :cond_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llNoDevice:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1691
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llDeviceRing:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1692
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1694
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1695
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cid"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1696
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "did"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v5}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1697
    invoke-direct {p0, v4, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->updateDeviceImageByType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :goto_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "P_TEMP_BATTERY"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1700
    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1702
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "P_TEMP_BATTERY_STATE"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1702
    invoke-virtual {v4, v1, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1705
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;->setProgress(IFF)V

    .line 1706
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBattery:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1707
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init battery = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 1708
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;->setCharging(Z)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 1394
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initCommon()V

    .line 1396
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1397
    const-string v1, "jringBATTERYDATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1398
    const-string v1, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1399
    const-string v1, "jringWALK_DATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1400
    const-string v1, "jringRUN_DATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1401
    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_DATA_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1402
    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_DATE_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1403
    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_DATA_BY_DAY_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1404
    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_DATA_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1405
    const-string v1, "jringACTION_NOTIFY_BLE_SYNC_TOTAL_DATA_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1406
    const-string v1, "jringSENSORDATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1407
    const-string v1, "jringBLOOD_DATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1408
    const-string v1, "jringFUNCTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1409
    const-string v1, "jringTEMPERATURE_DATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    const-string v1, "jringACTION_NOTIFY_BLE_SET_TEMPERATURE_MODE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1411
    const-string v1, "jringACTION_NOTIFY_BLE_SET_TEMPERATURE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1412
    const-string v1, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1416
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initHeartControl()V

    .line 1417
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initOxygenControl()V

    return-void
.end method

.method private initEcg()V
    .locals 15

    .line 2135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const v1, 0x7f130255

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 2136
    const-string v3, "0"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEcgHeart:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2141
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v11, v4, v6

    .line 2142
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long v13, v4, v6

    .line 2143
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    invoke-virtual/range {v8 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgRecords2(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 2144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2145
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    .line 2146
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEcgHeart:Landroid/widget/TextView;

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2149
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v2, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    int-to-float v0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 2153
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private initFatigue(IIIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 4489
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 4490
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

    .line 4492
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

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

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "%s %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/16 v10, 0xd

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    .line 4516
    new-array v5, v4, [F

    .line 4517
    new-array v7, v4, [F

    .line 4518
    new-array v8, v4, [F

    .line 4519
    new-array v9, v4, [F

    const/16 p1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 4522
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v13, v10, :cond_8

    .line 4523
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v16

    .line 4524
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v10

    float-to-int v10, v10

    int-to-float v6, v10

    cmpl-float v18, v6, v14

    if-lez v18, :cond_0

    move v14, v6

    :cond_0
    if-lez v10, :cond_2

    cmpl-float v18, v15, p1

    if-eqz v18, :cond_1

    cmpg-float v18, v6, v15

    if-gez v18, :cond_2

    :cond_1
    move v15, v6

    :cond_2
    move/from16 v18, v4

    sub-long v3, v16, v11

    long-to-int v4, v3

    .line 4534
    div-int v4, v4, p4

    move/from16 v3, v18

    if-ltz v4, :cond_7

    if-lt v4, v3, :cond_3

    goto :goto_1

    .line 4537
    :cond_3
    aget v16, v5, v4

    add-float v16, v16, v6

    aput v16, v5, v4

    .line 4538
    aget v16, v7, v4

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    aput v16, v7, v4

    .line 4540
    aget v16, v8, v4

    cmpl-float v17, v16, p1

    if-eqz v17, :cond_4

    cmpg-float v16, v16, v6

    if-gez v16, :cond_5

    if-eqz v10, :cond_5

    .line 4541
    :cond_4
    aput v6, v8, v4

    .line 4544
    :cond_5
    aget v16, v9, v4

    cmpl-float v17, v16, p1

    if-eqz v17, :cond_6

    cmpl-float v16, v16, v6

    if-lez v16, :cond_7

    if-eqz v10, :cond_7

    .line 4545
    :cond_6
    aput v6, v9, v4

    :cond_7
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move v4, v3

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 4581
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_d

    .line 4585
    aget v4, v7, v3

    cmpl-float v6, v4, p1

    if-lez v6, :cond_9

    .line 4586
    aget v6, v5, v3

    div-float/2addr v6, v4

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    .line 4588
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4590
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-static {}, Llecho/lib/hellocharts/util/ChartUtils;->pickColor()I

    move-result v9

    invoke-direct {v8, v6, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    const/high16 v8, 0x42860000    # 67.0f

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_a

    .line 4592
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    sget v9, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    invoke-direct {v8, v6, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/high16 v8, 0x42080000    # 34.0f

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_b

    .line 4594
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    sget v9, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_GREEN:I

    invoke-direct {v8, v6, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    goto :goto_4

    :cond_b
    cmpl-float v8, v6, p1

    if-lez v8, :cond_c

    .line 4596
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    sget v9, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BLUE:I

    invoke-direct {v8, v6, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    goto :goto_4

    .line 4598
    :cond_c
    new-instance v8, Llecho/lib/hellocharts/model/SubcolumnValue;

    sget v9, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    invoke-direct {v8, v6, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    goto :goto_4

    .line 4600
    :goto_5
    invoke-virtual {v8, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;->setRound(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 4601
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4604
    new-instance v8, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v8, v4}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    const/4 v4, 0x0

    .line 4605
    invoke-virtual {v8, v4}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    .line 4606
    invoke-virtual {v8, v4}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    .line 4607
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4610
    :cond_d
    new-instance v2, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v2, v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private initFemaleData()V
    .locals 5

    const/4 v0, 0x1

    .line 2657
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->type:I

    .line 2658
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_length"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_length_data:I

    .line 2659
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_period"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_period_data:I

    .line 2660
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    const-string v2, "2022-10-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_start_data:Ljava/lang/String;

    .line 2661
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_sex"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->child_sex_data:Ljava/lang/String;

    .line 2662
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_birthday"

    const-string v2, "2017-11-06"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->child_birthday_data:Ljava/lang/String;

    .line 2663
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_due_date_start"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->due_date_data:Ljava/lang/String;

    .line 2665
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_start:Ljava/util/Calendar;

    .line 2666
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_due_date:Ljava/util/Calendar;

    .line 2667
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->sdf:Ljava/text/SimpleDateFormat;

    .line 2670
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_start_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 2671
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_start:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2672
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_due_date:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->due_date_data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2674
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 2676
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_start:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2677
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_start:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 2678
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 2679
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_due_date:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2680
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_due_date:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 2681
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calendar_due_date:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 2683
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->menstruation_period_data:I

    add-int/lit8 v0, v0, -0x13

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->period_ovulation_day:J

    return-void
.end method

.method private initHeart(IIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 3809
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a01ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;

    const/4 v4, 0x1

    .line 3812
    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setAutoAdjustYAxis(Z)V

    .line 3814
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v13, v5, v7

    .line 3815
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    add-int v1, v1, p2

    invoke-static {v5, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v7

    const-wide/16 v9, 0x1

    sub-long v15, v5, v9

    .line 3817
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    mul-long v9, v13, v7

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    mul-long v7, v7, v15

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v6, v7, v4

    const-string v4, "%s %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 3821
    new-array v4, v2, [F

    .line 3822
    new-array v5, v2, [F

    .line 3823
    new-array v6, v2, [F

    .line 3824
    new-array v7, v2, [F

    const/4 v9, 0x0

    .line 3825
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 3826
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v15

    .line 3827
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v10

    const/16 p1, 0x0

    sub-long v11, v15, v13

    long-to-int v12, v11

    .line 3833
    div-int v12, v12, p4

    if-ltz v12, :cond_4

    if-lt v12, v2, :cond_0

    goto :goto_1

    .line 3837
    :cond_0
    aget v11, v4, v12

    add-float/2addr v11, v10

    aput v11, v4, v12

    cmpl-float v11, v10, p1

    if-lez v11, :cond_1

    .line 3839
    aget v15, v7, v12

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v15, v15, v16

    aput v15, v7, v12

    .line 3843
    :cond_1
    aget v15, v6, v12

    cmpl-float v15, v10, v15

    if-lez v15, :cond_2

    .line 3844
    aput v10, v6, v12

    :cond_2
    if-lez v11, :cond_4

    .line 3846
    aget v11, v5, v12

    cmpl-float v15, v11, p1

    if-eqz v15, :cond_3

    cmpg-float v11, v10, v11

    if-gez v11, :cond_4

    .line 3847
    :cond_3
    aput v10, v5, v12

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x0

    .line 3850
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "DistanceUnit"

    const-string v9, "0"

    invoke-virtual {v5, v6, v9}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3851
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 3853
    invoke-virtual {v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    return-void

    .line 3857
    :cond_6
    invoke-virtual {v3, v8}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    .line 3859
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_8

    .line 3863
    aget v6, v7, v5

    cmpl-float v9, v6, p1

    if-lez v9, :cond_7

    .line 3864
    aget v9, v4, v5

    div-float/2addr v9, v6

    goto :goto_3

    .line 3866
    :cond_7
    aget v9, v4, v5

    .line 3873
    :goto_3
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3877
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3878
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_9

    .line 3879
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v5}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;-><init>(F)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3881
    :cond_9
    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setDayData(Ljava/util/List;)V

    .line 3882
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    return-void
.end method

.method private initHeartControl()V
    .locals 4

    .line 1422
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Birthday"

    const-string v2, "1990-01-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1424
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x4

    .line 1427
    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DetailHeartActivity initData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x12

    :goto_0
    sub-int/2addr v1, v0

    rsub-int v0, v1, 0xdc

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 1434
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->hrRest:F

    :cond_0
    return-void
.end method

.method private initMain()V
    .locals 8

    .line 2025
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    if-eqz v0, :cond_0

    .line 2026
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgressBottom(Ljava/util/HashMap;)V

    :cond_0
    const/4 v0, 0x0

    .line 2029
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initStepTask(Z)V

    .line 2032
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initSleepTask()V

    .line 2034
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initHeartTask(I)V

    .line 2038
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initBloodTask(IIII)V

    .line 2042
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSport:I

    if-ne v1, v2, :cond_1

    .line 2043
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initSportTask()V

    :cond_1
    const/4 v1, 0x0

    .line 2053
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initBloodSugarTask(F)V

    .line 2054
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initTempTask(I)V

    .line 2055
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initPressureTask(I)V

    const/16 v6, 0xe10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x18

    move-object v2, p0

    .line 2056
    invoke-direct/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initOxygen(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private initOxygen(IIIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 4331
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 4332
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

    .line 4334
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

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

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "%s %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/16 v10, 0xf

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    .line 4343
    new-array v5, v4, [F

    .line 4344
    new-array v7, v4, [F

    .line 4345
    new-array v8, v4, [F

    .line 4346
    new-array v9, v4, [F

    const/16 p1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 4349
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v13, v10, :cond_8

    .line 4350
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v16

    .line 4351
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v10

    float-to-int v10, v10

    int-to-float v6, v10

    cmpl-float v18, v6, v14

    if-lez v18, :cond_0

    move v14, v6

    :cond_0
    if-lez v10, :cond_2

    cmpl-float v18, v15, p1

    if-eqz v18, :cond_1

    cmpg-float v18, v6, v15

    if-gez v18, :cond_2

    :cond_1
    move v15, v6

    :cond_2
    move/from16 v18, v4

    sub-long v3, v16, v11

    long-to-int v4, v3

    .line 4361
    div-int v4, v4, p4

    move/from16 v3, v18

    if-ltz v4, :cond_7

    if-lt v4, v3, :cond_3

    goto :goto_1

    .line 4364
    :cond_3
    aget v16, v5, v4

    add-float v16, v16, v6

    aput v16, v5, v4

    .line 4365
    aget v16, v7, v4

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    aput v16, v7, v4

    .line 4367
    aget v16, v8, v4

    cmpl-float v17, v16, p1

    if-eqz v17, :cond_4

    cmpg-float v16, v16, v6

    if-gez v16, :cond_5

    if-eqz v10, :cond_5

    .line 4368
    :cond_4
    aput v6, v8, v4

    .line 4371
    :cond_5
    aget v16, v9, v4

    cmpl-float v17, v16, p1

    if-eqz v17, :cond_6

    cmpl-float v16, v16, v6

    if-lez v16, :cond_7

    if-eqz v10, :cond_7

    .line 4372
    :cond_6
    aput v6, v9, v4

    :cond_7
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move v4, v3

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 4414
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_a

    .line 4419
    aget v6, v7, v4

    cmpl-float v8, v6, p1

    if-lez v8, :cond_9

    .line 4420
    aget v8, v5, v4

    div-float/2addr v8, v6

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    float-to-int v6, v8

    .line 4422
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4424
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4426
    new-instance v9, Llecho/lib/hellocharts/model/SubcolumnValue;

    sget v10, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    invoke-direct {v9, v8, v10}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    const/4 v8, 0x1

    .line 4427
    invoke-virtual {v9, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setRound(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 4428
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4431
    new-instance v9, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v9, v6}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    const/4 v6, 0x0

    .line 4432
    invoke-virtual {v9, v6}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    .line 4433
    invoke-virtual {v9, v6}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    .line 4434
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4437
    :cond_a
    new-instance v2, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v2, v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>(Ljava/util/List;)V

    .line 4465
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->barChart:Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;->setData(Ljava/util/List;)V

    return-void
.end method

.method private initOxygenControl()V
    .locals 5

    .line 1440
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    const/4 v1, 0x0

    .line 1441
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 1442
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1443
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;

    .line 1444
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    .line 1445
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccdOxygen:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 1447
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 1448
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;

    .line 1449
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    const/4 v2, 0x1

    .line 1450
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    .line 1451
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setInside(Z)Llecho/lib/hellocharts/model/Axis;

    const/16 v4, 0x8

    .line 1452
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setLineDash(I)V

    .line 1453
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1454
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccdOxygen:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V

    .line 1456
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccdOxygen:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundAuto(Z)V

    .line 1457
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccdOxygen:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundColor(I)V

    .line 1458
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccdOxygen:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelTouchAll(Z)V

    return-void
.end method

.method private initSleep()V
    .locals 18

    move-object/from16 v0, p0

    .line 3110
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSleep:I

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x5a0

    const/16 v2, 0xe10

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3114
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initSleepWithParams(IIII)I

    move-result v1

    .line 3115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    aput-object v1, v6, v4

    const-string v1, "%1$02d:%2$02d"

    invoke-static {v2, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3118
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    .line 3119
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v3

    int-to-long v8, v3

    add-long v14, v1, v8

    .line 3120
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v5

    .line 3121
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long v16, v1, v3

    .line 3122
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-virtual/range {v10 .. v17}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    move-wide v4, v14

    const/4 v2, 0x1

    const/16 v3, 0x64

    const v6, 0x3b888889

    .line 3126
    invoke-direct/range {v0 .. v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getSleep(Ljava/util/ArrayList;IIJF)Ljava/util/HashMap;

    move-result-object v1

    .line 3127
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const v3, 0x7f1000c3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v7, v3, v4, v4}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 3129
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3130
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgressBottom(Ljava/util/HashMap;)V

    return-void
.end method

.method private initSleepWithParams(IIII)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3134
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v6

    int-to-long v6, v6

    add-long v12, v2, v6

    .line 3135
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    add-int v1, v1, p2

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v4

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepOffset()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long v14, v1, v3

    .line 3136
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-virtual/range {v8 .. v15}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 3138
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    const/4 v3, 0x0

    .line 3143
    new-array v4, v3, [I

    .line 3144
    new-array v5, v3, [I

    .line 3145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_0

    .line 3146
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v4, v12

    long-to-int v5, v4

    div-int/lit8 v5, v5, 0x3c

    .line 3147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v8, v12

    long-to-int v4, v8

    div-int/lit8 v4, v4, 0x3c

    sub-int/2addr v4, v5

    add-int/lit8 v6, v4, 0x1

    .line 3148
    new-array v6, v6, [I

    const/4 v8, 0x2

    .line 3150
    new-array v8, v8, [I

    aput v3, v8, v3

    aput v4, v8, v7

    move-object v4, v6

    goto :goto_0

    :cond_0
    move-object v8, v5

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 3152
    :goto_1
    array-length v9, v4

    if-ge v6, v9, :cond_1

    .line 3153
    aput v3, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3162
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v14, 0x50

    if-ge v6, v11, :cond_4

    .line 3163
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v15

    move-object v11, v4

    sub-long v3, v15, v12

    long-to-int v4, v3

    div-int/lit8 v4, v4, 0x3c

    sub-int/2addr v4, v5

    .line 3164
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v3

    .line 3165
    aput v3, v11, v4

    if-lt v3, v14, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    if-lt v3, v7, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object v4, v11

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move-object v11, v4

    add-int/2addr v9, v10

    .line 3183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 3184
    :goto_4
    array-length v4, v8

    if-ge v3, v4, :cond_6

    .line 3185
    aget v4, v8, v3

    .line 3187
    array-length v6, v8

    sub-int/2addr v6, v7

    if-ne v3, v6, :cond_5

    add-int/lit8 v6, v4, 0x1

    goto :goto_5

    :cond_5
    move v6, v4

    .line 3190
    :goto_5
    new-instance v10, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v4, v4

    invoke-direct {v10, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    add-int/2addr v6, v5

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3193
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 3194
    :goto_6
    array-length v6, v11

    if-ge v4, v6, :cond_a

    .line 3195
    aget v6, v11, v4

    add-int v8, v4, v5

    .line 3196
    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSleepLabel(I)Ljava/lang/String;

    move-result-object v8

    .line 3198
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-lt v6, v14, :cond_7

    .line 3200
    new-instance v6, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060025

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/high16 v13, 0x40400000    # 3.0f

    invoke-direct {v6, v13, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 3201
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f130426

    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v6

    .line 3200
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    if-lt v6, v7, :cond_8

    .line 3203
    new-instance v6, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060026

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v6, v13, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 3204
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f13042c

    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v6

    .line 3203
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    if-ltz v6, :cond_9

    .line 3206
    new-instance v6, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06047f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v6, v13, v12}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 3207
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f130434

    invoke-virtual {v0, v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;

    move-result-object v6

    .line 3206
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3210
    :cond_9
    :goto_7
    new-instance v6, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v6, v10}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    move-result-object v6

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 3213
    :cond_a
    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 3214
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v3

    invoke-virtual {v3, v1}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 3216
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 3218
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 3219
    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/4 v2, 0x0

    .line 3220
    iput v2, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 3221
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return v9
.end method

.method private initSport()V
    .locals 19

    move-object/from16 v0, p0

    .line 5045
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSport:I

    if-eq v1, v2, :cond_0

    return-void

    .line 5048
    :cond_0
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 5049
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    div-long/2addr v7, v5

    const-wide/16 v4, 0x1

    sub-long v13, v7, v4

    .line 5050
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/16 v10, 0x64

    invoke-virtual/range {v7 .. v14}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v4, 0x5a0

    .line 5052
    new-array v5, v4, [I

    .line 5053
    new-array v6, v4, [I

    const/16 v7, 0x8b

    .line 5054
    new-array v8, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 5057
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_2

    .line 5058
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v14}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v14

    add-int/lit8 v14, v14, -0x65

    .line 5059
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v15}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v15

    move-object/from16 v18, v5

    sub-long v4, v15, v11

    long-to-int v5, v4

    div-int/lit8 v5, v5, 0x3c

    .line 5060
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v4

    .line 5061
    aput v14, v18, v5

    .line 5062
    aput v4, v6, v5

    .line 5063
    aget v5, v8, v14

    add-int/2addr v5, v4

    aput v5, v8, v14

    add-int/2addr v13, v4

    if-lez v4, :cond_1

    add-int/lit8 v10, v10, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v18

    const/16 v4, 0x5a0

    goto :goto_0

    :cond_2
    move-object/from16 v18, v5

    .line 5068
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 5069
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->progress:I

    int-to-float v9, v9

    const/4 v14, 0x0

    invoke-virtual {v4, v2, v9, v14}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 5070
    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v4

    .line 5071
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    invoke-static {v13}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v10

    const v14, 0x7f130543

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v9, v10, v15, v14, v4}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5074
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 5075
    :goto_1
    const-string v10, "name"

    const-string v14, "color"

    const-string v15, "calor"

    if-ge v9, v7, :cond_3

    .line 5076
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 5077
    const-string v5, "mode"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5078
    aget v2, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5079
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iaColorSport:[I

    aget v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5080
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iaNameSport:[I

    aget v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5081
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x8

    const/16 v7, 0x8b

    goto :goto_1

    .line 5083
    :cond_3
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$15;

    invoke-direct {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$15;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5092
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor4:Landroid/widget/LinearLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x4

    if-lez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5093
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor3:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    const/4 v9, 0x4

    :goto_3
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5094
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_6

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    const/4 v9, 0x4

    :goto_4
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5095
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor1:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_7

    const/4 v7, 0x0

    :cond_7
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5097
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount4:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v13, v7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v13, v7

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v13, v7

    invoke-static {v13}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5098
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5099
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount3:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5100
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName3:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5101
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor2:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5102
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount2:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5103
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName2:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5104
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor1:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5105
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatCalor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5106
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 5109
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5110
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    .line 5112
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v4

    if-nez v4, :cond_8

    .line 5113
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 5120
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_6
    if-ltz v2, :cond_9

    .line 5121
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v4

    if-nez v4, :cond_9

    .line 5122
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 5127
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5128
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 5129
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEmptySport:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_a
    const/16 v2, 0x8

    const/4 v9, 0x0

    .line 5132
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEmptySport:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5133
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v9}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 5138
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 5139
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v4, v11

    const-wide/16 v13, 0x3c

    div-long/2addr v4, v13

    .line 5140
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v1

    sub-long/2addr v1, v11

    div-long/2addr v1, v13

    goto :goto_7

    :cond_b
    const-wide/16 v4, 0x0

    const-wide/16 v1, 0x59f

    .line 5143
    :goto_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5144
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/16 v11, 0x5a0

    :goto_8
    if-ge v10, v11, :cond_f

    int-to-long v12, v10

    cmp-long v14, v12, v4

    if-eqz v14, :cond_c

    cmp-long v14, v12, v1

    if-eqz v14, :cond_c

    const-wide/16 v14, 0x2

    .line 5146
    div-long v16, v4, v14

    div-long v14, v1, v14

    add-long v16, v16, v14

    cmp-long v14, v12, v16

    if-nez v14, :cond_d

    .line 5147
    :cond_c
    new-instance v12, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v13, v10

    invoke-direct {v12, v13}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getHM(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5149
    :cond_d
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5150
    aget v13, v18, v10

    .line 5151
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iaColorSport:[I

    aget v15, v15, v13

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 5152
    aget v15, v6, v10

    if-nez v15, :cond_e

    const/4 v13, 0x0

    goto :goto_9

    :cond_e
    aget v13, v8, v13

    .line 5153
    :goto_9
    new-instance v15, Llecho/lib/hellocharts/model/SubcolumnValue;

    int-to-float v13, v13

    invoke-direct {v15, v13, v14}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5154
    new-instance v13, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v13, v12}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 5155
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 5158
    :cond_f
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v6}, Llecho/lib/hellocharts/view/ColumnChartView;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 5159
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v8

    invoke-virtual {v8, v3}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 5160
    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 5161
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 5163
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    long-to-float v4, v4

    .line 5164
    iput v4, v3, Llecho/lib/hellocharts/model/Viewport;->left:F

    long-to-float v1, v1

    .line 5165
    iput v1, v3, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 5166
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method private initStressData(IIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 3712
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a04a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3713
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a0335

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;

    .line 3716
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v12, v4, v6

    .line 3717
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    add-int v1, v1, p2

    invoke-static {v4, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    const-wide/16 v8, 0x1

    sub-long v14, v4, v8

    .line 3719
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/util/Date;

    mul-long v8, v12, v6

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    mul-long v6, v6, v14

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const-string v5, "%s %s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/16 v11, 0x11

    invoke-virtual/range {v8 .. v15}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 3723
    new-array v5, v2, [I

    .line 3724
    new-array v6, v2, [I

    .line 3725
    new-array v8, v2, [I

    .line 3726
    new-array v9, v2, [I

    const/4 v10, 0x0

    .line 3727
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 3728
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v14

    .line 3729
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue1()F

    move-result v11

    float-to-int v11, v11

    sub-long/2addr v14, v12

    long-to-int v15, v14

    .line 3732
    div-int v15, v15, p4

    if-ltz v15, :cond_4

    if-lt v15, v2, :cond_0

    goto :goto_1

    .line 3736
    :cond_0
    aget v14, v5, v15

    add-int/2addr v14, v11

    aput v14, v5, v15

    if-lez v11, :cond_1

    .line 3738
    aget v14, v9, v15

    add-int/2addr v14, v4

    aput v14, v9, v15

    .line 3742
    :cond_1
    aget v14, v8, v15

    if-le v11, v14, :cond_2

    .line 3743
    aput v11, v8, v15

    :cond_2
    if-lez v11, :cond_4

    .line 3745
    aget v14, v6, v15

    if-eqz v14, :cond_3

    if-ge v11, v14, :cond_4

    .line 3746
    :cond_3
    aput v11, v6, v15

    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3749
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 3751
    invoke-virtual {v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->setVisibility(I)V

    return-void

    .line 3755
    :cond_6
    invoke-virtual {v3, v7}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->setVisibility(I)V

    .line 3757
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_8

    .line 3761
    aget v6, v9, v4

    if-lez v6, :cond_7

    .line 3762
    aget v8, v5, v4

    div-int/2addr v8, v6

    goto :goto_3

    .line 3764
    :cond_7
    aget v8, v5, v4

    .line 3766
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3769
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 3770
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 3771
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 3772
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3774
    :cond_a
    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DataBarChart;->setData([I)V

    return-void
.end method

.method private initTarget()V
    .locals 9

    .line 2515
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_NEW_DISTANCE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2518
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "FUNCTION_NEW_DISTANCE3"

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2521
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "DistanceUnit"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2523
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "P_GOAL_STEP"

    const-string v5, "4000"

    invoke-virtual {v3, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2524
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f130549

    .line 2525
    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-lez v3, :cond_0

    const v4, 0x7f13054a

    .line 2527
    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2530
    :cond_0
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->height:F

    invoke-static {v3, v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v5

    if-eqz v0, :cond_1

    .line 2532
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->height:F

    invoke-static {v3, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v5

    .line 2534
    :cond_1
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->weight:F

    invoke-static {v5, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v0

    if-eqz v1, :cond_2

    .line 2536
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->height:F

    invoke-static {v3, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v5

    .line 2537
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->weight:F

    invoke-static {v5, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v0

    :cond_2
    const v1, 0x7f130544

    .line 2539
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2540
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2541
    sget v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    mul-float v5, v5, v1

    float-to-int v1, v5

    int-to-float v5, v1

    const v1, 0x7f130547

    .line 2542
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2545
    :cond_3
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v6, 0x7f0a054a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2546
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2548
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a0546

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const-string v0, "%.0f"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f130543

    invoke-virtual {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2551
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a0548

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initTemerature(ZFF)V
    .locals 0

    return-void
.end method

.method private initTempData(IIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 3569
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a04a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3570
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v4, 0x7f0a041e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;

    const/4 v4, 0x1

    .line 3573
    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setAutoAdjustYAxis(Z)V

    .line 3575
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v13, v5, v7

    .line 3576
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    add-int v1, v1, p2

    invoke-static {v5, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v7

    const-wide/16 v9, 0x1

    sub-long v15, v5, v9

    .line 3578
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    mul-long v9, v13, v7

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    mul-long v7, v7, v15

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v6, v7, v4

    const-string v4, "%s %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->mid:Ljava/lang/String;

    const/16 v12, 0x10

    invoke-virtual/range {v9 .. v16}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 3582
    new-array v4, v2, [F

    .line 3583
    new-array v5, v2, [F

    .line 3584
    new-array v6, v2, [F

    .line 3585
    new-array v7, v2, [F

    const/4 v9, 0x0

    .line 3586
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 3587
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getTimestamp()J

    move-result-wide v15

    .line 3588
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->getValue2()F

    move-result v10

    const/16 p1, 0x0

    sub-long v11, v15, v13

    long-to-int v12, v11

    .line 3594
    div-int v12, v12, p4

    if-ltz v12, :cond_4

    if-lt v12, v2, :cond_0

    goto :goto_1

    .line 3598
    :cond_0
    aget v11, v4, v12

    add-float/2addr v11, v10

    aput v11, v4, v12

    cmpl-float v11, v10, p1

    if-lez v11, :cond_1

    .line 3600
    aget v15, v7, v12

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v15, v15, v16

    aput v15, v7, v12

    .line 3604
    :cond_1
    aget v15, v6, v12

    cmpl-float v15, v10, v15

    if-lez v15, :cond_2

    .line 3605
    aput v10, v6, v12

    :cond_2
    if-lez v11, :cond_4

    .line 3607
    aget v11, v5, v12

    cmpl-float v15, v11, p1

    if-eqz v15, :cond_3

    cmpg-float v11, v10, v11

    if-gez v11, :cond_4

    .line 3608
    :cond_3
    aput v10, v5, v12

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x0

    .line 3611
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "DistanceUnit"

    const-string v9, "0"

    invoke-virtual {v5, v6, v9}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3612
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 3614
    invoke-virtual {v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    return-void

    .line 3618
    :cond_6
    invoke-virtual {v3, v8}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setVisibility(I)V

    .line 3620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_a

    .line 3624
    aget v9, v7, v6

    cmpl-float v10, v9, p1

    if-lez v10, :cond_7

    .line 3625
    aget v10, v4, v6

    div-float/2addr v10, v9

    goto :goto_3

    .line 3627
    :cond_7
    aget v10, v4, v6

    :goto_3
    const v9, -0x3c5c8000    # -327.0f

    cmpl-float v9, v10, v9

    if-lez v9, :cond_9

    const v9, 0x43a38000    # 327.0f

    cmpg-float v9, v10, v9

    if-gez v9, :cond_9

    .line 3630
    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3631
    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getFahrenheit(F)F

    move-result v10

    .line 3634
    :cond_8
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3638
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3639
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_b

    .line 3640
    new-instance v4, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v5}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;-><init>(F)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3642
    :cond_b
    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setDayData(Ljava/util/List;)V

    .line 3643
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;

    invoke-virtual {v3, v1}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;->setMode(Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$ChartMode;)V

    return-void
.end method

.method private initView()V
    .locals 9

    .line 2172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "cur_ble_state"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2173
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->setBle(I)V

    .line 2175
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    const-string/jumbo v0, "tvName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0a04da

    filled-new-array {v0}, [I

    move-result-object v6

    const v4, 0x7f0d00a8

    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saType:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;

    .line 2177
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->gvMain:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2178
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->gvMain:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2180
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->updateType()V

    .line 2182
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initBpDemoData()V

    .line 2184
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    .line 2185
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 2186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    const/4 v1, 0x0

    .line 2189
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 2190
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 2191
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    .line 2192
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 2194
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    .line 2195
    new-instance v3, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v3}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 2196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 2199
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    .line 2200
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 2201
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleepTiny:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    .line 2202
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleepTiny:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 2204
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    .line 2205
    new-instance v2, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v2}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    .line 2206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 2207
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 2208
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 2209
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setSubSpace(I)V

    const v2, 0x3f8ccccd    # 1.1f

    .line 2210
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/ColumnChartData;->setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 2211
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setInteractive(Z)V

    .line 2212
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    const v0, 0x7f130122

    .line 2214
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f130124

    .line 2215
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2216
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const-string v0, "--%s--%s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2217
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2241
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->gvMain:Landroid/widget/GridView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->OnItemClickGvMain(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2249
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a049d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEcgHeart:Landroid/widget/TextView;

    .line 2250
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a049c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEcgHealth:Landroid/widget/TextView;

    .line 2253
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initFemaleData()V

    .line 2255
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$6;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$6;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;->setOnCellItemChange(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;)V

    .line 2271
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;->setOnItemRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;)V

    .line 2352
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;->notifyChanges()V

    .line 2354
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    iget-object v1, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;-><init>(Lnet/grandcentrix/tray/AppPreferences;)V

    iput-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    .line 2357
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 2358
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a01f2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 2359
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    new-instance v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$8;

    invoke-direct {v7, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$8;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;-><init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2379
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->register(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V

    .line 2382
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 2383
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a01d9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 2384
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    new-instance v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$9;

    invoke-direct {v7, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$9;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    .line 2402
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f130025

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;-><init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2404
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->register(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V

    .line 2407
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 2408
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a01da

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 2409
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    new-instance v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$10;

    invoke-direct {v7, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$10;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    .line 2427
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f13002b

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;-><init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2429
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->register(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V

    .line 2432
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 2433
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a0214

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 2434
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    new-instance v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$11;

    invoke-direct {v7, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$11;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;-><init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2454
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->register(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V

    .line 2457
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 2458
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a0203

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 2459
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    new-instance v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$12;

    invoke-direct {v7, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$12;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;-><init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2475
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->register(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V

    .line 2478
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 2479
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    const v3, 0x7f0a01d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 2480
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    new-instance v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda6;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    new-instance v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$13;

    invoke-direct {v7, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$13;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;-><init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2499
    iget-object v0, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->register(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V

    .line 2504
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initTarget()V

    return-void
.end method

.method private loadDemoData()V
    .locals 3

    .line 1560
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 1561
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$loadDemoSleepTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshData()V
    .locals 10

    .line 674
    const-string v0, "call FragmentMain::refreshData"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 676
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bClickShare:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initCommon()V

    .line 680
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 681
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "P_TEMP_STEP_TIMESTAMP"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "0"

    invoke-virtual {v0, v6, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-gez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 684
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P_TEMP_STEP"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 685
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P_TEMP_DISTANCE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 686
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P_TEMP_CALORIE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 687
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P_TEMP_STEP_TIME"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 688
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P_TEMP_HEARTRATE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->updateType()V

    .line 691
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initMain()V

    .line 692
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->autoSync()V

    .line 694
    :cond_1
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bClickShare:Z

    .line 697
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_2

    .line 698
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppState(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    return-void
.end method

.method private sendAnalyticsEvent(Ljava/lang/String;)V
    .locals 2

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u53d1\u9001\u4e8b\u4ef6: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBle(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v0, :cond_0

    .line 5173
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5174
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivConnectState:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5177
    :try_start_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p1, :cond_1

    .line 5178
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p1, v2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setAppState(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BLE_CONNECTED exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return-void

    .line 5185
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 5188
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvConnectState:Landroid/widget/TextView;

    const v0, 0x7f13050b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5189
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBattery:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5190
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llBattery:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5192
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->calenderToday:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 5193
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 5194
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 5195
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5197
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    if-eqz p1, :cond_1

    .line 5198
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V

    .line 5199
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->resetShowTipStates()V

    :cond_1
    return-void
.end method

.method private shareImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMG"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 487
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 491
    const-string p1, "android.intent.extra.TEXT"

    const-string v1, "Share picture"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f13018b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showConnectInfo(Z)V
    .locals 1

    .line 5322
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvConnectState:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5323
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llConnectState:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private startTest()V
    .locals 1

    const/4 v0, 0x1

    .line 5503
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->isTest:Z

    .line 5504
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private startTestBloodOxygen(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 2557
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2565
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setSpoMode(Z)I

    const/4 p1, 0x1

    return p1

    .line 2558
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v2, 0x7f13050c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2559
    const-string/jumbo v1, "startTestBloodOxygen is disconnected"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2561
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 2567
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTestBloodOxygen exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private startTestBloodPressure(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 2593
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2601
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setBloodPressureMode(Z)I

    const/4 p1, 0x1

    return p1

    .line 2594
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v2, 0x7f13050c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2595
    const-string/jumbo v1, "startTestBloodPressure is disconnected"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2597
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 2603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTestBloodPressure exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private startTestBloodSugar(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 2575
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2583
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setSugarMode(Z)I

    const/4 p1, 0x1

    return p1

    .line 2576
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v2, 0x7f13050c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2577
    const-string/jumbo v1, "startTestBloodSugar is disconnected"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2579
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 2585
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTestBloodSugar exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private startTestHeart(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 3275
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3283
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/16 v2, 0xb4

    invoke-interface {v1, p1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHeartRateMode(ZII)I

    .line 3284
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->handlerClose:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseHeart:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 3276
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v2, 0x7f13050c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3277
    const-string v1, "onClickedTestHeart is disconnected"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 3279
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 3286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTestHeart exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private startTestStress(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 2611
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2619
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setPressureMode(Z)I

    const/4 p1, 0x1

    return p1

    .line 2612
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v2, 0x7f13050c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2613
    const-string/jumbo v1, "startTestStress is disconnected"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2615
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 2621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTestStress exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private startTestTemp(Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 2629
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2637
    :cond_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setTemperatureMode(Z)I

    .line 2638
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->handlerClose:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseTemperature:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 2630
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v2, 0x7f13050c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2631
    const-string v1, "onClickedTestTemp is disconnected"

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2633
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 2640
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FragmentMain startTestTemp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return v0
.end method

.method private testBlood(Z)V
    .locals 2

    .line 3294
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3300
    :cond_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setBloodPressureMode(Z)I

    .line 3301
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->handlerClose:Landroid/os/Handler;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->runnableCloseBlood:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 3295
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const v0, 0x7f13050c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3296
    const-string p1, "onClickedTestBloodOxygen is disconnected"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "testBlood exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private updateDeviceImageByType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 5215
    const-string v0, "003A"

    const-string v1, "0001"

    .line 0
    const-string/jumbo v2, "updateDeviceImageByType deviceCid = "

    .line 5215
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceDid = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 5216
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 5217
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "001C"

    const v4, 0x7f1000b1

    const v5, 0x7f1000af

    const/4 v6, 0x1

    const v7, 0x7f1302cd

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5218
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5219
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5220
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5221
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5222
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "0020"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5223
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5224
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5225
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5226
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5227
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "0034"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5228
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5229
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5230
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5231
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5232
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const v8, 0x7f1000c1

    const/4 v9, 0x0

    const v10, 0x7f1302ce

    const v11, 0x7f1000c0

    if-eqz v2, :cond_3

    const-string v2, "0017"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5233
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5234
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5235
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5236
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5237
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "004C"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5238
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5239
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5240
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5241
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5242
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "0022"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5243
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5244
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5245
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5246
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5247
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "002B"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5248
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5249
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5250
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5251
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5252
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "0010"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5253
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5254
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5255
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5256
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5257
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "0018"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5258
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5259
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5260
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5261
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5262
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "0019"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5263
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5264
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5265
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5266
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5267
    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const v4, 0x7f1000b2

    const v5, 0x7f1000b0

    if-eqz v2, :cond_a

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5268
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5269
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5270
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5271
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5272
    :cond_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "005B"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5273
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5274
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5275
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5276
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5277
    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "0062"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5278
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5279
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5280
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 5281
    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5282
    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "0037"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5283
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5284
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5285
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5286
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5287
    :cond_d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5288
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5289
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5290
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5291
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5292
    :cond_e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v2, 0x7f1000c2

    if-eqz v0, :cond_f

    const-string v0, "0048"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5293
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5294
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5295
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5296
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5297
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "0049"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5298
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5299
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5300
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5301
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5302
    :cond_10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "004A"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 5303
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5304
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5305
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5306
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V

    return-void

    .line 5308
    :cond_11
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5309
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5310
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 5311
    invoke-direct {p0, v9}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->showConnectInfo(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_12
    return-void

    :catch_0
    move-exception p1

    .line 5315
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateDeviceImageByType: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method private updateType()V
    .locals 16

    move-object/from16 v0, p0

    .line 1750
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1751
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1752
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    .line 1755
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexStep:I

    .line 1756
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSleep:I

    .line 1757
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexHealth:I

    .line 1758
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexHeart:I

    .line 1759
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexBlood:I

    .line 1760
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSport:I

    const/4 v2, 0x5

    .line 1761
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexEcg:I

    const/4 v2, 0x6

    .line 1762
    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexTemperature:I

    .line 1764
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexStep:I

    .line 1765
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v3, 0x7f130578

    .line 1766
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tvName"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1767
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "bSelect"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    const v7, 0x7f06035a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    const v7, 0x7f1000a7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSleep:I

    .line 1774
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v7, 0x7f13042f

    .line 1775
    invoke-virtual {v0, v7}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    const v7, 0x7f06039c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    const v7, 0x7f1000a5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0x8

    if-nez v2, :cond_5

    .line 1784
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v9, "FUNCTION_BLOOD"

    const-string v10, "false"

    invoke-virtual {v2, v9, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1786
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v9, "FUNCTION_BLOOD_ONLY"

    invoke-virtual {v2, v9, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1788
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v9, "FUNCTION_BLOOD_OXYGEN"

    invoke-virtual {v2, v9, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1790
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v9, "FUNCTION_SHOW_BP_OXYGEN_MODE"

    invoke-virtual {v2, v9, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1792
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v11, "FUNCTION_HEART"

    invoke-virtual {v9, v11, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1794
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v12, "FUNCTION_ECG"

    invoke-virtual {v11, v12, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1796
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v12, "FUNCTION_SPORT"

    invoke-virtual {v11, v12, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1798
    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v13, "FUNCTION_ECG_XT"

    invoke-virtual {v12, v13, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1800
    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v13, "FUNCTION_BLOOD_ADJUST"

    invoke-virtual {v12, v13, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1802
    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v13, "FUNCTION_TEMPERATURE"

    invoke-virtual {v12, v13, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1804
    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v14, "FUNCTION_FEMALE_REMINDER"

    invoke-virtual {v13, v14, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 1806
    iget-object v14, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v15, "FUNCTION_HAS_PRESSURE"

    invoke-virtual {v14, v15, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1809
    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_HAS_BLOODSUGAR"

    invoke-virtual {v15, v1, v10}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v9, :cond_0

    .line 1813
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexHeart:I

    .line 1814
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const v10, 0x7f1302c0

    .line 1815
    invoke-virtual {v0, v10}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    const v10, 0x7f06039e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    const v10, 0x7f1000a4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvHeart:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1823
    :cond_0
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvHeart:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const v9, 0x7f1000a2

    const v10, 0x7f06039d

    const v15, 0x7f13019c

    if-eqz v2, :cond_1

    .line 1831
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodPressure:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1834
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexBlood:I

    .line 1835
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1836
    invoke-virtual {v0, v15}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvOxygen:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1861
    :cond_1
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexBlood:I

    .line 1862
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1863
    invoke-virtual {v0, v15}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    iget-object v15, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1866
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1867
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1869
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvOxygen:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1870
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodPressure:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    if-eqz v1, :cond_2

    .line 1889
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodSugar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1891
    :cond_2
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodSugar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    if-eqz v12, :cond_3

    .line 1895
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvTemperature:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 1897
    :cond_3
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvTemperature:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    if-eqz v14, :cond_4

    .line 1901
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvPressure:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 1903
    :cond_4
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvPressure:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    if-eqz v11, :cond_6

    .line 1907
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexSport:I

    .line 1908
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v2, 0x7f13022b

    .line 1909
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    const v2, 0x7f060027

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alBack:Ljava/util/ArrayList;

    const v2, 0x7f1000a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1917
    :cond_5
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvHeart:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1918
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvOxygen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1919
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodSugar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1920
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvTemperature:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1921
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvPressure:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v13, 0x0

    .line 1924
    :cond_6
    :goto_5
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Gender"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1927
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvFemailReminder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 1929
    :cond_7
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvFemailReminder:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_8

    const/4 v8, 0x0

    :cond_8
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1932
    :goto_6
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->macid:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alColorBar:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_a

    .line 1933
    :cond_9
    iput v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    .line 1935
    :cond_a
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_b

    .line 1936
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1938
    :cond_b
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    :goto_7
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->gvMain:Landroid/widget/GridView;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 707
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u66f4\u65b0\u9996\u9875UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initFemaleData()V

    .line 709
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;->notifyChanges()V

    return-void
.end method


# virtual methods
.method OnClicktvToday()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a053d
        }
    .end annotation

    return-void
.end method

.method OnItemClickGvMain(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation runtime Lbutterknife/OnItemClick;
        value = {
            0x7f0a01ab
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1998
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    if-ne p1, p3, :cond_0

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexHealth:I

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 2001
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->buttonManager:Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;

    if-eqz p1, :cond_1

    .line 2002
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopCurrent()V

    .line 2005
    :cond_1
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2008
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 2009
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->alhmMain:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    const-string p4, "bSelect"

    iget p5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->indexCurrent:I

    if-ne p2, p5, :cond_2

    const/4 p5, 0x1

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    :goto_1
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2010
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saType:Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;->notifyDataSetChanged()V

    .line 2012
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initMain()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2018
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2015
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public createData()V
    .locals 3

    .line 1364
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3786
    new-instance v0, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v1, p3

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    .line 3787
    const-string v1, "-"

    const/4 v2, 0x1

    const-string v3, ""

    if-nez p1, :cond_2

    .line 3788
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "%02d:00 "

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3789
    rem-int/lit8 v4, p3, 0x6

    if-eqz v4, :cond_1

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_0

    goto :goto_0

    .line 3792
    :cond_0
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 3790
    :cond_1
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    :goto_1
    move-object v3, p1

    goto :goto_3

    .line 3793
    :cond_2
    const-string v4, " "

    if-ne p1, v2, :cond_3

    .line 3794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->week:[I

    aget p4, p4, p3

    invoke-virtual {p0, p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3795
    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_3

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    .line 3797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3798
    rem-int/lit8 v4, p3, 0x6

    if-eqz v4, :cond_5

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_4

    goto :goto_2

    .line 3801
    :cond_4
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 3799
    :cond_5
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 3803
    :cond_6
    :goto_3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public getSvContent()Landroid/widget/ScrollView;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public initBloodSugarTask(F)V
    .locals 4

    .line 3503
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 3504
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodSugarTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initBloodTask(IIII)V
    .locals 4

    .line 4321
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 4322
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

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

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initEcgTask()V
    .locals 3

    .line 2127
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 2128
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initEcgTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initHeartTask(I)V
    .locals 4

    .line 3362
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 3363
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initPressureTask(I)V
    .locals 4

    .line 3779
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 3780
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initSleepTask()V
    .locals 3

    .line 3105
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 3106
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSleepTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initSportTask()V
    .locals 3

    .line 5040
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 5041
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initSportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initStepTask(Z)V
    .locals 4

    .line 2873
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 2874
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStepTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initTempTask(I)V
    .locals 4

    .line 3648
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 3649
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initTempTask2(Z)V
    .locals 4

    .line 4017
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 4018
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public isFragmentVisible()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->isFragmentVisible:Z

    return v0
.end method

.method synthetic lambda$initView$2$com-jaga-ibraceletplus-jyring-main-FragmentMain()Z
    .locals 2

    .line 2364
    const-string v0, "Test"

    const-string v1, "Heart rate test started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2366
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestHeart(Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initView$3$com-jaga-ibraceletplus-jyring-main-FragmentMain()Z
    .locals 2

    .line 2389
    const-string v0, "Test"

    const-string v1, "Blood pressure test started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2391
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestBloodPressure(Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initView$4$com-jaga-ibraceletplus-jyring-main-FragmentMain()Z
    .locals 2

    .line 2414
    const-string v0, "Test"

    const-string v1, "Blood sugar test started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2416
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestBloodSugar(Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initView$5$com-jaga-ibraceletplus-jyring-main-FragmentMain()Z
    .locals 2

    .line 2439
    const-string v0, "Test"

    const-string v1, "Temperature test started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2441
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestTemp(Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initView$6$com-jaga-ibraceletplus-jyring-main-FragmentMain()Z
    .locals 2

    .line 2463
    const-string v0, "Test"

    const-string v1, "Pressure test started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2464
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestStress(Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$initView$7$com-jaga-ibraceletplus-jyring-main-FragmentMain()Z
    .locals 2

    .line 2484
    const-string v0, "Test"

    const-string v1, "Blood oxygen test started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2486
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startTestBloodOxygen(Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onFragmentSelected$1$com-jaga-ibraceletplus-jyring-main-FragmentMain()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$onResume$0$com-jaga-ibraceletplus-jyring-main-FragmentMain()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 443
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 444
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    return-void
.end method

.method public onBPAdjustClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a045a
        }
    .end annotation

    .line 5457
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5458
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBarChartlicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0082
        }
    .end annotation

    .line 5367
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_BLOOD_OXYGEN"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5370
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_1

    .line 5371
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 5374
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_1

    .line 5375
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onBloodSugarClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a010f
        }
    .end annotation

    .line 5439
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5440
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCcvBloodPressureClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a010e
        }
    .end annotation

    .line 5407
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 324
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f0d0098

    const/4 p3, 0x0

    .line 325
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 328
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->unbinder:Lbutterknife/Unbinder;

    .line 331
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initData()V

    .line 332
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initView()V

    .line 344
    const-string p1, "onCreateView"

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->view:Landroid/view/View;

    return-object p1
.end method

.method public onCvFemailReminder()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0112
        }
    .end annotation

    .line 5421
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5422
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 350
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onDestroyView()V

    .line 351
    const-string v0, "FragmentMain onDestroyView"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 355
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    return-void
.end method

.method public onFragmentSelected()V
    .locals 4

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->isFragmentVisible:Z

    .line 652
    const-string v0, "call FragmentMain::onFragmentSelected"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->refreshData()V

    .line 656
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initTarget()V

    .line 657
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->updateUI()V

    .line 658
    const-string v0, "home_page_show"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda8;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFragmentUnselected()V
    .locals 2

    const/4 v0, 0x0

    .line 665
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->isFragmentVisible:Z

    .line 666
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u9996\u9875\u5931\u53bb\u7126\u70b9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cleanup()V

    return-void
.end method

.method public onLcvHeartClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01ae
        }
    .end annotation

    .line 5346
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5347
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlBloodClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0241
        }
    .end annotation

    .line 5352
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_BLOOD_OXYGEN"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5355
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_1

    .line 5356
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 5359
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_1

    .line 5360
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailOxygenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onLlEcgClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0257
        }
    .end annotation

    .line 5433
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5434
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlEcgXtClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0258
        }
    .end annotation

    .line 5463
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5464
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlHeartClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0260
        }
    .end annotation

    .line 5340
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5341
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailHeartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlPressureClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0119
        }
    .end annotation

    .line 5451
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5452
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailPressureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlSleepClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0277
        }
    .end annotation

    .line 5334
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5335
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlSportClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a027a
        }
    .end annotation

    .line 5427
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5428
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlTemperatureClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a011e
        }
    .end annotation

    .line 5445
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5446
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailBodyTemperatureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLlWalkClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0286
        }
    .end annotation

    .line 5328
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5329
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 360
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onPause()V

    .line 363
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 365
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->onFragmentUnselected()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 437
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onResume()V

    .line 438
    const-string v0, "call FragmentMain::onResume"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->SaveLog(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 440
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 441
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$$ExternalSyntheticLambda7;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 451
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->onFragmentSelected()V

    :cond_1
    return-void
.end method

.method public onViewClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03d3
        }
    .end annotation

    return-void
.end method

.method public onllFemaleCalendarCard()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a025c
        }
    .end annotation

    .line 5415
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    if-nez v0, :cond_0

    .line 5416
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public startCloseHeartTask(II)V
    .locals 4

    .line 1220
    const-string/jumbo v0, "startCloseHeartTask"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 1221
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V

    .line 1223
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
