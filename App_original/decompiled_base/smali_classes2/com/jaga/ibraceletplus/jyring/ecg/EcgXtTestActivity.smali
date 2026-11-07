.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgXtTestActivity.java"


# instance fields
.field private bFocus:Z

.field private bInitEcg:Z

.field bTest:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0076
    .end annotation
.end field

.field ivBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d5
    .end annotation
.end field

.field pbTime:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0321
    .end annotation
.end field

.field sAuto:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037a
    .end annotation
.end field

.field sbBaseCFcuff:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0387
    .end annotation
.end field

.field sbBaseCForder:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0388
    .end annotation
.end field

.field private sessionid:Ljava/lang/String;

.field svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0404
    .end annotation
.end field

.field tvBaseCFcuff:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045b
    .end annotation
.end field

.field tvBaseCForder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045c
    .end annotation
.end field

.field tvBeatStopTimes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045e
    .end annotation
.end field

.field tvCountDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0484
    .end annotation
.end field

.field tvFastBeatTimes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a3
    .end annotation
.end field

.field tvHeart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b5
    .end annotation
.end field

.field tvNewRecord:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04df
    .end annotation
.end field

.field tvPvcTimes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04f5
    .end annotation
.end field

.field tvRecrodTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04f7
    .end annotation
.end field

.field tvReport:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04fa
    .end annotation
.end field

.field tvSlowBeatTimes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0510
    .end annotation
.end field

.field tvVescTimes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0544
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->bInitEcg:Z

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->bFocus:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sessionid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClickNewRecord()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04df
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string/jumbo v1, "sessionid"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sessionid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
