.class public Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.super Ljava/lang/Object;
.source "CholeskyDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;
    }
.end annotation


# static fields
.field public static final DEFAULT_ABSOLUTE_POSITIVITY_THRESHOLD:D = 1.0E-10

.field public static final DEFAULT_RELATIVE_SYMMETRY_THRESHOLD:D = 1.0E-15


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private lTData:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    .line 85
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 106
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 112
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    .line 113
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    const/4 v4, 0x0

    .line 114
    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 115
    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 119
    iget-object v6, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v6, v6, v5

    add-int/lit8 v7, v5, 0x1

    move v8, v7

    :goto_1
    if-ge v8, v3, :cond_1

    .line 123
    iget-object v9, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v9, v9, v8

    .line 124
    aget-wide v10, v6, v8

    .line 125
    aget-wide v12, v9, v5

    .line 126
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move/from16 v16, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double v4, v4, v1

    sub-double/2addr v10, v12

    .line 128
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpl-double v12, v10, v4

    if-gtz v12, :cond_0

    const-wide/16 v4, 0x0

    .line 131
    aput-wide v4, v9, v16

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v16

    goto :goto_1

    .line 129
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;

    move/from16 v4, v16

    invoke-direct {v3, v4, v8, v1, v2}, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;-><init>(IID)V

    throw v3

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v3, :cond_6

    .line 138
    iget-object v1, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v1, v1, v12

    .line 141
    aget-wide v4, v1, v12

    cmpg-double v2, v4, p4

    if-lez v2, :cond_5

    .line 145
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v1, v12

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    add-int/lit8 v2, v3, -0x1

    :goto_3
    if-le v2, v12, :cond_4

    .line 149
    aget-wide v4, v1, v2

    mul-double v4, v4, v6

    aput-wide v4, v1, v2

    .line 150
    iget-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    aget-object v4, v4, v2

    move v5, v2

    :goto_4
    if-ge v5, v3, :cond_3

    .line 152
    aget-wide v8, v4, v5

    aget-wide v10, v1, v2

    aget-wide v13, v1, v5

    mul-double v10, v10, v13

    sub-double/2addr v8, v10

    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 142
    :cond_5
    new-instance v9, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v10, v1, v12

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v9

    :cond_6
    return-void

    .line 108
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public getDeterminant()D
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    .line 191
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 192
    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    mul-double v4, v4, v4

    mul-double v0, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getLT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getLT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->cachedLT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 3

    .line 203
    new-instance v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->lTData:[[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;-><init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$1;)V

    return-object v0
.end method
