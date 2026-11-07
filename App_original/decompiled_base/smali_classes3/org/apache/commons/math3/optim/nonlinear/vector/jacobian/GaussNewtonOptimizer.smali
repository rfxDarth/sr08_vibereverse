.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final useLU:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 79
    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->useLU:Z

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 26

    move-object/from16 v0, p0

    .line 85
    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->checkParameters()V

    .line 87
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 95
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getTarget()[D

    move-result-object v2

    .line 96
    array-length v2, v2

    .line 98
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 100
    new-array v4, v2, [D

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    .line 102
    invoke-interface {v3, v6, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getStartPoint()[D

    move-result-object v3

    .line 106
    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_8

    .line 111
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->incrementIterationCount()V

    .line 116
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeObjectiveValue([D)[D

    move-result-object v9

    .line 117
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeResiduals([D)[D

    move-result-object v10

    .line 118
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 119
    new-instance v12, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v12, v3, v9}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 122
    new-array v9, v6, [D

    const/4 v13, 0x2

    .line 123
    new-array v13, v13, [I

    const/4 v14, 0x1

    aput v6, v13, v14

    aput v6, v13, v5

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v2, :cond_4

    .line 126
    invoke-interface {v11, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v15

    .line 127
    aget-wide v16, v4, v14

    .line 128
    aget-wide v18, v10, v14

    mul-double v18, v18, v16

    :goto_3
    if-ge v5, v6, :cond_1

    .line 133
    aget-wide v20, v9, v5

    aget-wide v22, v15, v5

    mul-double v22, v22, v18

    add-double v20, v20, v22

    aput-wide v20, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_3

    .line 138
    aget-object v18, v13, v5

    .line 139
    aget-wide v20, v15, v5

    mul-double v20, v20, v16

    move/from16 v19, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_2

    .line 141
    aget-wide v22, v18, v2

    aget-wide v24, v15, v2

    mul-double v24, v24, v20

    add-double v22, v22, v24

    aput-wide v22, v18, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v19

    goto :goto_4

    :cond_3
    move/from16 v19, v2

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move/from16 v19, v2

    if-eqz v7, :cond_5

    .line 148
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->getIterations()I

    move-result v2

    invoke-interface {v1, v2, v7, v12}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 150
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->computeCost([D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->setCost(D)V

    return-object v12

    .line 157
    :cond_5
    :try_start_0
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v2, v13}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    .line 158
    iget-boolean v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;->useLU:Z

    if-eqz v5, :cond_6

    new-instance v5, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    goto :goto_6

    :cond_6
    new-instance v5, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    .line 161
    :goto_6
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v7, 0x0

    invoke-direct {v5, v9, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_7

    .line 164
    aget-wide v9, v3, v7

    aget-wide v13, v2, v7

    add-double/2addr v9, v13

    aput-wide v9, v3, v7
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    move-object v7, v12

    move/from16 v2, v19

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 167
    :catch_0
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 171
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 92
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v1
.end method
