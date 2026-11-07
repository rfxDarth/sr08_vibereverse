.class public Lyanzhikai/ruler/KgNumberLayout;
.super Landroid/widget/RelativeLayout;
.source "KgNumberLayout.java"

# interfaces
.implements Lyanzhikai/ruler/RulerCallback;


# instance fields
.field private mKgTextColor:I

.field private mKgTextSize:F

.field private mRuler:Lyanzhikai/ruler/BooheeRuler;

.field private mScaleTextColor:I

.field private mScaleTextSize:F

.field private mUnitText:Ljava/lang/String;

.field private tv_kg:Landroid/widget/TextView;

.field private tv_scale:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 22
    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextSize:F

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextSize:F

    .line 24
    invoke-virtual {p0}, Lyanzhikai/ruler/KgNumberLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextColor:I

    .line 25
    invoke-virtual {p0}, Lyanzhikai/ruler/KgNumberLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextColor:I

    .line 27
    const-string v0, "kg"

    iput-object v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mUnitText:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lyanzhikai/ruler/KgNumberLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 22
    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextSize:F

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextSize:F

    .line 24
    invoke-virtual {p0}, Lyanzhikai/ruler/KgNumberLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextColor:I

    .line 25
    invoke-virtual {p0}, Lyanzhikai/ruler/KgNumberLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextColor:I

    .line 27
    const-string v0, "kg"

    iput-object v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mUnitText:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/KgNumberLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lyanzhikai/ruler/KgNumberLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x42a00000    # 80.0f

    .line 22
    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextSize:F

    const/high16 p2, 0x42200000    # 40.0f

    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextSize:F

    .line 24
    invoke-virtual {p0}, Lyanzhikai/ruler/KgNumberLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextColor:I

    .line 25
    invoke-virtual {p0}, Lyanzhikai/ruler/KgNumberLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextColor:I

    .line 27
    const-string p2, "kg"

    iput-object p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mUnitText:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lyanzhikai/ruler/KgNumberLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lyanzhikai/ruler/R$layout;->layout_kg_number:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    sget p1, Lyanzhikai/ruler/R$id;->tv_scale:I

    invoke-virtual {p0, p1}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_scale:Landroid/widget/TextView;

    .line 65
    sget p1, Lyanzhikai/ruler/R$id;->tv_kg:I

    invoke-virtual {p0, p1}, Lyanzhikai/ruler/KgNumberLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_kg:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_scale:Landroid/widget/TextView;

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextSize:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    iget-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_scale:Landroid/widget/TextView;

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_kg:Landroid/widget/TextView;

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextSize:F

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    iget-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_kg:Landroid/widget/TextView;

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_kg:Landroid/widget/TextView;

    iget-object v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mUnitText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lyanzhikai/ruler/R$styleable;->KgNumberLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lyanzhikai/ruler/R$styleable;->KgNumberLayout_scaleTextSize:I

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextSize:F

    .line 51
    sget p2, Lyanzhikai/ruler/R$styleable;->KgNumberLayout_kgTextSize:I

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextSize:F

    .line 52
    sget p2, Lyanzhikai/ruler/R$styleable;->KgNumberLayout_scaleTextColor:I

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mScaleTextColor:I

    .line 53
    sget p2, Lyanzhikai/ruler/R$styleable;->KgNumberLayout_kgTextColor:I

    iget v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mKgTextColor:I

    .line 54
    sget p2, Lyanzhikai/ruler/R$styleable;->KgNumberLayout_kgUnitText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 56
    iput-object p2, p0, Lyanzhikai/ruler/KgNumberLayout;->mUnitText:Ljava/lang/String;

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public bindRuler(Lyanzhikai/ruler/BooheeRuler;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lyanzhikai/ruler/KgNumberLayout;->mRuler:Lyanzhikai/ruler/BooheeRuler;

    .line 77
    invoke-virtual {p1, p0}, Lyanzhikai/ruler/BooheeRuler;->setCallback(Lyanzhikai/ruler/RulerCallback;)V

    return-void
.end method

.method public onScaleChanging(F)V
    .locals 2

    .line 83
    iget-object v0, p0, Lyanzhikai/ruler/KgNumberLayout;->mRuler:Lyanzhikai/ruler/BooheeRuler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lyanzhikai/ruler/KgNumberLayout;->tv_scale:Landroid/widget/TextView;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getFactor()F

    move-result v0

    invoke-static {p1, v0}, Lyanzhikai/ruler/Utils/RulerStringUtil;->resultValueOf(FF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
