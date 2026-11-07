.class public Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;
.super Landroid/view/View;
.source "SleepPieView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mCount:Ljava/lang/String;

.field private mOuterRingColor1:I

.field private mOuterRingColor2:I

.field private mOuterRingColor3:I

.field private mOuterRingPaint1:Landroid/graphics/Paint;

.field private mOuterRingPaint2:Landroid/graphics/Paint;

.field private mOuterRingPaint3:Landroid/graphics/Paint;

.field private mOuterStrokeWidth:F

.field private mProgress3:F

.field private mProgress4:F

.field private mProgressNext:F

.field private mProgressNext2:F

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressPre:F

.field private mProgressPre2:F

.field private mProgressTemp:F

.field private mProgressTemp2:F

.field private mRadius:F

.field private mRingColor:I

.field private mRingPaint:Landroid/graphics/Paint;

.field private mStart:I

.field private mStrokeWidth:F

.field private padding:I

.field private va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-string v0, "SleepPieView"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPre:F

    .line 30
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressNext:F

    .line 31
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressTemp:F

    .line 32
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgress3:F

    .line 33
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgress4:F

    .line 35
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPre2:F

    .line 36
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressNext2:F

    .line 37
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressTemp2:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mStart:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mCount:Ljava/lang/String;

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->padding:I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->initPaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressTemp:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressTemp:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPre:F

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPre:F

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressNext:F

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressTemp2:F

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressTemp2:F

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPre2:F

    return p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPre2:F

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressNext2:F

    return p0
.end method

.method private drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 8

    .line 131
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 132
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 133
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    sub-float v2, v0, p2

    .line 134
    iput v2, v3, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, p2

    .line 135
    iput v2, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    .line 136
    iput v0, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    .line 137
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 p2, -0x3d4c0000    # -90.0f

    add-float v4, p3, p2

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p4

    move-object v7, p5

    .line 140
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/R$styleable;->SleepPieView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 55
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->context:Landroid/content/Context;

    const/high16 v0, 0x42c00000    # 96.0f

    .line 57
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRadius:F

    const/16 v0, 0x8

    const/4 v1, -0x1

    .line 60
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingColor:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 61
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x9

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mStrokeWidth:F

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingColor1:I

    const/4 v2, 0x3

    .line 65
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingColor2:I

    const/4 v2, 0x4

    .line 66
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingColor3:I

    const/high16 v1, 0x41900000    # 18.0f

    .line 67
    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterStrokeWidth:F

    .line 69
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->padding:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->padding:I

    .line 71
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->va:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;)V

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

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mStrokeWidth:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v4, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPaint:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint1:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint1:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint1:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint2:Landroid/graphics/Paint;

    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingColor2:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint3:Landroid/graphics/Paint;

    .line 124
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint3:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingColor3:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint3:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint3:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 144
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 145
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 148
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 149
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mRadius:F

    sub-float v4, v0, v2

    .line 150
    iput v4, v3, Landroid/graphics/RectF;->left:F

    sub-float v5, v1, v2

    .line 151
    iput v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    .line 152
    iput v0, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    .line 153
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 155
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 156
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterStrokeWidth:F

    add-float v6, v4, v2

    .line 157
    iput v6, v7, Landroid/graphics/RectF;->left:F

    add-float v6, v5, v2

    .line 158
    iput v6, v7, Landroid/graphics/RectF;->top:F

    sub-float v6, v0, v2

    .line 159
    iput v6, v7, Landroid/graphics/RectF;->right:F

    sub-float v6, v1, v2

    .line 160
    iput v6, v7, Landroid/graphics/RectF;->bottom:F

    .line 162
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v2, v2, v6

    add-float/2addr v4, v2

    .line 164
    iput v4, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    .line 165
    iput v5, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    .line 166
    iput v0, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 167
    iput v1, v12, Landroid/graphics/RectF;->bottom:F

    .line 169
    iget v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressNext:F

    .line 170
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgress3:F

    .line 171
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgress4:F

    const/4 v1, 0x0

    sub-float v8, v1, v9

    const/4 v10, 0x1

    .line 173
    iget-object v11, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint1:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v2, v6

    add-float v10, v5, v1

    move-object v9, v12

    const/4 v12, 0x1

    .line 174
    iget-object v13, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint2:Landroid/graphics/Paint;

    move v11, v0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v6, 0x1

    .line 175
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mOuterRingPaint3:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 179
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressTemp:F

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressPre:F

    .line 180
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mCount:Ljava/lang/String;

    .line 181
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgress(IFFFF)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mStart:I

    .line 186
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressNext:F

    .line 187
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgressNext2:F

    .line 188
    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgress3:F

    .line 189
    iput p5, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->mProgress4:F

    .line 192
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SleepPieView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
