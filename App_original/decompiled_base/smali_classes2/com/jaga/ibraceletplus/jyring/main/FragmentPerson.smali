.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;
.super Lcom/jaga/ibraceletplus/jyring/BaseFragment;
.source "FragmentPerson.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private br:Landroid/content/BroadcastReceiver;

.field civAvatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00e1
    .end annotation
.end field

.field cvFemaleReminder:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0113
    .end annotation
.end field

.field cvWearMode:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0120
    .end annotation
.end field

.field private device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

.field private dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private isFragmentVisible:Z

.field ivAltLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d3
    .end annotation
.end field

.field llAgreementPrivacy:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023a
    .end annotation
.end field

.field sFit:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a037c
    .end annotation
.end field

.field tvNickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e0
    .end annotation
.end field

.field tvTargetSport:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a052a
    .end annotation
.end field

.field tvTargetStep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a052b
    .end annotation
.end field

.field tvUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0540
    .end annotation
.end field

.field tvUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0543
    .end annotation
.end field

.field tvWearMode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a054c
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;-><init>()V

    .line 63
    const-string v0, "FragmentPerson"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->TAG:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->isFragmentVisible:Z

    .line 304
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->br:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private HiddenOrShow()V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvFemaleReminder:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "Gender"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvFemaleReminder:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 502
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvWearMode:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "FUNCTION_SHOW_WEARMODE"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvWearMode:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initDeviceByFirmwareVer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initUnit()V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initWearMode()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 569
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u6e05\u7406\u7528\u6237\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initData()V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    return-void
.end method

.method private initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getDid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initDeviceByFirmwareVer(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 300
    :cond_0
    const-string p1, ""

    invoke-direct {p0, p1, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initDeviceByFirmwareVer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initDeviceByFirmwareVer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 323
    const-string v0, "0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0011"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->ivAltLogo:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->civAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const/high16 p2, 0x7f100000

    invoke-virtual {p1, p2}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    return-void

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->ivAltLogo:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initName()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->civAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f1000d4

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->civAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 346
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/JRing/imgs"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/headimg.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->isFileExistsInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->civAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    goto :goto_1

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    .line 359
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "nickname"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "Token"

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v1, "source"

    const-string v2, "origin"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private initUnit()V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 380
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13041b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13041d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUnit:Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUnit:Landroid/widget/TextView;

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;

    invoke-direct {v2, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->HiddenOrShow()V

    .line 268
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initUnit()V

    .line 269
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initWearMode()V

    .line 270
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "P_GOAL_STEP"

    const-string v4, "4000"

    invoke-virtual {v0, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvTargetStep:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "P_GOAL_SPORT"

    const-string v4, "240"

    invoke-virtual {v0, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 275
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvTargetSport:Landroid/widget/TextView;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object v0, v5, v2

    const-string v0, "%1$02d:%2$02d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_ENABLE_GOOGLE_API"

    .line 278
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->sFit:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->device:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initDevice(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V

    .line 286
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    const-string v1, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initWearMode()V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "WearMode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 437
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130422

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130423

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 439
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvWearMode:Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvWearMode:Landroid/widget/TextView;

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$5;

    invoke-direct {v2, p0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshData()V
    .locals 2

    .line 552
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u5237\u65b0\u7528\u6237\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendAnalyticsEvent(Ljava/lang/String;)V
    .locals 2

    .line 564
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

    .line 557
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u66f4\u65b0\u7528\u6237UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initName()V

    .line 559
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->HiddenOrShow()V

    return-void
.end method


# virtual methods
.method OnCheckedChangedsFit(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0a037c
        }
    .end annotation

    .line 515
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_ENABLE_GOOGLE_API"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 517
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 520
    sput-boolean v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mResolvingError:Z

    .line 522
    :cond_0
    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->googleSignin(Z)V

    :cond_1
    return-void
.end method

.method OnClickllTargetSport()V
    .locals 10
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a027c
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_GOAL_SPORT"

    const-string v2, "240"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$2;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 160
    div-int/lit8 v4, v0, 0x3c

    const v2, 0x7f13051c

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getString(I)Ljava/lang/String;

    move-result-object v5

    rem-int/lit8 v8, v0, 0x3c

    const v0, 0x7f13051d

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    const/16 v3, 0x17

    const/4 v6, 0x0

    const/16 v7, 0x3b

    invoke-virtual/range {v1 .. v9}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method OnClickllTargetStep()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a052b
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_GOAL_STEP"

    const-string v2, "4000"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    .line 140
    div-int/lit16 v0, v0, 0x3e8

    const-string v2, "000"

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V

    return-void
.end method

.method OnClickllUser(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0285
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 112
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method OnClicktvAbout()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a044e
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DupAboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvFeedback()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04a4
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvGoogleFit()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ac
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvManual()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04cc
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string/jumbo v2, "title_name"

    const-string/jumbo v3, "user_manual"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->view:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f0d009a

    const/4 p3, 0x0

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->view:Landroid/view/View;

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 75
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->view:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 77
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->setStatusMain()V

    .line 79
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initData()V

    .line 80
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->initView()V

    .line 81
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 528
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onDestroyView()V

    .line 529
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFragmentSelected()V
    .locals 2

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->isFragmentVisible:Z

    .line 537
    const-string v0, "HomeFragment"

    const-string/jumbo v1, "\u9996\u9875\u88ab\u9009\u4e2d\u663e\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->refreshData()V

    .line 541
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->updateUI()V

    .line 542
    const-string v0, "person_page_show"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->sendAnalyticsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentUnselected()V
    .locals 0

    .line 547
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cleanup()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 103
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->onFragmentUnselected()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseFragment;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 90
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->onFragmentSelected()V

    :cond_0
    return-void
.end method

.method rlFemaleReminderOnClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0366
        }
    .end annotation

    .line 195
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x1

    .line 199
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "FEMALE_EDIT_MODE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 204
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 207
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method tvAgreementOnClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0450
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    const-string/jumbo v1, "title_name"

    const-string/jumbo v2, "user_agreement"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method tvPrivacyOnClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04f4
        }
    .end annotation

    .line 244
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->dupMainActivity:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getCurrentFragment()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    const-string/jumbo v1, "title_name"

    const-string/jumbo v2, "user_privacy"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
