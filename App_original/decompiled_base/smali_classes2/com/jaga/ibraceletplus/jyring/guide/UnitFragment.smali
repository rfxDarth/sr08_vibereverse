.class public Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;
.super Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;
.source "UnitFragment.java"


# instance fields
.field tvMetric:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04d2
    .end annotation
.end field

.field tvUs:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0542
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->onTvMetricClicked()V

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->onTvUsClicked()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009d

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->unbinder:Lbutterknife/Unbinder;

    .line 40
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->initView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->onDestroyView()V

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onTvMetricClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04d2
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvMetric:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvUs:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onTvUsClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0542
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvUs:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->tvMetric:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
