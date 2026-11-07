.class public Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;
.super Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;
.source "BirthFragment.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Birthday"

    const-string v2, "1990-01-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lyanzhikai/ruler/BooheeRuler;->setCurrentScale(F)V

    .line 52
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/BooheeRuler;->setMaxScale(I)V

    .line 54
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->refreshRuler()V

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->bindRuler(Lyanzhikai/ruler/BooheeRuler;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0090

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->unbinder:Lbutterknife/Unbinder;

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->initView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->onDestroyView()V

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public setBirth()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    const v1, 0x7f0a0558

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "year: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-01-01"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Birthday"

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
