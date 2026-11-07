.class public Lorg/apache/commons/math3/distribution/PascalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "PascalDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x5db17834c1f59437L


# instance fields
.field private final log1mProbabilityOfSuccess:D

.field private final logProbabilityOfSuccess:D

.field private final numberOfSuccesses:I

.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/PascalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    if-lez p2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p1, p3, v0

    if-ltz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p3, v0

    if-gtz p1, :cond_0

    .line 119
    iput p2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    .line 120
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    .line 121
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->logProbabilityOfSuccess:D

    neg-double p1, p3

    .line 122
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->log1mProbabilityOfSuccess:D

    return-void

    .line 116
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 112
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 8

    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 178
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    iget v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    int-to-double v4, v0

    int-to-double v0, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v0

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfSuccesses()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 6

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getProbabilityOfSuccess()D

    move-result-wide v0

    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getNumberOfSuccesses()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 6

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getProbabilityOfSuccess()D

    move-result-wide v0

    .line 204
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PascalDistribution;->getNumberOfSuccesses()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    mul-double v0, v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    .line 140
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 6

    if-gez p1, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    .line 164
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->logProbabilityOfSuccess:D

    iget v4, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    int-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->log1mProbabilityOfSuccess:D

    int-to-double v4, p1

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public probability(I)D
    .locals 6

    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 149
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    iget v4, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->numberOfSuccesses:I

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/PascalDistribution;->probabilityOfSuccess:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method
