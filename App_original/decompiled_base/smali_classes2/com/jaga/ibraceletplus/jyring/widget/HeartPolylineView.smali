.class public Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;
.super Landroid/view/View;
.source "HeartPolylineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;,
        Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;
    }
.end annotation


# instance fields
.field private MaxHeart:F

.field private MinHeart:F

.field private Phight:I

.field private TAG:Ljava/lang/String;

.field private addHeart:F

.field private ani_coordinate_X:F

.field private aniheart:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private animation:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;

.field private animationTranslate:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;

.field private doTranslate:Z

.field private dotPaint:Landroid/graphics/Paint;

.field private heart:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private heartTranslatePoll:F

.field private mTextWidth:I

.field private maxPointPerScreen:I

.field private pWidth:I

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private paintLine:Landroid/graphics/Paint;

.field private paintText:Landroid/graphics/Paint;

.field private pointPadding:I

.field private res:Landroid/content/res/Resources;

.field private translateDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x28

    .line 30
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    .line 31
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    .line 32
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->aniheart:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->ani_coordinate_X:F

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->translateDistance:F

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 34
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    const/high16 p2, -0x3b860000    # -1000.0f

    .line 35
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    .line 36
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->addHeart:F

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->doTranslate:Z

    .line 40
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heartTranslatePoll:F

    const/16 p1, 0x78

    .line 41
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->maxPointPerScreen:I

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->TAG:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->animation:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->translateDistance:F

    return p1
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    return p0
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->aniheart:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->ani_coordinate_X:F

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    return p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    return p0
.end method

.method static synthetic access$502(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heartTranslatePoll:F

    return p1
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    return p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    return p0
.end method

.method static synthetic access$802(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->doTranslate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->addHeart:F

    return p0
.end method

.method private getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 358
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 359
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 360
    new-array v2, v1, [F

    .line 361
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 363
    aget p2, v2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/2addr p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    return v0
.end method

.method private init()V
    .locals 6

    .line 50
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->animation:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;

    const-wide/16 v2, 0x320

    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->setDuration(J)V

    .line 53
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->animationTranslate:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;

    const-wide/16 v1, 0x1f4

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;->setDuration(J)V

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->animationTranslate:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->res:Landroid/content/res/Resources;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->res:Landroid/content/res/Resources;

    const v4, 0x7f0600ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->dotPaint:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->dotPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->dotPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->dotPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->res:Landroid/content/res/Resources;

    const v3, 0x7f0600cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->res:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintLine:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintLine:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->res:Landroid/content/res/Resources;

    const v2, 0x7f0600cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintLine:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paint:Landroid/graphics/Paint;

    const-string v1, "000"

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->mTextWidth:I

    return-void

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 110
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    .line 112
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pWidth:I

    .line 113
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->mTextWidth:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->maxPointPerScreen:I

    div-int/2addr v1, v2

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    .line 114
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->TAG:Ljava/lang/String;

    const/4 v7, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "onDraw -----------------------------------------------------------"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->mTextWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    sub-int v4, v3, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pWidth:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paint:Landroid/graphics/Paint;

    move v3, v4

    move v4, v5

    move v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    int-to-float v4, v3

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 122
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v9, 0x1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    const/high16 v4, -0x3b860000    # -1000.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    sub-float/2addr v2, v3

    float-to-int v10, v2

    add-int/lit8 v11, v10, -0x1

    const/4 v12, 0x1

    :goto_0
    if-gt v12, v11, :cond_0

    .line 125
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    mul-int v2, v2, v12

    div-int/2addr v2, v10

    add-int/2addr v2, v3

    mul-int/lit8 v4, v3, 0x3

    .line 126
    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->mTextWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v2, v2

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pWidth:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->dotPaint:Landroid/graphics/Paint;

    move v5, v2

    move/from16 v18, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    int-to-float v5, v12

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->mTextWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move v4, v3

    int-to-float v3, v2

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pWidth:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v2, v2

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->dotPaint:Landroid/graphics/Paint;

    move/from16 v18, v5

    move v5, v2

    move v2, v4

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 135
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v10, 0x3c

    .line 136
    rem-long v12, v2, v10

    long-to-int v6, v12

    .line 138
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->maxPointPerScreen:I

    sub-int/2addr v12, v6

    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    mul-int v12, v12, v13

    add-int/2addr v12, v8

    .line 139
    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    int-to-double v14, v8

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v14, v14, v16

    double-to-int v8, v14

    sub-int/2addr v13, v8

    .line 140
    new-instance v8, Ljava/util/Date;

    int-to-long v14, v6

    sub-long/2addr v2, v14

    mul-long v14, v2, v4

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 141
    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    int-to-float v12, v12

    int-to-float v13, v13

    .line 142
    iget-object v14, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->maxPointPerScreen:I

    sub-int/2addr v12, v6

    add-int/lit8 v12, v12, -0x3c

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    mul-int v12, v12, v6

    add-int/2addr v8, v12

    .line 145
    new-instance v6, Ljava/util/Date;

    sub-long/2addr v2, v10

    mul-long v2, v2, v4

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 146
    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v8

    .line 147
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 150
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->maxPointPerScreen:I

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 152
    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->mTextWidth:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    mul-int v2, v2, v4

    add-int/2addr v3, v2

    .line 155
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 156
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->mTextWidth:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    sub-int/2addr v6, v4

    .line 159
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 161
    iget-boolean v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->doTranslate:Z

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_4

    .line 162
    :goto_1
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    if-nez v7, :cond_1

    .line 164
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->translateDistance:F

    sub-float/2addr v3, v8

    float-to-int v3, v3

    goto :goto_2

    .line 166
    :cond_1
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    add-int/2addr v3, v8

    .line 168
    :goto_2
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 169
    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    sub-float/2addr v8, v12

    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    sub-float/2addr v13, v12

    div-float/2addr v8, v13

    sub-float v8, v10, v8

    .line 170
    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v14, v13, 0x2

    sub-int/2addr v12, v14

    int-to-float v12, v12

    mul-float v8, v8, v12

    int-to-float v12, v13

    add-float/2addr v8, v12

    float-to-int v8, v8

    if-lt v7, v9, :cond_2

    add-int/2addr v5, v3

    int-to-float v5, v5

    div-float/2addr v5, v11

    add-int/2addr v6, v8

    int-to-float v6, v6

    div-float/2addr v6, v11

    int-to-float v12, v3

    int-to-float v13, v8

    .line 197
    invoke-virtual {v2, v5, v6, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    :cond_2
    int-to-float v5, v3

    int-to-float v6, v8

    .line 201
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v5, v3

    move v6, v8

    goto :goto_1

    .line 218
    :cond_3
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintLine:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 220
    :cond_4
    :goto_4
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_6

    .line 221
    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->pointPadding:I

    add-int/2addr v3, v8

    .line 222
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 223
    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    sub-float/2addr v8, v12

    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    sub-float/2addr v13, v12

    div-float/2addr v8, v13

    sub-float v8, v10, v8

    .line 224
    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->Phight:I

    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->padding:I

    mul-int/lit8 v14, v13, 0x2

    sub-int/2addr v12, v14

    int-to-float v12, v12

    mul-float v8, v8, v12

    int-to-float v12, v13

    add-float/2addr v8, v12

    float-to-int v8, v8

    if-lt v7, v9, :cond_5

    add-int/2addr v5, v3

    int-to-float v5, v5

    div-float/2addr v5, v11

    add-int/2addr v6, v8

    int-to-float v6, v6

    div-float/2addr v6, v11

    int-to-float v12, v3

    int-to-float v13, v8

    .line 241
    invoke-virtual {v2, v5, v6, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_5

    :cond_5
    int-to-float v5, v3

    int-to-float v6, v8

    .line 245
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v5, v3

    move v6, v8

    goto :goto_4

    .line 253
    :cond_6
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->aniheart:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    .line 273
    :cond_7
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->paintLine:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public resetData()V
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 283
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    const/high16 v0, -0x3b860000    # -1000.0f

    .line 284
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    .line 285
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public setHeartParameter(I)V
    .locals 0

    int-to-float p1, p1

    .line 279
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    return-void
.end method

.method public setHeartValue(F)V
    .locals 2

    const v0, 0x43a38000    # 327.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_7

    const v0, -0x3c5c8000    # -327.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    float-to-int v0, p1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 293
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    .line 296
    :cond_2
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    :cond_3
    float-to-int v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 297
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MinHeart:F

    .line 300
    :cond_4
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->addHeart:F

    .line 301
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->MaxHeart:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_5

    move p1, v0

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->maxPointPerScreen:I

    if-ne v0, v1, :cond_6

    .line 305
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->animationTranslate:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->heart:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 309
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->animation:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    :goto_0
    return-void
.end method
