.class public Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;
.super Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;
.source "GoalFragment.java"


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

    .line 32
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_GOAL_STEP"

    const-string v2, "4000"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 57
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lyanzhikai/ruler/BooheeRuler;->setCurrentScale(F)V

    .line 59
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->refreshRuler()V

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->bindRuler(Lyanzhikai/ruler/BooheeRuler;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0092

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->unbinder:Lbutterknife/Unbinder;

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->initView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->onDestroyView()V

    .line 51
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public setGoal()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    const v1, 0x7f0a0558

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "goal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_GOAL_STEP"

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
