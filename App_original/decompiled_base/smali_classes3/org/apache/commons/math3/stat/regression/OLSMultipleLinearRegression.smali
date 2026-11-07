.class public Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;
.super Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.source "OLSMultipleLinearRegression.java"


# instance fields
.field private qr:Lorg/apache/commons/math3/linear/QRDecomposition;

.field private final threshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    .line 78
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->threshold:D

    return-void
.end method


# virtual methods
.method public calculateAdjustedRSquared()D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    int-to-double v0, v0

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->isNoIntercept()Z

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateRSquared()D

    move-result-wide v5

    sub-double v5, v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    int-to-double v7, v2

    sub-double v7, v0, v7

    div-double/2addr v0, v7

    mul-double v5, v5, v0

    :goto_0
    sub-double/2addr v3, v5

    return-wide v3

    .line 224
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResidualSumOfSquares()D

    move-result-wide v5

    sub-double v7, v0, v3

    mul-double v5, v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateTotalSumOfSquares()D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    int-to-double v9, v2

    sub-double/2addr v0, v9

    mul-double v7, v7, v0

    div-double/2addr v5, v7

    goto :goto_0
.end method

.method protected calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method protected calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3

    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 272
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 273
    new-instance v1, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public calculateHat()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11

    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQ()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 131
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 133
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, v2, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 134
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_1

    if-ne v6, v7, :cond_0

    if-ge v6, v1, :cond_0

    .line 138
    aget-object v8, v4, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v7

    goto :goto_2

    .line 140
    :cond_0
    aget-object v8, v4, v6

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {v0, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public calculateRSquared()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResidualSumOfSquares()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateTotalSumOfSquares()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public calculateResidualSumOfSquares()D
    .locals 2

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculateTotalSumOfSquares()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->isNoIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/stat/StatUtils;->sumSq([D)D

    move-result-wide v0

    return-wide v0

    .line 169
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public newSampleData([DII)V
    .locals 2

    .line 102
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newSampleData([DII)V

    .line 103
    new-instance p1, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->threshold:D

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    return-void
.end method

.method public newSampleData([D[[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->validateSampleData([[D[D)V

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->newYSampleData([D)V

    .line 93
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->newXSampleData([[D)V

    return-void
.end method

.method protected newXSampleData([[D)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newXSampleData([[D)V

    .line 237
    new-instance p1, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->qr:Lorg/apache/commons/math3/linear/QRDecomposition;

    return-void
.end method
