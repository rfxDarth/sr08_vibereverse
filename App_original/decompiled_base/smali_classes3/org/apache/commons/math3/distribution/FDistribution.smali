.class public Lorg/apache/commons/math3/distribution/FDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "FDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x76302b047020609eL


# instance fields
.field private final denominatorDegreesOfFreedom:D

.field private final numeratorDegreesOfFreedom:D

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 65
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 86
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 104
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 49
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-lez p1, :cond_1

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 134
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    .line 135
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    .line 136
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/FDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 131
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 127
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method protected calculateNumericalVariance()D
    .locals 14

    .line 259
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getDenominatorDegreesOfFreedom()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getNumeratorDegreesOfFreedom()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v8, v0, v6

    mul-double v10, v0, v0

    mul-double v10, v10, v6

    add-double v12, v4, v0

    sub-double/2addr v12, v6

    mul-double v10, v10, v12

    mul-double v8, v8, v8

    mul-double v4, v4, v8

    sub-double/2addr v0, v2

    mul-double v4, v4, v0

    div-double/2addr v10, v4

    return-wide v10

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public cumulativeProbability(D)D
    .locals 12

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 179
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    .line 180
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    mul-double p1, p1, v0

    add-double v4, v2, p1

    div-double v6, p1, v4

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double v8, v0, p1

    mul-double v10, v2, p1

    .line 182
    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public density(D)D
    .locals 0

    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/FDistribution;->logDensity(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDenominatorDegreesOfFreedom()D
    .locals 2

    .line 204
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    return-wide v0
.end method

.method public getNumeratorDegreesOfFreedom()D
    .locals 2

    .line 195
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 5

    .line 223
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->getDenominatorDegreesOfFreedom()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    sub-double v2, v0, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 246
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/FDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVarianceIsCalculated:Z

    .line 250
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numericalVariance:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 210
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->solverAbsoluteAccuracy:D

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

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 12

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 152
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    div-double/2addr v4, v2

    .line 153
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    .line 154
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    .line 155
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    .line 156
    iget-wide v10, p0, Lorg/apache/commons/math3/distribution/FDistribution;->numeratorDegreesOfFreedom:D

    mul-double v10, v10, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/FDistribution;->denominatorDegreesOfFreedom:D

    add-double/2addr v10, p1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    mul-double v6, v6, v0

    mul-double v10, v0, v2

    add-double/2addr v6, v10

    sub-double/2addr v6, v2

    mul-double v8, v8, v4

    add-double/2addr v6, v8

    mul-double v2, v0, p1

    sub-double/2addr v6, v2

    mul-double p1, p1, v4

    sub-double/2addr v6, p1

    .line 158
    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide p1

    sub-double/2addr v6, p1

    return-wide v6
.end method
