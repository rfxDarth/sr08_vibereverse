.class public Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;
.super Landroid/view/View;
.source "BatteryView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bBorder:Z

.field private bCharging:Z

.field private bmpBackground:Landroid/graphics/Bitmap;

.field private bmpCharging:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private mCount:Ljava/lang/String;

.field private mDataTextColor:I

.field private mDataTextPaint:Landroid/graphics/Paint;

.field private mDeep:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDescTextColor:I

.field private mDescTextPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressNext:F

.field private mProgressNext2:F

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressPre:F

.field private mProgressPre2:F

.field private mProgressTemp:F

.field private mProgressTemp2:F

.field private mRadius:F

.field private mRingBgColor:I

.field private mRingBgPaint:Landroid/graphics/Paint;

.field private mRingColor:I

.field private mRingPaint:Landroid/graphics/Paint;

.field private mSleep:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:I

.field private mStrokeWidth:F

.field private mSubTitle:Ljava/lang/String;

.field private mSubTitle2:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:I

.field private mTitleTextPaint:Landroid/graphics/Paint;

.field private mTxtHeight:F

.field private mTxtHeight2:F

.field private mTxtWidth:F

.field private padding:I

.field private va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "BatteryView"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgress:I

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPre:F

    .line 46
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressNext:F

    .line 47
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp:F

    .line 49
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPre2:F

    .line 50
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressNext2:F

    .line 51
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp2:F

    .line 53
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mStart:I

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mCount:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitle:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mSubTitle:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mSubTitle2:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mSleep:Ljava/util/HashMap;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDeep:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 61
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->padding:I

    .line 66
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bCharging:Z

    .line 236
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bBorder:Z

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->initPaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPre:F

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPre:F

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressNext:F

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp2:F

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp2:F

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPre2:F

    return p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPre2:F

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressNext2:F

    return p0
.end method

.method private drawRect(Landroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 2

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    .line 179
    iput v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40a00000    # 5.0f

    .line 180
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 181
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    mul-float v1, v1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 182
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 184
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/R$styleable;->ProgressView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->context:Landroid/content/Context;

    const/high16 v0, 0x42c00000    # 96.0f

    .line 79
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRadius:F

    const/4 v0, 0x5

    const/4 v1, -0x1

    .line 80
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingBgColor:I

    const/4 v0, 0x6

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingColor:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 84
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x7

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mStrokeWidth:F

    const/16 v0, 0x8

    .line 87
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleColor:I

    .line 88
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextColor:I

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextColor:I

    .line 91
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->padding:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->padding:I

    const/4 p1, 0x2

    .line 93
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->va:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 5

    .line 116
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10003e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bmpBackground:Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10003f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bmpCharging:Landroid/graphics/Bitmap;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingBgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingBgPaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mStrokeWidth:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 133
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v4, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleTextPaint:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRadius:F

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 149
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitleTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->context:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRadius:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextPaint:Landroid/graphics/Paint;

    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRadius:F

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDataTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 170
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTxtHeight:F

    .line 172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 173
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTxtHeight2:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 188
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 189
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 196
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bmpBackground:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 198
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp:F

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    .line 201
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressNext:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    .line 202
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v4}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->drawRect(Landroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    .line 203
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mRingPaint:Landroid/graphics/Paint;

    const v4, -0xff0100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    :cond_0
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bCharging:Z

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bmpCharging:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 228
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressTemp:F

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressPre:F

    .line 229
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mCount:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mTitle:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mSubTitle:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mSubTitle2:Ljava/lang/String;

    .line 233
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setButton(Ljava/lang/String;Z)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mSubTitle2:Ljava/lang/String;

    .line 239
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bBorder:Z

    .line 240
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->bCharging:Z

    return-void
.end method

.method public setProgress(IFF)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mStart:I

    float-to-int p1, p2

    .line 245
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgress:I

    .line 246
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressNext:F

    .line 247
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mProgressNext2:F

    .line 250
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgressBottom(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mSleep:Ljava/util/HashMap;

    .line 260
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgressTop(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->mDeep:Ljava/util/HashMap;

    .line 255
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
