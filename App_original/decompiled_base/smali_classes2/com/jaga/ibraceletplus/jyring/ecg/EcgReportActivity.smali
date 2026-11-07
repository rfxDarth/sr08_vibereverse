.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgReportActivity.java"


# instance fields
.field llHeart0:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0261
    .end annotation
.end field

.field llHeart1:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0262
    .end annotation
.end field

.field llIndicator:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0265
    .end annotation
.end field

.field pbEcg:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a031a
    .end annotation
.end field

.field sbHealthScore:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038c
    .end annotation
.end field

.field svEcg:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0402
    .end annotation
.end field

.field tvHealthScore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b3
    .end annotation
.end field

.field tvHeartAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b6
    .end annotation
.end field

.field tvHeartSymptom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ba
    .end annotation
.end field

.field tvSuggest:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0526
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0039

    .line 57
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->setStatusEcg()V

    .line 61
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "svEcg.post"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->svEcg:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;)V

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
