.class public Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "RunDetailActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private alRhi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field llCalorie:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0249
    .end annotation
.end field

.field llHeartrate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0263
    .end annotation
.end field

.field llStep:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a027b
    .end annotation
.end field

.field tvCalor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046e
    .end annotation
.end field

.field tvDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field tvHeartrate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04bb
    .end annotation
.end field

.field tvHeartrateDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04bc
    .end annotation
.end field

.field tvPace:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ec
    .end annotation
.end field

.field tvSportName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0514
    .end annotation
.end field

.field tvStep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0519
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field

.field tvUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0540
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->alRhi:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->alRhi:Ljava/util/ArrayList;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "runid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryRunHistory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->alRhi:Ljava/util/ArrayList;

    return-void
.end method

.method private initGoogleMap()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->alRhi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->alRhi:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLatitude()D

    .line 167
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->alRhi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLongitude()D

    .line 169
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a017f

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 9

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tvDistance"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvCalor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tvCalor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "tvTime"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvPace:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "tvPace"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "tvUnit"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvSportName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "tvSportType"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hasheart"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "bShowStep"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "heartrateavg"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 118
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "heartratemax"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 119
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvHeartrate:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvHeartrateDesc:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1302c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1302c2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llCalorie:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llHeartrate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "tvType"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_1

    if-eq v0, v5, :cond_0

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvStep:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tvStep"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llStep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llStep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvCalor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llCalorie:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llHeartrate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llStep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method OnClickivBack()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01d5
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->finish()V

    return-void
.end method

.method OnClickivShare()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a020e
        }
    .end annotation

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0052

    .line 39
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 43
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->initData()V

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->initGoogleMap()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
