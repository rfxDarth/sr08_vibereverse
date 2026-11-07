.class public Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateVectorFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateMatrixFunctionDifferentiator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1330555L


# instance fields
.field private final halfSampleSpan:D

.field private final nbPoints:I

.field private final stepSize:D

.field private final tMax:D

.field private final tMin:D


# direct methods
.method public constructor <init>(ID)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 109
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;-><init>(IDDD)V

    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 148
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    const-wide/16 v2, 0x0

    cmpg-double v4, p2, v2

    if-lez v4, :cond_1

    .line 153
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double p2, p2, v2

    sub-int/2addr p1, v1

    int-to-double v1, p1

    mul-double p2, p2, v1

    .line 155
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v3, p2, v1

    sub-double v5, p6, p4

    cmpl-double p1, v3, v5

    if-gez p1, :cond_0

    .line 159
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    add-double/2addr p4, p2

    add-double/2addr p4, v0

    .line 160
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    sub-double/2addr p6, p2

    sub-double/2addr p6, v0

    .line 161
    iput-wide p6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    return-void

    .line 157
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    mul-double p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 151
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 146
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method private evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 198
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    new-array v1, v0, [D

    .line 199
    new-array v0, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 201
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    if-ge v3, v4, :cond_1

    .line 204
    aget-wide v4, p4, v3

    aput-wide v4, v0, v3

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v3, :cond_0

    sub-int v5, v3, v4

    add-int/lit8 v6, v5, 0x1

    .line 206
    aget-wide v6, v0, v6

    aget-wide v8, v0, v5

    sub-double/2addr v6, v8

    int-to-double v8, v4

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    mul-double v8, v8, v10

    div-double/2addr v6, v8

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 210
    :cond_0
    aget-wide v4, v0, v2

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    .line 216
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    .line 217
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v4

    .line 218
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v5

    sub-double/2addr v5, p2

    .line 219
    new-instance p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const-wide/16 v7, 0x0

    invoke-direct {p1, v3, v0, v7, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 221
    :goto_2
    iget v9, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    if-ge v8, v9, :cond_3

    if-nez v8, :cond_2

    .line 224
    new-instance v7, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-direct {v7, v3, v0, v9, v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v8, -0x1

    int-to-double v9, v9

    .line 227
    iget-wide v11, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    mul-double v9, v9, v11

    sub-double v9, v5, v9

    aput-wide v9, v4, v2

    .line 228
    new-instance v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v9, v3, v0, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    .line 229
    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    .line 231
    :goto_3
    aget-wide v9, v1, v8

    invoke-virtual {v7, v9, v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    invoke-virtual {p1, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method


# virtual methods
.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 245
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;
    .locals 1

    .line 336
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;
    .locals 1

    .line 285
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)V

    return-object v0
.end method

.method public getNbPoints()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return v0
.end method

.method public getStepSize()D
    .locals 2

    .line 178
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method
