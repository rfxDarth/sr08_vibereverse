.class public Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final useLU:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 100
    iput-boolean p1, p0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->useLU:Z

    return-void
.end method


# virtual methods
.method public doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 27

    move-object/from16 v0, p0

    .line 106
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 114
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getTarget()[D

    move-result-object v2

    .line 115
    array-length v2, v2

    .line 117
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 119
    new-array v4, v2, [D

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    .line 121
    invoke-interface {v3, v6, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->getStartPoint()[D

    move-result-object v3

    .line 125
    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-nez v8, :cond_8

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 136
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeObjectiveValue([D)[D

    move-result-object v11

    .line 137
    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeResiduals([D)[D

    move-result-object v12

    .line 138
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    .line 139
    new-instance v14, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v14, v3, v11}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 142
    new-array v11, v6, [D

    const/4 v15, 0x2

    .line 143
    new-array v15, v15, [I

    aput v6, v15, v10

    aput v6, v15, v5

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v2, :cond_4

    .line 146
    invoke-interface {v13, v15}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v16

    .line 147
    aget-wide v17, v4, v15

    .line 148
    aget-wide v19, v12, v15

    mul-double v19, v19, v17

    :goto_3
    if-ge v5, v6, :cond_1

    .line 153
    aget-wide v21, v11, v5

    aget-wide v23, v16, v5

    mul-double v23, v23, v19

    add-double v21, v21, v23

    aput-wide v21, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_3

    .line 158
    aget-object v19, v10, v5

    .line 159
    aget-wide v21, v16, v5

    mul-double v21, v21, v17

    move/from16 v20, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_2

    .line 161
    aget-wide v23, v19, v2

    aget-wide v25, v16, v2

    mul-double v25, v25, v21

    add-double v23, v23, v25

    aput-wide v23, v19, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v20

    goto :goto_4

    :cond_3
    move/from16 v20, v2

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move/from16 v20, v2

    .line 168
    :try_start_0
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v2, v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    .line 169
    iget-boolean v5, v0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->useLU:Z

    if-eqz v5, :cond_5

    new-instance v5, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    goto :goto_6

    :cond_5
    new-instance v5, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    .line 172
    :goto_6
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v10, 0x0

    invoke-direct {v5, v11, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_6

    .line 175
    aget-wide v15, v3, v10

    aget-wide v17, v2, v10

    add-double v15, v15, v17

    aput-wide v15, v3, v10
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_6
    if-eqz v7, :cond_7

    .line 183
    invoke-interface {v1, v9, v7, v14}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 185
    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->computeCost([D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->cost:D

    .line 187
    invoke-virtual {v14}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/GaussNewtonOptimizer;->point:[D

    return-object v14

    :cond_7
    move-object v7, v14

    move/from16 v2, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 178
    :catch_0
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 193
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 111
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v1
.end method
