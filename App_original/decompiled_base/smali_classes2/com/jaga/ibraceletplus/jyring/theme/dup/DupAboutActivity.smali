.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "DupAboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const v1, 0x7f0a0455

    .line 34
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f13018b

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " v%1$s (%2$s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "20261008.1"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method OnClickbUpdate()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a007d
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/HttpUtil;->checkUpdate(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 21
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;->init()V

    return-void
.end method
