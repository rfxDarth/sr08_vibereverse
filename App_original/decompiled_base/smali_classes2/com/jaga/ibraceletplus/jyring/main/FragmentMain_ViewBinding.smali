.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;
.super Ljava/lang/Object;
.source "FragmentMain_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

.field private view7f0a0082:Landroid/view/View;

.field private view7f0a010e:Landroid/view/View;

.field private view7f0a010f:Landroid/view/View;

.field private view7f0a0112:Landroid/view/View;

.field private view7f0a0119:Landroid/view/View;

.field private view7f0a011e:Landroid/view/View;

.field private view7f0a01ab:Landroid/view/View;

.field private view7f0a01ae:Landroid/view/View;

.field private view7f0a0241:Landroid/view/View;

.field private view7f0a0257:Landroid/view/View;

.field private view7f0a0258:Landroid/view/View;

.field private view7f0a025c:Landroid/view/View;

.field private view7f0a0260:Landroid/view/View;

.field private view7f0a0277:Landroid/view/View;

.field private view7f0a027a:Landroid/view/View;

.field private view7f0a0286:Landroid/view/View;

.field private view7f0a03d3:Landroid/view/View;

.field private view7f0a045a:Landroid/view/View;

.field private view7f0a053d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Landroid/view/View;)V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    .line 76
    const-string v0, "field \'tvSleep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a050b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvSleep:Landroid/widget/TextView;

    .line 77
    const-string v0, "field \'tvCalor\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a046e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCalor:Landroid/widget/TextView;

    .line 78
    const-string v0, "field \'pbCalor\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0316

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbCalor:Landroid/widget/ProgressBar;

    .line 79
    const-string v0, "field \'tvDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0495

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvDistance:Landroid/widget/TextView;

    .line 80
    const-string v0, "field \'pbDistance\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0319

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbDistance:Landroid/widget/ProgressBar;

    .line 81
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0535

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvTime:Landroid/widget/TextView;

    .line 82
    const-string v0, "field \'pbTime\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0321

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbTime:Landroid/widget/ProgressBar;

    .line 83
    const-string v0, "field \'tvUnitDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0541

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvUnitDistance:Landroid/widget/TextView;

    .line 84
    const-string v0, "field \'llDetail\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0251

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llDetail:Landroid/widget/LinearLayout;

    .line 85
    const-string v0, "field \'tvHeartCurrent\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04b7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvHeartCurrent:Landroid/widget/TextView;

    .line 86
    const-string v0, "field \'ccvSleep\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 87
    const-string v0, "field \'ccvSleepTiny\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleepTiny:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 88
    const-string v0, "field \'ivAnimate\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01d4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivAnimate:Landroid/widget/ImageView;

    .line 89
    const-string v0, "field \'tvBlood\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0460

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBlood:Landroid/widget/TextView;

    .line 90
    const-string v0, "field \'tvBloodOxygen\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0463

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodOxygen:Landroid/widget/TextView;

    .line 91
    const-string v0, "field \'llBlood\' and method \'onLlBloodClicked\'"

    const v1, 0x7f0a0241

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 92
    const-string v2, "field \'llBlood\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llBlood:Landroid/widget/LinearLayout;

    .line 93
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0241:Landroid/view/View;

    .line 94
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const-string v0, "field \'llTvBlood\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0282

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llTvBlood:Landroid/widget/LinearLayout;

    .line 101
    const-string v0, "field \'tvBloodOxygenCurrent\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0465

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodOxygenCurrent:Landroid/widget/TextView;

    .line 102
    const-string v0, "field \'tvBloodPressureCurrent\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0466

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodPressureCurrent:Landroid/widget/TextView;

    .line 103
    const-string v0, "field \'bTest\'"

    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0076

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    .line 104
    const-string v0, "field \'tvCalorUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a046f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCalorUnit:Landroid/widget/TextView;

    .line 105
    const-string v0, "field \'ivColor1\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor1:Landroid/widget/ImageView;

    .line 106
    const-string v0, "field \'tvName1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName1:Landroid/widget/TextView;

    .line 107
    const-string v0, "field \'tvCount1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0480

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount1:Landroid/widget/TextView;

    .line 108
    const-string v0, "field \'llCalor1\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0245

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor1:Landroid/widget/LinearLayout;

    .line 109
    const-string v0, "field \'ivColor2\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor2:Landroid/widget/ImageView;

    .line 110
    const-string v0, "field \'tvName2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName2:Landroid/widget/TextView;

    .line 111
    const-string v0, "field \'tvCount2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0481

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount2:Landroid/widget/TextView;

    .line 112
    const-string v0, "field \'llCalor2\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0246

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor2:Landroid/widget/LinearLayout;

    .line 113
    const-string v0, "field \'ivColor3\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01e0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor3:Landroid/widget/ImageView;

    .line 114
    const-string v0, "field \'tvName3\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName3:Landroid/widget/TextView;

    .line 115
    const-string v0, "field \'tvCount3\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0482

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount3:Landroid/widget/TextView;

    .line 116
    const-string v0, "field \'llCalor3\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0247

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor3:Landroid/widget/LinearLayout;

    .line 117
    const-string v0, "field \'ivColor4\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor4:Landroid/widget/ImageView;

    .line 118
    const-string v0, "field \'tvName4\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName4:Landroid/widget/TextView;

    .line 119
    const-string v0, "field \'tvCount4\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0483

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount4:Landroid/widget/TextView;

    .line 120
    const-string v0, "field \'llCalor4\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0248

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor4:Landroid/widget/LinearLayout;

    .line 121
    const-string v0, "field \'ccvSport\'"

    const-class v1, Llecho/lib/hellocharts/view/ColumnChartView;

    const v2, 0x7f0a00ca

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 122
    const-string v0, "field \'tvEmptySport\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04a1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEmptySport:Landroid/widget/TextView;

    .line 123
    const-string v0, "field \'llSport\' and method \'onLlSportClicked\'"

    const v1, 0x7f0a027a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 124
    const-string v2, "field \'llSport\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llSport:Landroid/widget/LinearLayout;

    .line 125
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a027a:Landroid/view/View;

    .line 126
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const-string v0, "field \'llWalk\' and method \'onLlWalkClicked\'"

    const v1, 0x7f0a0286

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 133
    const-string v2, "field \'llWalk\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llWalk:Landroid/widget/LinearLayout;

    .line 134
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0286:Landroid/view/View;

    .line 135
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const-string v0, "field \'llSleep\' and method \'onLlSleepClicked\'"

    const v1, 0x7f0a0277

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 142
    const-string v2, "field \'llSleep\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llSleep:Landroid/widget/LinearLayout;

    .line 143
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0277:Landroid/view/View;

    .line 144
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const-string v0, "field \'llHeart\' and method \'onLlHeartClicked\'"

    const v1, 0x7f0a0260

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 151
    const-string v2, "field \'llHeart\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llHeart:Landroid/widget/LinearLayout;

    .line 152
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 153
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const-string v0, "field \'cvHeart\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0115

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvHeart:Landroid/widget/LinearLayout;

    .line 160
    const-string v0, "field \'cvOxygen\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0118

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvOxygen:Landroid/widget/LinearLayout;

    .line 161
    const-string v0, "field \'cvBloodPressure\' and method \'onCcvBloodPressureClicked\'"

    const v1, 0x7f0a010e

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 162
    const-string v2, "field \'cvBloodPressure\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodPressure:Landroid/widget/LinearLayout;

    .line 163
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a010e:Landroid/view/View;

    .line 164
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$6;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const-string v0, "field \'cvBloodSugar\' and method \'onBloodSugarClicked\'"

    const v1, 0x7f0a010f

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 171
    const-string v2, "field \'cvBloodSugar\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodSugar:Landroid/widget/LinearLayout;

    .line 172
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a010f:Landroid/view/View;

    .line 173
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$7;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const-string v0, "field \'cvTemperature\' and method \'onLlTemperatureClicked\'"

    const v1, 0x7f0a011e

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 180
    const-string v2, "field \'cvTemperature\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvTemperature:Landroid/widget/LinearLayout;

    .line 181
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a011e:Landroid/view/View;

    .line 182
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$8;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const-string v0, "field \'cvPressure\' and method \'onLlPressureClicked\'"

    const v1, 0x7f0a0119

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 189
    const-string v2, "field \'cvPressure\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvPressure:Landroid/widget/LinearLayout;

    .line 190
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0119:Landroid/view/View;

    .line 191
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$9;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const-string v0, "field \'cvFemailReminder\' and method \'onCvFemailReminder\'"

    const v1, 0x7f0a0112

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 198
    const-string v2, "field \'cvFemailReminder\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvFemailReminder:Landroid/widget/LinearLayout;

    .line 199
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0112:Landroid/view/View;

    .line 200
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$10;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const-string v0, "field \'tvFemailReminder\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04a5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvFemailReminder:Landroid/widget/TextView;

    .line 207
    const-string v0, "field \'llEcg\' and method \'onLlEcgClicked\'"

    const v1, 0x7f0a0257

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 208
    const-string v2, "field \'llEcg\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llEcg:Landroid/widget/LinearLayout;

    .line 209
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0257:Landroid/view/View;

    .line 210
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$11;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const-string v0, "field \'tvBPAdjust\' and method \'onBPAdjustClicked\'"

    const v1, 0x7f0a045a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 217
    const-string v2, "field \'tvBPAdjust\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBPAdjust:Landroid/widget/TextView;

    .line 218
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a045a:Landroid/view/View;

    .line 219
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$12;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const-string v0, "field \'llEcgXt\' and method \'onLlEcgXtClicked\'"

    const v1, 0x7f0a0258

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 226
    const-string v2, "field \'llEcgXt\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llEcgXt:Landroid/widget/LinearLayout;

    .line 227
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0258:Landroid/view/View;

    .line 228
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$13;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const-string v0, "field \'tvWalkCalories\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0545

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkCalories:Landroid/widget/TextView;

    .line 235
    const-string v0, "field \'tvWalkDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0547

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkDistance:Landroid/widget/TextView;

    .line 236
    const-string v0, "field \'tvWalkStep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0549

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkStep:Landroid/widget/TextView;

    .line 237
    const-string v0, "field \'ivHeartAnimate\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivHeartAnimate:Landroid/widget/ImageView;

    .line 238
    const-string v0, "field \'ivBloodOxygenAnimate\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivBloodOxygenAnimate:Landroid/widget/ImageView;

    .line 239
    const-string v0, "field \'svContent\'"

    const-class v1, Landroid/widget/ScrollView;

    const v2, 0x7f0a0401

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    .line 240
    const-string v0, "field \'bvBattery\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    const v2, 0x7f0a00ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    .line 241
    const-string v0, "field \'tvBattery\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBattery:Landroid/widget/TextView;

    .line 242
    const-string v0, "field \'tvConnectState\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a047c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvConnectState:Landroid/widget/TextView;

    .line 243
    const-string v0, "field \'llConnectState\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a024b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llConnectState:Landroid/widget/LinearLayout;

    .line 244
    const-string v0, "field \'ivConnectState\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivConnectState:Landroid/widget/ImageView;

    .line 245
    const-string v0, "field \'llBattery\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a023f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llBattery:Landroid/widget/LinearLayout;

    .line 246
    const-string v0, "field \'llNoDevice\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0269

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llNoDevice:Landroid/widget/LinearLayout;

    .line 247
    const-string v0, "field \'llDeviceRing\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0253

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llDeviceRing:Landroid/widget/LinearLayout;

    .line 248
    const-string v0, "field \'ivDeviceRing\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01ec

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    .line 249
    const-string v0, "field \'tvToday\' and method \'OnClicktvToday\'"

    const v1, 0x7f0a053d

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 250
    const-string v2, "field \'tvToday\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    .line 251
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a053d:Landroid/view/View;

    .line 252
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$14;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const-string v0, "field \'vSport\' and method \'onViewClick\'"

    const v1, 0x7f0a03d3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 259
    const-string v2, "field \'vSport\'"

    const-class v3, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    .line 260
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a03d3:Landroid/view/View;

    .line 261
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$15;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$15;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const-string v0, "field \'walkView\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;

    const v2, 0x7f0a05a1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->walkView:Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;

    .line 268
    const-string v0, "field \'gvMain\' and method \'OnItemClickGvMain\'"

    const v1, 0x7f0a01ab

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 269
    const-string v2, "field \'gvMain\'"

    const-class v3, Landroid/widget/GridView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->gvMain:Landroid/widget/GridView;

    .line 270
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a01ab:Landroid/view/View;

    .line 271
    check-cast v0, Landroid/widget/AdapterView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$16;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$16;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    const-string v0, "field \'llBackground\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a023e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llBackground:Landroid/widget/LinearLayout;

    .line 278
    const-string v0, "field \'barChart\' and method \'onBarChartlicked\'"

    const v1, 0x7f0a0082

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 279
    const-string v2, "field \'barChart\'"

    const-class v3, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->barChart:Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;

    .line 280
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0082:Landroid/view/View;

    .line 281
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$17;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$17;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const-string v0, "field \'ivDeviceBg\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01eb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    .line 288
    const-string v0, "field \'ivRingTip1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0209

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    .line 289
    const-string v0, "field \'ivRingTip2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a020a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip2:Landroid/widget/TextView;

    .line 290
    const-string v0, "field \'female_CalendarCard\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    const v2, 0x7f0a0181

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    const v0, 0x7f0a01ae

    .line 291
    const-string v1, "method \'onLcvHeartClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 292
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a01ae:Landroid/view/View;

    .line 293
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$18;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$18;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a025c

    .line 299
    const-string v1, "method \'onllFemaleCalendarCard\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a025c:Landroid/view/View;

    .line 301
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$19;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$19;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060025

    .line 309
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->colorDeep:I

    const v0, 0x7f060026

    .line 310
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->colorLight:I

    const v0, 0x7f06047f

    .line 311
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->colorWake:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 319
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    .line 321
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvSleep:Landroid/widget/TextView;

    .line 322
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCalor:Landroid/widget/TextView;

    .line 323
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbCalor:Landroid/widget/ProgressBar;

    .line 324
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvDistance:Landroid/widget/TextView;

    .line 325
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbDistance:Landroid/widget/ProgressBar;

    .line 326
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvTime:Landroid/widget/TextView;

    .line 327
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->pbTime:Landroid/widget/ProgressBar;

    .line 328
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvUnitDistance:Landroid/widget/TextView;

    .line 329
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llDetail:Landroid/widget/LinearLayout;

    .line 330
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvHeartCurrent:Landroid/widget/TextView;

    .line 331
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleep:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 332
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSleepTiny:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 333
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivAnimate:Landroid/widget/ImageView;

    .line 334
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBlood:Landroid/widget/TextView;

    .line 335
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodOxygen:Landroid/widget/TextView;

    .line 336
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llBlood:Landroid/widget/LinearLayout;

    .line 337
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llTvBlood:Landroid/widget/LinearLayout;

    .line 338
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodOxygenCurrent:Landroid/widget/TextView;

    .line 339
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodPressureCurrent:Landroid/widget/TextView;

    .line 340
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    .line 341
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCalorUnit:Landroid/widget/TextView;

    .line 342
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor1:Landroid/widget/ImageView;

    .line 343
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName1:Landroid/widget/TextView;

    .line 344
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount1:Landroid/widget/TextView;

    .line 345
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor1:Landroid/widget/LinearLayout;

    .line 346
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor2:Landroid/widget/ImageView;

    .line 347
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName2:Landroid/widget/TextView;

    .line 348
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount2:Landroid/widget/TextView;

    .line 349
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor2:Landroid/widget/LinearLayout;

    .line 350
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor3:Landroid/widget/ImageView;

    .line 351
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName3:Landroid/widget/TextView;

    .line 352
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount3:Landroid/widget/TextView;

    .line 353
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor3:Landroid/widget/LinearLayout;

    .line 354
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivColor4:Landroid/widget/ImageView;

    .line 355
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvName4:Landroid/widget/TextView;

    .line 356
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvCount4:Landroid/widget/TextView;

    .line 357
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llCalor4:Landroid/widget/LinearLayout;

    .line 358
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 359
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvEmptySport:Landroid/widget/TextView;

    .line 360
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llSport:Landroid/widget/LinearLayout;

    .line 361
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llWalk:Landroid/widget/LinearLayout;

    .line 362
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llSleep:Landroid/widget/LinearLayout;

    .line 363
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llHeart:Landroid/widget/LinearLayout;

    .line 364
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvHeart:Landroid/widget/LinearLayout;

    .line 365
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvOxygen:Landroid/widget/LinearLayout;

    .line 366
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodPressure:Landroid/widget/LinearLayout;

    .line 367
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvBloodSugar:Landroid/widget/LinearLayout;

    .line 368
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvTemperature:Landroid/widget/LinearLayout;

    .line 369
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvPressure:Landroid/widget/LinearLayout;

    .line 370
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->cvFemailReminder:Landroid/widget/LinearLayout;

    .line 371
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvFemailReminder:Landroid/widget/TextView;

    .line 372
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llEcg:Landroid/widget/LinearLayout;

    .line 373
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBPAdjust:Landroid/widget/TextView;

    .line 374
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llEcgXt:Landroid/widget/LinearLayout;

    .line 375
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkCalories:Landroid/widget/TextView;

    .line 376
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkDistance:Landroid/widget/TextView;

    .line 377
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvWalkStep:Landroid/widget/TextView;

    .line 378
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivHeartAnimate:Landroid/widget/ImageView;

    .line 379
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivBloodOxygenAnimate:Landroid/widget/ImageView;

    .line 380
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->svContent:Landroid/widget/ScrollView;

    .line 381
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView2;

    .line 382
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBattery:Landroid/widget/TextView;

    .line 383
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvConnectState:Landroid/widget/TextView;

    .line 384
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llConnectState:Landroid/widget/LinearLayout;

    .line 385
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivConnectState:Landroid/widget/ImageView;

    .line 386
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llBattery:Landroid/widget/LinearLayout;

    .line 387
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llNoDevice:Landroid/widget/LinearLayout;

    .line 388
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llDeviceRing:Landroid/widget/LinearLayout;

    .line 389
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceRing:Landroid/widget/ImageView;

    .line 390
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    .line 391
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    .line 392
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->walkView:Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;

    .line 393
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->gvMain:Landroid/widget/GridView;

    .line 394
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->llBackground:Landroid/widget/LinearLayout;

    .line 395
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->barChart:Lcom/jaga/ibraceletplus/jyring/widget/VerticalBarChart;

    .line 396
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivDeviceBg:Landroid/widget/ImageView;

    .line 397
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip1:Landroid/widget/TextView;

    .line 398
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->ivRingTip2:Landroid/widget/TextView;

    .line 399
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    .line 401
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0241:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0241:Landroid/view/View;

    .line 403
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a027a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a027a:Landroid/view/View;

    .line 405
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0286:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0286:Landroid/view/View;

    .line 407
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0277:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0277:Landroid/view/View;

    .line 409
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0260:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a010e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a010e:Landroid/view/View;

    .line 413
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a010f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a010f:Landroid/view/View;

    .line 415
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a011e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a011e:Landroid/view/View;

    .line 417
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0119:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0119:Landroid/view/View;

    .line 419
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0112:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0112:Landroid/view/View;

    .line 421
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0257:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0257:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a045a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a045a:Landroid/view/View;

    .line 425
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0258:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0258:Landroid/view/View;

    .line 427
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a053d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a053d:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a03d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a03d3:Landroid/view/View;

    .line 431
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a01ab:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 432
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a01ab:Landroid/view/View;

    .line 433
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0082:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a0082:Landroid/view/View;

    .line 435
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a01ae:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a01ae:Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a025c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;->view7f0a025c:Landroid/view/View;

    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
