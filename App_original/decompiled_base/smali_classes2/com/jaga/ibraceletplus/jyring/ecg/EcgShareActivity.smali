.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "EcgShareActivity.java"


# instance fields
.field private ecgid:Ljava/lang/String;

.field egBackground:Lcom/jaga/ibraceletplus/jyring/widget/EcgGrid;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0162
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private part:I

.field svEcg0:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0403
    .end annotation
.end field

.field svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0404
    .end annotation
.end field

.field svEcg2:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0405
    .end annotation
.end field

.field private timestamp:J

.field tvAge:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a044f
    .end annotation
.end field

.field tvGender:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ab
    .end annotation
.end field

.field tvHeart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b5
    .end annotation
.end field

.field tvHeight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04be
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field

.field tvWeight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a054e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->ecgid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->timestamp:J

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 81
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->part:I

    return-void
.end method

.method private initData()V
    .locals 9

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "DistanceUnit"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "Height"

    const-string v6, "170"

    invoke-virtual {v3, v5, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 93
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "Weight"

    const-string v7, "60"

    invoke-virtual {v5, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 95
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v7, "Birthday"

    const-string v8, "1990-01-01"

    invoke-virtual {v6, v7, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvGender:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130545

    goto :goto_0

    :cond_0
    const v0, 0x7f130542

    :goto_0
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvHeart:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v7, "heart"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    sub-int/2addr v2, v0

    .line 103
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvAge:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 108
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const v2, 0x7f1302c5

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const v2, 0x7f130588

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 116
    :cond_1
    sget v0, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->CM2INCH:F

    mul-float v3, v3, v0

    const/high16 v0, 0x41400000    # 12.0f

    div-float v0, v3, v0

    float-to-int v0, v0

    float-to-double v1, v3

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0xc

    .line 119
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KG2LB:F

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v2, 0x7f130589

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->timestamp:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x5

    invoke-static {v1, v8, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initExtra()V
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ecgid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->ecgid:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->timestamp:J

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->setRequestedOrientation(I)V

    .line 62
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d003b

    .line 65
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->setStatusEcg()V

    .line 68
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->initExtra()V

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgShareActivity;->initData()V

    return-void
.end method
