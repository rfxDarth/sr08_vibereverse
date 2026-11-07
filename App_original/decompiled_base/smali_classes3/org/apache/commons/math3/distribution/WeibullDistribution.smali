.class public Lorg/apache/commons/math3/distribution/WeibullDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "WeibullDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x77342d30e8d1c6e4L


# instance fields
.field private numericalMean:D

.field private numericalMeanIsCalculated:Z

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final scale:D

.field private final shape:D

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

    .line 73
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8

    .line 91
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

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

    .line 105
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 54
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMean:D

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMeanIsCalculated:Z

    .line 58
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVariance:D

    .line 60
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVarianceIsCalculated:Z

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-lez p1, :cond_1

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 135
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    .line 136
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    .line 137
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 132
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 128
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method protected calculateNumericalMean()D
    .locals 6

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getShape()D

    move-result-wide v0

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getScale()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v0, v4, v0

    add-double/2addr v0, v4

    .line 264
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method protected calculateNumericalVariance()D
    .locals 8

    .line 287
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getShape()D

    move-result-wide v0

    .line 288
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getScale()D

    move-result-wide v2

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->getNumericalMean()D

    move-result-wide v4

    mul-double v2, v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v0

    .line 291
    invoke-static {v6, v7}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    mul-double v4, v4, v4

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public cumulativeProbability(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 203
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public density(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    .line 164
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double/2addr p1, v0

    .line 165
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    mul-double p1, p1, v0

    .line 174
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double/2addr v2, v4

    mul-double v2, v2, v0

    neg-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    return-wide v2
.end method

.method public getNumericalMean()D
    .locals 2

    .line 248
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMeanIsCalculated:Z

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->calculateNumericalMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMean:D

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMeanIsCalculated:Z

    .line 252
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalMean:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 274
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/WeibullDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVariance:D

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVarianceIsCalculated:Z

    .line 278
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .line 155
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .line 146
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 238
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->solverAbsoluteAccuracy:D

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

.method public inverseCumulativeProbability(D)D
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_2

    cmpl-double v4, p1, v0

    if-gtz v4, :cond_2

    cmpl-double v5, p1, v2

    if-nez v5, :cond_0

    return-wide v2

    :cond_0
    if-nez v4, :cond_1

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p1

    .line 224
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    neg-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p1

    neg-double p1, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    div-double/2addr v0, v4

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    mul-double v2, v2, p1

    return-wide v2

    .line 218
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v4, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4
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
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p1

    .line 184
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double/2addr p1, v0

    .line 185
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    .line 192
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, p1

    .line 194
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->shape:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/WeibullDistribution;->scale:D

    div-double/2addr p1, v4

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    add-double/2addr p1, v0

    sub-double/2addr p1, v2

    return-wide p1
.end method
