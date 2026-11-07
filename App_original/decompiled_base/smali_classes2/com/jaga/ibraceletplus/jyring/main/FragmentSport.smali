.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;
.super Lcom/jaga/ibraceletplus/jyring/BaseFragment;
.source "FragmentSport.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private count:[I

.field private distance:[F

.field private dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private lengthMode:I

.field llArrow:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023c
    .end annotation
.end field

.field llMode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0267
    .end annotation
.end field

.field private mid:Ljava/lang/String;

.field private mode:I

.field private modes:[I

.field tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047f
    .end annotation
.end field

.field tvDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field tvUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0540
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field private unit:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;-><init>()V

    .line 52
    const-string v0, "FragmentSport"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->TAG:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/16 v0, 0x8

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 73
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->modes:[I

    .line 75
    aget v0, v0, v3

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mode:I

    const/16 v0, 0xb

    .line 76
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->lengthMode:I

    .line 77
    const-string v1, ""

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->unit:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mid:Ljava/lang/String;

    .line 79
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->distance:[F

    .line 80
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->count:[I

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->requestLocationPermission()V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mode:I

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mode:I

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)[I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->modes:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)[F
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->distance:[F

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)[I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->count:[I

    return-object p0
.end method

.method private cleanup()V
    .locals 2

    .line 308
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u6e05\u7406\u8fd0\u52a8\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initData()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 84
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->unit:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "memberid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mid:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 3

    const/4 v0, 0x0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->llMode:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->llMode:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 212
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->initSport()V

    return-void
.end method

.method private refreshData()V
    .locals 2

    .line 291
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u5237\u65b0\u8fd0\u52a8\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestLocationPermission()V
    .locals 3

    .line 158
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission([Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method private sendAnalyticsEvent(Ljava/lang/String;)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u53d1\u9001\u4e8b\u4ef6: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 296
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u66f4\u65b0\u8fd0\u52a8UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->initData()V

    .line 298
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->initView()V

    return-void
.end method


# virtual methods
.method OnClickbStart(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0074
        }
    .end annotation

    .line 116
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 120
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    const-string v3, ""

    if-lt p1, v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v3, v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 132
    :cond_2
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f130373

    .line 133
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13015a

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V

    const v1, 0x7f13016b

    .line 135
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 146
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->requestLocationPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method OnClickivHistory()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01f3
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 199
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initSport()V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mid:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryRunRecord(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->lengthMode:I

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->distance:[F

    .line 91
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->count:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getType()I

    move-result v3

    .line 94
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->count:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 95
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->distance:[F

    aget v5, v4, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotaldistance()F

    move-result v6

    add-float/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->unit:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->tvUnit:Landroid/widget/TextView;

    const v1, 0x7f130544

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->tvUnit:Landroid/widget/TextView;

    const v2, 0x7f130547

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->distance:[F

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 103
    aget v2, v0, v1

    sget v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    mul-float v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->tvDistance:Landroid/widget/TextView;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->distance:[F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mode:I

    aget v2, v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->tvCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->count:[I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->mode:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 270
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->initSport()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->view:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f0d009c

    const/4 p3, 0x0

    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->view:Landroid/view/View;

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 64
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->unbinder:Lbutterknife/Unbinder;

    .line 66
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->setStatusMain()V

    .line 68
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->initData()V

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->initView()V

    .line 70
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onDestroyView()V

    .line 265
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onFragmentSelected()V
    .locals 1

    .line 279
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->refreshData()V

    .line 280
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->updateUI()V

    .line 281
    const-string/jumbo v0, "sport_page_show"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->sendAnalyticsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentUnselected()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->cleanup()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onPause()V

    .line 254
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 256
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->onFragmentUnselected()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 239
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onResume()V

    .line 241
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 243
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->onFragmentSelected()V

    :cond_0
    return-void
.end method
