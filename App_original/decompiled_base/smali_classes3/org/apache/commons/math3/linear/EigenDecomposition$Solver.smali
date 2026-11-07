.class Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/EigenDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private realEigenvalues:[D


# direct methods
.method private constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    .line 432
    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    .line 433
    iput-object p3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void
.end method

.method synthetic constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-void
.end method

.method private eigenvalueNorm(I)D
    .locals 5

    .line 541
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v1, v0, p1

    .line 542
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    aget-wide v3, v0, p1

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    .line 543
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 14

    .line 553
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    const/4 v1, 0x2

    .line 558
    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 561
    aget-object v4, v1, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_0

    .line 565
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v9

    .line 566
    aget-wide v10, v9, v3

    aget-wide v12, v9, v5

    mul-double v10, v10, v12

    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v12, v9, v8

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 568
    :cond_0
    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 554
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0
.end method

.method public isNonSingular()Z
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    .line 519
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 520
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v3, v4, v0

    if-nez v3, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 526
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 529
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v6

    div-double v8, v6, v4

    const-wide/16 v10, 0x0

    const-wide v12, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 20

    move-object/from16 v0, p0

    .line 475
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 479
    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v1, v1

    .line 480
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 484
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x2

    .line 485
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 486
    new-array v5, v1, [D

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_4

    const/4 v7, 0x0

    :goto_1
    const-wide/16 v8, 0x0

    if-ge v7, v1, :cond_0

    move-object/from16 v10, p1

    .line 489
    invoke-interface {v10, v7, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v11

    aput-wide v11, v5, v7

    .line 490
    aget-object v11, v3, v7

    aput-wide v8, v11, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v10, p1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_3

    .line 493
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v11, v11, v7

    .line 494
    invoke-virtual {v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v12

    move-wide v14, v8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_1

    .line 497
    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    aget-wide v18, v5, v13

    mul-double v16, v16, v18

    add-double v14, v14, v16

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 499
    :cond_1
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v16, v11, v7

    div-double v14, v14, v16

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v1, :cond_2

    .line 501
    aget-object v13, v3, v11

    aget-wide v16, v13, v6

    aget-wide v18, v12, v11

    mul-double v18, v18, v14

    add-double v16, v16, v18

    aput-wide v16, v13, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 506
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v1

    :cond_5
    move-object/from16 v10, p1

    .line 481
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 476
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12

    .line 450
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    .line 455
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 459
    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 461
    iget-object v4, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v4, v4, v3

    .line 462
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v5

    .line 463
    invoke-virtual {v4, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v6

    iget-object v4, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v8, v4, v3

    div-double/2addr v6, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    .line 465
    aget-wide v8, v1, v4

    aget-wide v10, v5, v4

    mul-double v10, v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 456
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 451
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p1
.end method
