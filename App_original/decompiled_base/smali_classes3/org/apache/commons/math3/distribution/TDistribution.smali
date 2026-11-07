.class public Lorg/apache/commons/math3/distribution/TDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "TDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x5138aaaf891a440eL


# instance fields
.field private final degreesOfFreedom:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 55
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 71
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 84
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-lez p1, :cond_0

    .line 108
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    .line 109
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/TDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 105
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 14

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    return-wide v0

    .line 144
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    mul-double v6, p1, p1

    add-double/2addr v6, v4

    div-double v8, v4, v6

    mul-double v10, v4, v0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v4

    cmpg-double v6, p1, v2

    if-gez v6, :cond_1

    mul-double v4, v4, v0

    return-wide v4

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public density(D)D
    .locals 0

    .line 123
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/TDistribution;->logDensity(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDegreesOfFreedom()D
    .locals 2

    .line 118
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 5

    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/TDistribution;->getDegreesOfFreedom()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 7

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/TDistribution;->getDegreesOfFreedom()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    sub-double v2, v0, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_1

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 162
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

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
    .locals 14

    .line 129
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v4, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 131
    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v12

    sub-double/2addr v8, v10

    div-double v6, v0, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v6

    sub-double/2addr v8, v6

    mul-double v6, p1, p1

    div-double/2addr v6, v0

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    sub-double/2addr v8, v4

    return-wide v8
.end method
