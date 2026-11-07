.class public Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "SportHintActivity.java"


# instance fields
.field private mode:I

.field private sportName:Ljava/lang/String;

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0472
    .end annotation
.end field

.field tvResume:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04fd
    .end annotation
.end field

.field tvSportName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0514
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->mode:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->mode:I

    const v0, 0x7f130137

    .line 41
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    .line 42
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->mode:I

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const v0, 0x7f130456

    .line 56
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f13044a

    .line 59
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const v0, 0x7f13043f

    .line 53
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v0, 0x7f130441

    .line 50
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v0, 0x7f130454

    .line 47
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->tvSportName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->sportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->setResult(I)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d005b

    .line 29
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 32
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->initData()V

    return-void
.end method

.method public onTvCancelClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0472
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->finish()V

    return-void
.end method

.method public onTvResumeClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04fd
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f130372

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkGps(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v1, "mode"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
