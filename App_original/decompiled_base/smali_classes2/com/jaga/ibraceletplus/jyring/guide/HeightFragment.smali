.class public Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;
.super Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;
.source "HeightFragment.java"


# instance fields
.field brWeight:Lyanzhikai/ruler/BooheeRuler;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0096
    .end annotation
.end field

.field private height:F

.field knlWeight:Lyanzhikai/ruler/KgNumberLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0223
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;-><init>()V

    .line 48
    const-string v0, "0"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->unit:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->unit:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->unit:Ljava/lang/String;

    return-void
.end method

.method public initView()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    const-string v2, "170"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    .line 64
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    const v1, 0x7f0a0556

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->unit:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setCount(I)V

    .line 67
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setMinScale(I)V

    .line 68
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setMaxScale(I)V

    .line 69
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setFactor(F)V

    .line 70
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setCurrentScale(F)V

    const v1, 0x7f1302c5

    .line 71
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setCount(I)V

    .line 74
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setMinScale(I)V

    .line 75
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v2, 0x62

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setMaxScale(I)V

    .line 76
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const v2, 0x3daaaaab

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setFactor(F)V

    .line 77
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    sget v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->CM2INCH:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setCurrentScale(F)V

    .line 79
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->refreshRuler()V

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->bindRuler(Lyanzhikai/ruler/BooheeRuler;)V

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    const v1, 0x7f0a0558

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment$1;-><init>(Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/BooheeRuler;->setCallback(Lyanzhikai/ruler/RulerCallback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0093

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->unbinder:Lbutterknife/Unbinder;

    .line 43
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->initData()V

    .line 44
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->initView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->onDestroyView()V

    .line 56
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public setHeight()V
    .locals 4

    .line 103
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    .line 104
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->unit:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->height:F

    sget v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->CM2INCH:F

    div-float/2addr v0, v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Height"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
