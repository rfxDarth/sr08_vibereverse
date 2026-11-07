.class public Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;
.super Landroid/view/View;
.source "OxygenIndicatorView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bmpBackground:Landroid/graphics/Bitmap;

.field private bmpHeight:I

.field private bmpWidth:I

.field private context:Landroid/content/Context;

.field private mProgress:I

.field private mProgressNext:F

.field private mProgressNext2:F

.field private mProgressPre:F

.field private mProgressPre2:F

.field private mProgressTemp:F

.field private mProgressTemp2:F

.field private padding:I

.field private va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "OxygenIndicatorView"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgress:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressPre:F

    .line 27
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressNext:F

    .line 28
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressTemp:F

    .line 30
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressPre2:F

    .line 31
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressNext2:F

    .line 32
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressTemp2:F

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->padding:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->initPaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressTemp:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressTemp:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressPre:F

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressPre:F

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressNext:F

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressTemp2:F

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressTemp2:F

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressPre2:F

    return p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressPre2:F

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressNext2:F

    return p0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/R$styleable;->OxygenIndicationView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 50
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->context:Landroid/content/Context;

    .line 52
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->padding:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->padding:I

    const/4 p1, 0x2

    .line 54
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->va:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100013

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpBackground:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpWidth:I

    .line 79
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->getWidth()I

    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->getHeight()I

    move-result v1

    .line 86
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgress:I

    mul-int v0, v0, v2

    div-int/lit8 v0, v0, 0x64

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpWidth:I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpHeight:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpWidth:I

    add-int/2addr v5, v0

    invoke-direct {v3, v0, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->bmpBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressTemp:F

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgressPre:F

    .line 94
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    float-to-int p1, p1

    .line 98
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/OxygenIndicatorView;->mProgress:I

    return-void
.end method
