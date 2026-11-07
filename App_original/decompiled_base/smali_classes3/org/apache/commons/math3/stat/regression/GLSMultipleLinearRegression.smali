.class public Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;
.super Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.source "GLSMultipleLinearRegression.java"


# instance fields
.field private Omega:Lorg/apache/commons/math3/linear/RealMatrix;

.field private OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 97
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 98
    new-instance v3, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 99
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method protected calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 113
    new-instance v1, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method protected calculateErrorVariance()D
    .locals 4

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->Omega:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method protected newCovarianceData([[D)V
    .locals 1

    .line 70
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->Omega:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->OmegaInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public newSampleData([D[[D[[D)V
    .locals 0

    .line 57
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->validateSampleData([[D[D)V

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->newYSampleData([D)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->newXSampleData([[D)V

    .line 60
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->validateCovarianceData([[D[[D)V

    .line 61
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->newCovarianceData([[D)V

    return-void
.end method
