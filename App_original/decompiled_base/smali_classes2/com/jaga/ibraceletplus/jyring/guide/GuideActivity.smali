.class public Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;
.super Lcom/github/paolorotolo/appintro/AppIntro;
.source "GuideActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntro;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 5

    .line 75
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f130180

    .line 77
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    const v3, 0x7f130508

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v2, v3, v4, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    :cond_1
    :goto_0
    const v0, 0x7f130191

    .line 87
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->setSkipText(Ljava/lang/CharSequence;)V

    const v0, 0x7f13016b

    .line 88
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->setDoneText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->setBarColor(I)V

    .line 90
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06047d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->setSeparatorColor(I)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->setSwipeLock(Z)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->setBackButtonVisibilityWithDone(Z)V

    .line 95
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->addSlide(Landroidx/fragment/app/Fragment;)V

    .line 96
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/guide/GenderFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->addSlide(Landroidx/fragment/app/Fragment;)V

    .line 97
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->addSlide(Landroidx/fragment/app/Fragment;)V

    .line 98
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->addSlide(Landroidx/fragment/app/Fragment;)V

    .line 99
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->addSlide(Landroidx/fragment/app/Fragment;)V

    .line 100
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->addSlide(Landroidx/fragment/app/Fragment;)V

    .line 101
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->addSlide(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getPager()Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->goToNextSlide()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->initView()V

    return-void
.end method

.method public onDonePressed(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onDonePressed(Landroidx/fragment/app/Fragment;)V

    .line 45
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/github/paolorotolo/appintro/AppIntro;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onSkipPressed(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onSkipPressed(Landroidx/fragment/app/Fragment;)V

    .line 38
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->pre()V

    return-void
.end method

.method public onSlideChanged(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 50
    invoke-super {p0, p1, p2}, Lcom/github/paolorotolo/appintro/AppIntro;->onSlideChanged(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 53
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getSlides()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 58
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->showSkipButton(Z)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    .line 60
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->showSkipButton(Z)V

    .line 63
    :goto_1
    instance-of p2, p1, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;

    if-eqz p2, :cond_4

    .line 64
    check-cast p1, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/guide/WeightFragment;->setWeight()V

    return-void

    .line 65
    :cond_4
    instance-of p2, p1, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    if-eqz p2, :cond_5

    .line 66
    check-cast p1, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/guide/HeightFragment;->setHeight()V

    return-void

    .line 67
    :cond_5
    instance-of p2, p1, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;

    if-eqz p2, :cond_6

    .line 68
    check-cast p1, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/guide/BirthFragment;->setBirth()V

    return-void

    .line 69
    :cond_6
    instance-of p2, p1, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;

    if-eqz p2, :cond_7

    .line 70
    check-cast p1, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->setGoal()V

    :cond_7
    return-void
.end method

.method public pre()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;->getPager()Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->goToPreviousSlide()V

    return-void
.end method
