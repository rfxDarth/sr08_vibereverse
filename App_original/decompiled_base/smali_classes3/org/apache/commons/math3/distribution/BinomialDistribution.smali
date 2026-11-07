.class public Lorg/apache/commons/math3/distribution/BinomialDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "BinomialDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x5db17834c1f59437L


# instance fields
.field private final numberOfTrials:I

.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(ID)V
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p1, p3, v0

    if-ltz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p3, v0

    if-gtz p1, :cond_0

    .line 78
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    .line 79
    iput p2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    return-void

    .line 75
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

    .line 71
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_TRIALS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 9

    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 125
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lt p1, v0, :cond_1

    return-wide v1

    .line 128
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    int-to-double v5, p1

    add-double/2addr v5, v1

    sub-int/2addr v0, p1

    int-to-double v7, v0

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    return-wide v1
.end method

.method public getNumberOfTrials()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 4

    .line 141
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    .line 152
    iget v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    int-to-double v2, v2

    mul-double v2, v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    return-wide v2
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 5

    .line 164
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 5

    .line 176
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 6

    if-ltz p1, :cond_1

    .line 110
    iget v1, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->logBinomialProbability(IIDD)D

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public probability(I)D
    .locals 4

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->logProbability(I)D

    move-result-wide v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 103
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method
