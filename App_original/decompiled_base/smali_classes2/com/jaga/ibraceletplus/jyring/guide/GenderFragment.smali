.class public Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;
.super Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;
.source "GenderFragment.java"


# instance fields
.field ivFemale:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ef
    .end annotation
.end field

.field ivMale:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01f8
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->onIvMaleClicked()V

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->onIvFemaleClicked()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0091

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->unbinder:Lbutterknife/Unbinder;

    .line 32
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->initView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->onDestroyView()V

    .line 47
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onIvFemaleClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01ef
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->ivMale:Landroid/widget/ImageView;

    const v1, 0x7f1000d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->ivFemale:Landroid/widget/ImageView;

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onIvMaleClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01f8
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->ivMale:Landroid/widget/ImageView;

    const v1, 0x7f1000d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->ivFemale:Landroid/widget/ImageView;

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
