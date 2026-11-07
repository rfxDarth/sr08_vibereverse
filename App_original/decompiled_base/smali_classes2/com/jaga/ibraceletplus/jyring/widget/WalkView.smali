.class public Lcom/jaga/ibraceletplus/jyring/widget/WalkView;
.super Landroid/view/View;
.source "WalkView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mCount:Ljava/lang/String;

.field private mOuterRingColor1:I

.field private mOuterRingColor1Bg:I

.field private mOuterRingColor2:I

.field private mOuterRingColor2Bg:I

.field private mOuterRingColor3:I

.field private mOuterRingColor3Bg:I

.field private mOuterRingPaint1:Landroid/graphics/Paint;

.field private mOuterRingPaint1Bg:Landroid/graphics/Paint;

.field private mOuterRingPaint2:Landroid/graphics/Paint;

.field private mOuterRingPaint2Bg:Landroid/graphics/Paint;

.field private mOuterRingPaint3:Landroid/graphics/Paint;

.field private mOuterRingPaint3Bg:Landroid/graphics/Paint;

.field private mOuterStrokeWidth:F

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

.field private mTimeProgress:F

.field private maxProgress:F

.field private padding:I

.field private va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "WalkView"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPre:F

    .line 35
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressNext:F

    .line 36
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp:F

    .line 37
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mTimeProgress:F

    .line 39
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPre2:F

    .line 40
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressNext2:F

    .line 41
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp2:F

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mStart:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mCount:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->padding:I

    const/high16 v0, 0x43b40000    # 360.0f

    .line 50
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->maxProgress:F

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->initPaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPre:F

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPre:F

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressNext:F

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp2:F

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp2:F

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPre2:F

    return p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPre2:F

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressNext2:F

    return p0
.end method

.method private drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 8

    .line 162
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 163
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 164
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    sub-float v2, v0, p2

    .line 165
    iput v2, v3, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, p2

    .line 166
    iput v2, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    .line 167
    iput v0, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    .line 168
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 p2, -0x3d4c0000    # -90.0f

    add-float v4, p3, p2

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p4

    move-object v7, p5

    .line 171
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/R$styleable;->WalkView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 61
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->context:Landroid/content/Context;

    const/high16 v0, 0x42c00000    # 96.0f

    .line 63
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x9

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRadius:F

    const/16 v0, 0xb

    const/4 v1, -0x1

    .line 66
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingColor:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 67
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0xc

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mStrokeWidth:F

    const/4 v0, 0x2

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor1:I

    const/4 v2, 0x3

    .line 71
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor1Bg:I

    const/4 v2, 0x4

    .line 72
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor2:I

    const/4 v2, 0x5

    .line 73
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor2Bg:I

    const/4 v2, 0x6

    .line 74
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor3:I

    const/4 v2, 0x7

    .line 75
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor3Bg:I

    const/high16 v1, 0x41900000    # 18.0f

    .line 76
    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    .line 78
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->padding:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->padding:I

    .line 80
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->va:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/widget/WalkView$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/WalkView;)V

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
    .locals 5

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mStrokeWidth:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v4, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor1Bg:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor2:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor2Bg:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor3:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    .line 154
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingColor3Bg:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 175
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 176
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    int-to-float v2, v2

    .line 179
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 180
    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mRadius:F

    sub-float v9, v1, v3

    .line 181
    iput v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v10, v2, v3

    .line 182
    iput v10, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    .line 183
    iput v1, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    .line 184
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    .line 185
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/high16 v6, 0x43340000    # 180.0f

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 187
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 188
    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterStrokeWidth:F

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v3, v5

    add-float v5, v9, v3

    .line 189
    iput v5, v12, Landroid/graphics/RectF;->left:F

    add-float v5, v10, v3

    .line 190
    iput v5, v12, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v3

    .line 191
    iput v5, v12, Landroid/graphics/RectF;->right:F

    sub-float v5, v2, v3

    .line 192
    iput v5, v12, Landroid/graphics/RectF;->bottom:F

    const/4 v15, 0x0

    .line 193
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    const/high16 v13, -0x3ccc0000    # -180.0f

    const/high16 v14, 0x43340000    # 180.0f

    move-object/from16 v11, p1

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v17, v12

    .line 195
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    add-float/2addr v9, v3

    .line 197
    iput v9, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v3

    .line 198
    iput v10, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    .line 199
    iput v1, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    .line 200
    iput v2, v12, Landroid/graphics/RectF;->bottom:F

    .line 201
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v1, v12

    .line 203
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp:F

    const/4 v3, 0x0

    cmpl-float v5, v2, v3

    if-ltz v5, :cond_0

    .line 204
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressNext:F

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_0

    div-float v6, v2, v18

    const/4 v7, 0x0

    .line 205
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint1:Landroid/graphics/Paint;

    const/high16 v5, -0x3ccc0000    # -180.0f

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 206
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp:F

    div-float v14, v2, v18

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint2:Landroid/graphics/Paint;

    const/high16 v13, -0x3ccc0000    # -180.0f

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    move-object/from16 v12, v17

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 207
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mTimeProgress:F

    div-float v14, v2, v18

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mOuterRingPaint3:Landroid/graphics/Paint;

    move-object v12, v1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 213
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressTemp:F

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressPre:F

    .line 214
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mCount:Ljava/lang/String;

    .line 215
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgress(IFFF)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mStart:I

    .line 220
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->maxProgress:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressNext:F

    .line 221
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->maxProgress:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mProgressNext2:F

    .line 222
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->maxProgress:F

    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->mTimeProgress:F

    .line 225
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 226
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
