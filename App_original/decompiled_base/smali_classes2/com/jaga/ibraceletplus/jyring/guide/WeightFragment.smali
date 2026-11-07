.class public Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;
.super Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;
.source "WeightFragment.java"


# instance fields
.field brWeight:Lyanzhikai/ruler/BooheeRuler;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0096
    .end annotation
.end field

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

    .line 31
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;-><init>()V

    .line 47
    const-string v0, "0"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->unit:Ljava/lang/String;

    return-void
.end method

.method public initView()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 56
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    const v2, 0x7f0a0556

    invoke-virtual {v1, v2}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->unit:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lyanzhikai/ruler/BooheeRuler;->setMinScale(I)V

    .line 59
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v3, 0xe3

    invoke-virtual {v2, v3}, Lyanzhikai/ruler/BooheeRuler;->setMaxScale(I)V

    .line 60
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lyanzhikai/ruler/BooheeRuler;->setCurrentScale(F)V

    const v0, 0x7f130588

    .line 61
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lyanzhikai/ruler/BooheeRuler;->setMinScale(I)V

    .line 64
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lyanzhikai/ruler/BooheeRuler;->setMaxScale(I)V

    .line 65
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    int-to-float v0, v0

    sget v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KG2LB:F

    mul-float v0, v0, v3

    invoke-virtual {v2, v0}, Lyanzhikai/ruler/BooheeRuler;->setCurrentScale(F)V

    const v0, 0x7f130589

    .line 66
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/BooheeRuler;->setFactor(F)V

    .line 70
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->refreshRuler()V

    .line 71
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->bindRuler(Lyanzhikai/ruler/BooheeRuler;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009e

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->unbinder:Lbutterknife/Unbinder;

    .line 42
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->initData()V

    .line 43
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->initView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->onDestroyView()V

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public setWeight()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    const v1, 0x7f0a0558

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->unit:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KG2LB:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "weight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Weight"

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
