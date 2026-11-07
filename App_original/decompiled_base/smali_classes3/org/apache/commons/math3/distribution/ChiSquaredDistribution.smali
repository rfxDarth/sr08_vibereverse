.class public Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "ChiSquaredDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x73ea9a3d9e28c166L


# instance fields
.field private final gamma:Lorg/apache/commons/math3/distribution/GammaDistribution;

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 48
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    .line 63
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 6

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 74
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 2

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 93
    new-instance p1, Lorg/apache/commons/math3/distribution/GammaDistribution;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v0

    invoke-direct {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(DD)V

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->gamma:Lorg/apache/commons/math3/distribution/GammaDistribution;

    .line 94
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->solverAbsoluteAccuracy:D

    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->gamma:Lorg/apache/commons/math3/distribution/GammaDistribution;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/GammaDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public density(D)D
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->gamma:Lorg/apache/commons/math3/distribution/GammaDistribution;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/GammaDistribution;->density(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDegreesOfFreedom()D
    .locals 4

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->gamma:Lorg/apache/commons/math3/distribution/GammaDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/GammaDistribution;->getShape()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->getDegreesOfFreedom()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->getDegreesOfFreedom()D

    move-result-wide v2

    mul-double v2, v2, v0

    return-wide v2
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 125
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/16 v0, 0x0

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

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->gamma:Lorg/apache/commons/math3/distribution/GammaDistribution;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensity(D)D

    move-result-wide p1

    return-wide p1
.end method
