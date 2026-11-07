.class public Lorg/apache/commons/math3/distribution/ZipfDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "ZipfDistribution.java"


# static fields
.field private static final serialVersionUID:J = -0x1f39bd99aa65ef4L


# instance fields
.field private final exponent:D

.field private final numberOfElements:I

.field private numericalMean:D

.field private numericalMeanIsCalculated:Z

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z


# direct methods
.method public constructor <init>(ID)V
    .locals 1

    .line 58
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 40
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    .line 44
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    .line 46
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    if-lez p2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p1, p3, v0

    if-lez p1, :cond_0

    .line 86
    iput p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    .line 87
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    return-void

    .line 82
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method private generalizedHarmonic(ID)D
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    if-lez p1, :cond_0

    int-to-double v2, p1

    .line 218
    invoke-static {v2, v3, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected calculateNumericalMean()D
    .locals 5

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, v3

    .line 165
    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v3

    .line 166
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    div-double/2addr v3, v0

    return-wide v3
.end method

.method protected calculateNumericalVariance()D
    .locals 7

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getExponent()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double v3, v1, v3

    .line 199
    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, v1, v5

    .line 200
    invoke-direct {p0, v0, v5, v6}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v5

    .line 201
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    div-double/2addr v3, v0

    mul-double v5, v5, v5

    mul-double v0, v0, v0

    div-double/2addr v5, v0

    sub-double/2addr v3, v5

    return-wide v3
.end method

.method public cumulativeProbability(I)D
    .locals 4

    if-gtz p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 131
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-lt p1, v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 135
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    iget p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getExponent()D
    .locals 2

    .line 105
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    return-wide v0
.end method

.method public getNumberOfElements()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    return v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 149
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMeanIsCalculated:Z

    .line 153
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalMean:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 183
    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVarianceIsCalculated:Z

    .line 187
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->getNumberOfElements()I

    move-result v0

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 4

    if-lez p1, :cond_1

    .line 120
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    .line 124
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    mul-double v0, v0, v2

    iget p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public probability(I)D
    .locals 4

    if-lez p1, :cond_1

    .line 110
    iget v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    .line 114
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iget p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->numberOfElements:I

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution;->exponent:D

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->generalizedHarmonic(ID)D

    move-result-wide v0

    div-double/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
