.class public Lorg/apache/commons/math3/distribution/BetaDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "BetaDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x10f54b9581f4e2a4L


# instance fields
.field private final alpha:D

.field private final beta:D

.field private final solverAbsoluteAccuracy:D

.field private z:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 60
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8

    .line 74
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 86
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 106
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    .line 107
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 108
    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    .line 109
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    return-void
.end method

.method private recomputeZ()V
    .locals 6

    .line 132
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    :cond_0
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_1

    return-wide v0

    .line 173
    :cond_1
    iget-wide v5, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    move-wide v3, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public density(D)D
    .locals 3

    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/BetaDistribution;->logDensity(D)D

    move-result-wide p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 140
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getAlpha()D
    .locals 2

    .line 118
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    return-wide v0
.end method

.method public getBeta()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v2

    add-double/2addr v2, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 8

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v2

    add-double v4, v0, v2

    mul-double v0, v0, v2

    mul-double v2, v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 186
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 10

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->recomputeZ()V

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, p1, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    cmpl-double v9, p1, v2

    if-nez v9, :cond_2

    .line 150
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    cmpg-double v2, p1, v4

    if-ltz v2, :cond_1

    return-wide v0

    .line 151
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1, v7}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    :cond_2
    if-nez v6, :cond_4

    .line 155
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    cmpg-double v2, p1, v4

    if-ltz v2, :cond_3

    return-wide v0

    .line 156
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1, v7}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 160
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double p1, p1

    .line 161
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p1

    .line 162
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    sub-double/2addr v2, v4

    mul-double v2, v2, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    sub-double/2addr v0, v4

    mul-double v0, v0, p1

    add-double/2addr v2, v0

    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    sub-double/2addr v2, p1

    return-wide v2

    :cond_5
    :goto_0
    return-wide v0
.end method
