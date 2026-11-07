.class public Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;
.super Landroid/view/View;
.source "WalkView2.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private baseRadius:F

.field private centerX:F

.field private centerY:F

.field private colors:[I

.field private context:Landroid/content/Context;

.field private leftCenterX:F

.field private lineLength:F

.field private mCount:Ljava/lang/String;

.field private mDataTextColor:I

.field private mDataTextPaint:Landroid/graphics/Paint;

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

.field private mProgress:[F

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

.field private mTxtHeight:F

.field private mTxtWidth:F

.field private maxProgress:F

.field private originalBitmap:Landroid/graphics/Bitmap;

.field private padding:I

.field private paints:[Landroid/graphics/Paint;

.field private pathIconBitmaps:[Landroid/graphics/Bitmap;

.field private paths:[Landroid/graphics/Path;

.field private pathsProgress:[Landroid/graphics/Path;

.field private pathsProgressIcon:[Landroid/graphics/Path;

.field private radiiRatios:[F

.field private radiiRatiosIcon:[F

.field private rightCenterX:F

.field private roundPadding:F

.field private roundPadding2:F

.field private scaledBitmap:Landroid/graphics/Bitmap;

.field private va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "WalkView"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPre:F

    .line 41
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressNext:F

    .line 42
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressTemp:F

    .line 43
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mTimeProgress:F

    .line 45
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPre2:F

    .line 46
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressNext2:F

    .line 47
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressTemp2:F

    const/4 v0, 0x3

    .line 49
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mStart:I

    .line 52
    const-string v2, "0"

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mCount:Ljava/lang/String;

    const/4 v2, 0x1

    .line 54
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->padding:I

    const/high16 v3, 0x43b40000    # 360.0f

    .line 58
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->maxProgress:F

    .line 61
    new-array v3, v0, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->radiiRatios:[F

    .line 62
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->radiiRatiosIcon:[F

    const v3, -0xffff01

    const v4, -0xff0100

    const/high16 v5, -0x10000

    .line 63
    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->colors:[I

    const/high16 v3, 0x41200000    # 10.0f

    .line 70
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->roundPadding:F

    .line 71
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->roundPadding2:F

    .line 75
    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    aput-object v3, v0, v2

    const/4 v1, 0x2

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathIconBitmaps:[Landroid/graphics/Bitmap;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->initPaint()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f30a3d7    # 0.69f
        0x3ee66666    # 0.45f
    .end array-data
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressTemp:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressTemp:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPre:F

    return p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPre:F

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressNext:F

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressTemp2:F

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressTemp2:F

    return p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPre2:F

    return p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPre2:F

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressNext2:F

    return p0
.end method

.method private createPath(Landroid/graphics/Path;FF)V
    .locals 10

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 295
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->leftCenterX:F

    sub-float v2, v1, p2

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerY:F

    sub-float v4, v3, p2

    add-float/2addr v1, p2

    add-float/2addr v3, p2

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x41480000    # 12.5f

    .line 301
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    const/high16 v4, 0x43340000    # 180.0f

    .line 302
    invoke-virtual {p1, v0, v4, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    cmpg-float v2, p3, v1

    if-gtz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    sub-float v2, p3, v1

    const/high16 v4, 0x41c80000    # 25.0f

    .line 309
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 310
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->rightCenterX:F

    sub-float/2addr v5, p2

    sub-float v2, v4, v2

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->lineLength:F

    sub-float/2addr v6, p2

    mul-float v2, v2, v6

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerY:F

    sub-float/2addr v2, p2

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x42160000    # 37.5f

    cmpg-float v5, p3, v2

    if-gez v5, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->rightCenterX:F

    sub-float v7, v6, p2

    iget v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerY:F

    sub-float v9, v8, p2

    add-float/2addr v6, p2

    add-float/2addr v8, p2

    invoke-direct {v5, v7, v9, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-float v2, p3, v2

    .line 323
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    const/high16 v6, 0x43870000    # 270.0f

    .line 324
    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v6, p3, v2

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    sub-float v2, p3, v2

    .line 330
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    const/high16 v6, 0x43b40000    # 360.0f

    .line 331
    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const/high16 v2, 0x427a0000    # 62.5f

    cmpg-float v5, p3, v2

    if-gez v5, :cond_3

    goto :goto_0

    :cond_3
    sub-float v2, p3, v2

    .line 338
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 339
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->leftCenterX:F

    add-float/2addr v5, p2

    sub-float v2, v4, v2

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->lineLength:F

    sub-float/2addr v6, p2

    mul-float v2, v2, v6

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerY:F

    add-float/2addr v2, p2

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p2, 0x42af0000    # 87.5f

    cmpg-float v2, p3, p2

    if-gez v2, :cond_4

    goto :goto_0

    :cond_4
    sub-float p2, p3, p2

    .line 345
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p2, p2, v3

    div-float/2addr p2, v1

    .line 346
    invoke-virtual {p1, v0, v3, p2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const/high16 p2, 0x42c80000    # 100.0f

    cmpg-float p2, p3, p2

    if-gez p2, :cond_5

    :goto_0
    return-void

    .line 352
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private drawArcPoint(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 8

    .line 356
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 357
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 358
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    sub-float v2, v0, p2

    .line 359
    iput v2, v3, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, p2

    .line 360
    iput v2, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    .line 361
    iput v0, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    .line 362
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 p2, -0x3d4c0000    # -90.0f

    add-float v4, p3, p2

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p4

    move-object v7, p5

    .line 365
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/R$styleable;->WalkView2:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 86
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->context:Landroid/content/Context;

    const/high16 v0, 0x42c00000    # 96.0f

    .line 88
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x9

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRadius:F

    const/16 v0, 0xb

    const/4 v1, -0x1

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingColor:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 92
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xc

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mStrokeWidth:F

    const/4 v2, 0x2

    .line 95
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor1:I

    const/4 v3, 0x3

    .line 96
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor1Bg:I

    const/4 v3, 0x4

    .line 97
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor2:I

    const/4 v3, 0x5

    .line 98
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor2Bg:I

    const/4 v3, 0x6

    .line 99
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor3:I

    const/4 v3, 0x7

    .line 100
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor3Bg:I

    .line 101
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/16 v3, 0x8

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    const/16 v0, 0xd

    .line 104
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextColor:I

    .line 106
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->padding:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->padding:I

    .line 108
    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->va:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;)V

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
    .locals 7

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mStrokeWidth:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->padding:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRingPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v0, v5, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPaint:Landroid/graphics/Paint;

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1:Landroid/graphics/Paint;

    .line 149
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    .line 155
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor1Bg:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2:Landroid/graphics/Paint;

    .line 163
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor2:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    .line 169
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor2Bg:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3:Landroid/graphics/Paint;

    .line 176
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor3:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    .line 182
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingColor3Bg:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3Bg:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x3

    .line 188
    new-array v2, v0, [Landroid/graphics/Path;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->paths:[Landroid/graphics/Path;

    .line 189
    new-array v2, v0, [Landroid/graphics/Path;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    .line 190
    new-array v2, v0, [Landroid/graphics/Path;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    .line 191
    new-array v2, v0, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->paints:[Landroid/graphics/Paint;

    .line 192
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1:Landroid/graphics/Paint;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 193
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint2:Landroid/graphics/Paint;

    aput-object v3, v2, v1

    .line 194
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint3:Landroid/graphics/Paint;

    aput-object v3, v2, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 196
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->paths:[Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    aput-object v6, v3, v2

    .line 197
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    aput-object v6, v3, v2

    .line 198
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    aput-object v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    .line 203
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mRadius:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 208
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 218
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 219
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mTxtHeight:F

    const v0, 0x7f1000c9

    const v2, 0x3f2aaaab

    .line 223
    invoke-direct {p0, v0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->loadDrawableRes(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 224
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathIconBitmaps:[Landroid/graphics/Bitmap;

    const v2, 0x7f100051

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {p0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->loadDrawableRes(IF)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v5

    .line 225
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathIconBitmaps:[Landroid/graphics/Bitmap;

    const v2, 0x7f100042

    invoke-direct {p0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->loadDrawableRes(IF)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathIconBitmaps:[Landroid/graphics/Bitmap;

    const v1, 0x7f10008c

    invoke-direct {p0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->loadDrawableRes(IF)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    return-void
.end method

.method private loadDrawableRes(IF)Landroid/graphics/Bitmap;
    .locals 5

    .line 230
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 233
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    const/4 v1, 0x1

    .line 246
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 375
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->getWidth()I

    .line 376
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->getHeight()I

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 379
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 384
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->paths:[Landroid/graphics/Path;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mOuterRingPaint1Bg:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v4, v5, :cond_a

    .line 389
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->paints:[Landroid/graphics/Paint;

    aget-object v8, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 392
    new-instance v7, Landroid/graphics/PathMeasure;

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    aget-object v8, v8, v4

    invoke-direct {v7, v8, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 393
    new-array v8, v2, [F

    .line 396
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    invoke-virtual {v7, v9, v8, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 401
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v7, v7, v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmpl-float v9, v7, v9

    if-nez v9, :cond_1

    .line 402
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->leftCenterX:F

    iget v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->baseRadius:F

    iget-object v11, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->radiiRatiosIcon:[F

    aget v11, v11, v4

    mul-float v9, v9, v11

    sub-float/2addr v7, v9

    const/high16 v9, 0x40400000    # 3.0f

    add-float/2addr v7, v9

    aput v7, v8, v3

    .line 403
    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerY:F

    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathIconBitmaps:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/2addr v9, v2

    int-to-float v9, v9

    sub-float/2addr v7, v9

    aput v7, v8, v10

    :goto_2
    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_4

    :cond_1
    const/high16 v9, 0x41480000    # 12.5f

    cmpg-float v9, v7, v9

    if-gez v9, :cond_2

    :goto_3
    goto :goto_2

    :cond_2
    const/high16 v9, 0x42160000    # 37.5f

    cmpg-float v9, v7, v9

    if-gez v9, :cond_3

    const/16 v7, -0xf

    const/4 v11, 0x2

    goto :goto_4

    :cond_3
    const/high16 v9, 0x42480000    # 50.0f

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    const/16 v7, -0x9

    const/4 v11, 0x3

    goto :goto_4

    :cond_4
    const/high16 v9, 0x427a0000    # 62.5f

    const/16 v11, -0x19

    cmpg-float v9, v7, v9

    if-gez v9, :cond_5

    const/4 v7, -0x5

    const/16 v7, -0x19

    const/4 v11, -0x5

    goto :goto_4

    :cond_5
    const/high16 v9, 0x42af0000    # 87.5f

    cmpg-float v7, v7, v9

    if-gez v7, :cond_6

    const/16 v11, -0x1e

    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_9

    if-eq v4, v10, :cond_8

    if-eq v4, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x2

    goto :goto_4

    :cond_8
    const/16 v7, 0xb

    const/4 v11, -0x8

    goto :goto_4

    :cond_9
    const/4 v7, 0x5

    const/16 v11, -0x14

    .line 446
    :goto_4
    aget v9, v8, v3

    int-to-float v7, v7

    add-float/2addr v9, v7

    .line 447
    aget v7, v8, v10

    int-to-float v8, v11

    add-float/2addr v7, v8

    .line 448
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathIconBitmaps:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v4

    invoke-virtual {p1, v8, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 452
    :cond_a
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mCount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mTxtWidth:F

    .line 456
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 457
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 458
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v2

    .line 460
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mCount:Ljava/lang/String;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mTxtWidth:F

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mDataTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    .line 464
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 465
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v1, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p3, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float v0, p3, p4

    .line 253
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerX:F

    int-to-float v0, p2

    div-float/2addr v0, p4

    .line 254
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerY:F

    .line 257
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->roundPadding:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->baseRadius:F

    mul-float p1, p1, p4

    sub-float/2addr p3, p1

    mul-float p2, p2, p4

    sub-float/2addr p3, p2

    .line 260
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->lineLength:F

    .line 263
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->centerX:F

    div-float p2, p3, p4

    sub-float p2, p1, p2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->leftCenterX:F

    div-float/2addr p3, p4

    add-float/2addr p1, p3

    .line 264
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->rightCenterX:F

    const/4 p1, 0x3

    .line 267
    new-array p2, p1, [F

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    .line 269
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->baseRadius:F

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->radiiRatios:[F

    aget v1, v1, p4

    mul-float v0, v0, v1

    aput v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_1
    if-ge p4, p1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->paths:[Landroid/graphics/Path;

    aget-object v0, v0, p4

    aget v1, p2, p4

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 277
    :cond_1
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    aget-object p4, p4, p3

    aget v0, p2, p3

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v1, v1, p3

    invoke-direct {p0, p4, v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 278
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    const/4 v0, 0x1

    aget-object p4, p4, v0

    aget v1, p2, v0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v2, v2, v0

    invoke-direct {p0, p4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 279
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    const/4 v1, 0x2

    aget-object p4, p4, v1

    aget p2, p2, v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v2, v2, v1

    invoke-direct {p0, p4, p2, v2}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 281
    new-array p2, p1, [F

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p1, :cond_2

    .line 283
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->baseRadius:F

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->radiiRatiosIcon:[F

    aget v3, v3, p4

    mul-float v2, v2, v3

    aput v2, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    aget-object p1, p1, p3

    aget p4, p2, p3

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget p3, v2, p3

    invoke-direct {p0, p1, p4, p3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 287
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    aget-object p1, p1, v0

    aget p3, p2, v0

    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget p4, p4, v0

    invoke-direct {p0, p1, p3, p4}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 288
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    aget-object p1, p1, v1

    aget p2, p2, v1

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget p3, p3, v1

    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 470
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressTemp:F

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgressPre:F

    .line 471
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mCount:Ljava/lang/String;

    .line 472
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgress(IFFF)V
    .locals 4

    .line 476
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mStart:I

    .line 477
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->maxProgress:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float p3, p3, p4

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->maxProgress:F

    div-float/2addr p3, v0

    const/4 v1, 0x0

    aput p3, p1, v1

    .line 478
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float p3, p3, p4

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->maxProgress:F

    div-float/2addr p3, v0

    const/4 v2, 0x1

    aput p3, p1, v2

    .line 479
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p2, p2, p4

    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->maxProgress:F

    div-float/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    .line 482
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 483
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x3

    .line 486
    new-array p2, p1, [F

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    .line 488
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->baseRadius:F

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->radiiRatios:[F

    aget v3, v3, p4

    mul-float v0, v0, v3

    aput v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 491
    :cond_0
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    aget-object p4, p4, v1

    aget v0, p2, v1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v3, v3, v1

    invoke-direct {p0, p4, v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 492
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    aget-object p4, p4, v2

    aget v0, p2, v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v3, v3, v2

    invoke-direct {p0, p4, v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 493
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgress:[Landroid/graphics/Path;

    aget-object p4, p4, p3

    aget p2, p2, p3

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v0, v0, p3

    invoke-direct {p0, p4, p2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 495
    new-array p2, p1, [F

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p1, :cond_1

    .line 497
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->baseRadius:F

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->radiiRatiosIcon:[F

    aget v3, v3, p4

    mul-float v0, v0, v3

    aput v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 500
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    aget-object p1, p1, v1

    aget p4, p2, v1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v0, v0, v1

    invoke-direct {p0, p1, p4, v0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 501
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    aget-object p1, p1, v2

    aget p4, p2, v2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget v0, v0, v2

    invoke-direct {p0, p1, p4, v0}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    .line 502
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->pathsProgressIcon:[Landroid/graphics/Path;

    aget-object p1, p1, p3

    aget p2, p2, p3

    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->mProgress:[F

    aget p3, p4, p3

    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/widget/WalkView2;->createPath(Landroid/graphics/Path;FF)V

    return-void
.end method
