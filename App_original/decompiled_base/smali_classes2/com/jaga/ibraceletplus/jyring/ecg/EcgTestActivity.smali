.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgTestActivity.java"


# instance fields
.field bTest:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0076
    .end annotation
.end field

.field ivRipple:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a020b
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

.field tvCountDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0484
    .end annotation
.end field

.field tvHeart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b5
    .end annotation
.end field

.field tvReport:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04fa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003c

    .line 80
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->setContentView(I)V

    .line 81
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 82
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->setStatusEcg()V

    return-void
.end method
