.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;
.source "AbstractLeastSquaresOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SINGULARITY_THRESHOLD:D = 1.0E-14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected cols:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected cost:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

.field private jacobianEvaluations:I

.field protected objective:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected point:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected rows:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

.field protected weightedResidualJacobian:[[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected weightedResiduals:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method private squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5

    .line 566
    instance-of v0, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_1

    .line 567
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 568
    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 570
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 574
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 575
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected computeCost([D)D
    .locals 2

    .line 226
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public computeCovariances([DD)[[D
    .locals 1

    .line 331
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 334
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 337
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p1

    .line 339
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    return-object p1
.end method

.method protected computeResiduals([D)[D
    .locals 7

    .line 545
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    .line 546
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 551
    array-length v1, v0

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 552
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 553
    aget-wide v3, v0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 547
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length p1, p1

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public computeSigma([DD)[D
    .locals 4

    .line 403
    array-length v0, p1

    .line 404
    new-array v1, v0, [D

    .line 405
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    .line 407
    aget-object p3, p1, p2

    aget-wide v2, p3, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11

    .line 169
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    .line 171
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 172
    array-length v3, p1

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 174
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v4, 0x1

    aget-wide v6, p1, v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    array-length v0, v0

    .line 178
    array-length v2, p1

    if-ne v2, v0, :cond_3

    const/4 v2, 0x2

    .line 181
    new-array v2, v2, [I

    aput v3, v2, v1

    aput v0, v2, v8

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 183
    new-array v5, v3, [I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    .line 185
    aput v1, v5, v6

    .line 186
    aget-object v7, v2, v4

    aget-object v9, p1, v4

    invoke-virtual {v9, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v9

    aput-wide v9, v7, v6

    .line 187
    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1

    .line 179
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public getChiSquare()D
    .locals 2

    .line 251
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    mul-double v0, v0, v0

    return-wide v0
.end method

.method public getCovariances()[[D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    .line 286
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getCovariances(D)[[D

    move-result-object v0

    return-object v0
.end method

.method public getCovariances(D)[[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object p1

    return-object p1
.end method

.method public getJacobianEvaluations()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    return v0
.end method

.method public getRMS()D
    .locals 4

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public guessParametersErrors()[D
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 377
    new-array v0, v1, [D

    .line 378
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v3

    iget v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v6, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 379
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v5

    :goto_0
    if-ge v2, v1, :cond_0

    .line 381
    aget-object v6, v5, v2

    aget-wide v7, v6, v2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double v6, v6, v3

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 374
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v3, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    new-instance v1, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v1, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    const/4 p3, 0x0

    aput-object v1, v0, p3

    new-instance p3, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {p3, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    const/4 p4, 0x1

    aput-object p3, v0, p4

    new-instance p3, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {p3, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 p4, 0x2

    aput-object p3, v0, p4

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0

    .line 63
    check-cast p2, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 462
    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    new-instance v1, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v1, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    const/4 p3, 0x0

    aput-object v1, v0, p3

    new-instance p3, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {p3, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    const/4 p4, 0x1

    aput-object p3, v0, p4

    new-instance p3, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {p3, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 p4, 0x2

    aput-object p3, v0, p4

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected setCost(D)V
    .locals 0

    .line 271
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    return-void
.end method

.method protected setUp()V
    .locals 1

    .line 506
    invoke-super {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->setUp()V

    const/4 v0, 0x0

    .line 509
    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    .line 512
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 520
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-static {v0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getStartPoint()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    .line 524
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    .line 525
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    return-void
.end method

.method protected updateJacobian()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 156
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResidualJacobian:[[D

    return-void
.end method

.method protected updateResidualsAndCost()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeObjectiveValue([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->objective:[D

    .line 207
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    .line 213
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResiduals:[D

    return-void
.end method
