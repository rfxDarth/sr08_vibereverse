.class public Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.source "MultivariateNormalDistribution.java"


# instance fields
.field private final covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final covarianceMatrixDeterminant:D

.field private final covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final means:[D

.field private final samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 103
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V

    .line 105
    array-length p1, p2

    .line 107
    array-length v0, p3

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 112
    aget-object v2, p3, v1

    array-length v2, v2

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p3, p3, v1

    array-length p3, p3

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 117
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    .line 119
    new-instance p2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p2, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object p2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 122
    new-instance p3, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {p3, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 125
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 127
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getDeterminant()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixDeterminant:D

    .line 130
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getRealEigenvalues()[D

    move-result-object p2

    const/4 v4, 0x0

    .line 132
    :goto_1
    array-length v1, p2

    if-ge v4, v1, :cond_3

    .line 133
    aget-wide v1, p2, v4

    const-wide/16 v5, 0x0

    cmpg-double v3, v1, v5

    if-ltz v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 134
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v2, p2, v4

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v1

    .line 139
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p1, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_4

    .line 141
    invoke-virtual {p3, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    .line 142
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setColumn(I[D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_6

    .line 149
    aget-wide v3, p2, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, p1, :cond_5

    .line 151
    invoke-interface {p3, v2, v5, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiplyEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 155
    :cond_6
    invoke-virtual {v1, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 108
    :cond_7
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p3, p3

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method

.method public constructor <init>([D[[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V

    return-void
.end method

.method private getExponentTerm([D)D
    .locals 9

    .line 230
    array-length v0, p1

    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 232
    aget-wide v4, p1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v6

    aget-wide v7, v6, v3

    sub-double/2addr v4, v7

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->preMultiply([D)[D

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 236
    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 237
    aget-wide v5, p1, v2

    aget-wide v7, v1, v2

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    mul-double v3, v3, v0

    .line 239
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public density([D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 179
    array-length v1, p1

    if-ne v1, v0, :cond_0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double v0, v0, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    .line 183
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixDeterminant:D

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getExponentTerm([D)D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0

    .line 180
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public getCovariances()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getMeans()[D
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    return-object v0
.end method

.method public getStandardDeviations()[D
    .locals 7

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 196
    new-array v1, v0, [D

    .line 197
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 199
    aget-object v4, v2, v3

    aget-wide v5, v4, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public sample()[D
    .locals 8

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 208
    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 211
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 217
    aget-wide v3, v1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    aget-wide v6, v5, v2

    add-double/2addr v3, v6

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
