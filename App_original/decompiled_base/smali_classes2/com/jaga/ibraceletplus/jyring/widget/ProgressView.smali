.class public Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bBorder:Z

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

.field private mOuterRingColor:I

.field private mOuterRingPaint:Landroid/graphics/Paint;

.field private mOuterStrokeWidth:F

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

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "ProgressView"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPre:F

    .line 45
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressNext:F

    .line 46
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp:F

    .line 48
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPre2:F

    .line 49
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressNext2:F

    .line 50
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp2:F

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStart:I

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mCount:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitle:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle2:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSleep:Ljava/util/HashMap;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDeep:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->padding:I

    .line 275
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->bBorder:Z

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->initPaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPre:F

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPre:F

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressNext:F

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp2:F

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp2:F

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPre2:F

    return p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPre2:F

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressNext2:F

    return p0
.end method

.method private drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 8

    .line 184
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 185
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 186
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    sub-float v2, v0, p2

    .line 187
    iput v2, v3, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, p2

    .line 188
    iput v2, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    .line 189
    iput v0, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    .line 190
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 p2, -0x3d4c0000    # -90.0f

    add-float v4, p3, p2

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p4

    move-object v7, p5

    .line 193
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/R$styleable;->ProgressView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 73
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->context:Landroid/content/Context;

    const/high16 v0, 0x42c00000    # 96.0f

    .line 75
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRadius:F

    const/4 v0, 0x5

    const/4 v1, -0x1

    .line 76
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingBgColor:I

    const/4 v0, 0x6

    .line 79
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingColor:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 80
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x7

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStrokeWidth:F

    const/4 v0, 0x2

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingColor:I

    const/high16 v3, 0x41100000    # 9.0f

    .line 84
    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x3

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterStrokeWidth:F

    const/16 v3, 0x8

    .line 87
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleColor:I

    .line 88
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextColor:I

    const/4 v2, 0x1

    .line 89
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextColor:I

    .line 91
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->padding:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->padding:I

    .line 93
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->va:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 6

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingBgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingBgPaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStrokeWidth:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->padding:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 131
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v0, v5, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingPaint:Landroid/graphics/Paint;

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRadius:F

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 155
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->context:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    .line 168
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRadius:F

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 173
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 176
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtHeight:F

    .line 178
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 179
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtHeight2:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 197
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v7, v2

    .line 198
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v8, v2

    .line 201
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRadius:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->padding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 205
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRadius:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStrokeWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterStrokeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    sub-float v4, v7, v3

    .line 206
    iput v4, v2, Landroid/graphics/RectF;->left:F

    sub-float v4, v8, v3

    .line 207
    iput v4, v2, Landroid/graphics/RectF;->top:F

    add-float v4, v7, v3

    .line 208
    iput v4, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v8

    .line 209
    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x0

    .line 210
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mOuterRingPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 212
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp:F

    const/4 v1, 0x0

    cmpl-float v2, v4, v1

    if-ltz v2, :cond_3

    .line 214
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRadius:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStrokeWidth:F

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    .line 216
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressNext:F

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_0

    .line 217
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStart:I

    int-to-float v3, v1

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 218
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    const-string v3, "#e4b2f0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStart:I

    int-to-float v3, v1

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp2:F

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 221
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mCount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtWidth:F

    .line 225
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mCount:Ljava/lang/String;

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtHeight:F

    const v5, 0x3eb33333    # 0.35f

    mul-float v4, v4, v5

    add-float/2addr v4, v8

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDataTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 234
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtWidth:F

    .line 235
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle:Ljava/lang/String;

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v8

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v4, v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtWidth:F

    .line 239
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle2:Ljava/lang/String;

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtHeight:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    add-float/2addr v4, v8

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 241
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->bBorder:Z

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 243
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    .line 244
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtHeight:F

    const/high16 v5, 0x40e00000    # 7.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v8, v4

    .line 245
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtWidth:F

    sub-float v6, v7, v5

    div-float v10, v3, v9

    sub-float v10, v8, v10

    add-float/2addr v7, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v3, v3, v5

    div-float/2addr v3, v9

    add-float/2addr v8, v3

    invoke-direct {v4, v6, v10, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 247
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTxtHeight:F

    div-float v5, v3, v9

    div-float/2addr v3, v9

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSleep:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v7, 0x42b40000    # 90.0f

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 253
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 254
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStart:I

    int-to-float v5, v5

    sub-float/2addr v5, v7

    add-float/2addr v5, v4

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSleep:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v3, v5

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 256
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDeep:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 261
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStart:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDeep:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 267
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressTemp:F

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressPre:F

    .line 268
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mCount:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mTitle:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle:Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle2:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setButton(Ljava/lang/String;Z)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSubTitle2:Ljava/lang/String;

    .line 278
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->bBorder:Z

    .line 279
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgress(IFF)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mStart:I

    .line 284
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressNext:F

    .line 285
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mProgressNext2:F

    .line 288
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->va:Landroid/animation/ValueAnimator;

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

    .line 297
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mSleep:Ljava/util/HashMap;

    .line 298
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->va:Landroid/animation/ValueAnimator;

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

    .line 292
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->mDeep:Ljava/util/HashMap;

    .line 293
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
