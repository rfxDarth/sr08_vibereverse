.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgHealthActivity.java"


# instance fields
.field bGuide:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a006f
    .end annotation
.end field

.field bTest:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0076
    .end annotation
.end field

.field lcvScore:Llecho/lib/hellocharts/view/LineChartView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a022c
    .end annotation
.end field

.field llBlood:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0241
    .end annotation
.end field

.field llEcg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0257
    .end annotation
.end field

.field llHeart:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0260
    .end annotation
.end field

.field sbScore:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a038e
    .end annotation
.end field

.field tvEcg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a049b
    .end annotation
.end field

.field tvHeartAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b6
    .end annotation
.end field

.field tvScore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0501
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->macid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->mid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryEcgRecords2(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    .line 60
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvScore:Landroid/widget/TextView;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->sbScore:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 62
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvHeartAvg:Landroid/widget/TextView;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->initData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0076,
            0x7f0a006f,
            0x7f0a0260,
            0x7f0a0241,
            0x7f0a0257
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 81
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryHeartActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 86
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 75
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 78
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgGuideActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a006f -> :sswitch_3
        0x7f0a0076 -> :sswitch_2
        0x7f0a0257 -> :sswitch_1
        0x7f0a0260 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0035

    .line 49
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->setContentView(I)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 51
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->setStatusEcg()V

    .line 53
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->initData()V

    return-void
.end method
