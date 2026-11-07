.class Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
.super Ljava/lang/Object;
.source "QRDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/QRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final qrt:[[D

.field private final rDiag:[D

.field private final threshold:D


# direct methods
.method private constructor <init>([[D[DD)V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    .line 333
    iput-object p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    .line 334
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    return-void
.end method

.method synthetic constructor <init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 474
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 9

    .line 339
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    .line 340
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 27

    move-object/from16 v0, p0

    .line 392
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 393
    aget-object v1, v1, v3

    array-length v1, v1

    .line 394
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 397
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 401
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    add-int/lit8 v5, v4, 0x33

    const/16 v6, 0x34

    .line 403
    div-int/2addr v5, v6

    .line 404
    invoke-static {v2, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v7

    .line 405
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x1

    aput v6, v9, v10

    aput v8, v9, v3

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, [[D

    .line 406
    new-array v6, v6, [D

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_a

    mul-int/lit8 v14, v8, 0x34

    add-int/lit8 v9, v14, 0x34

    .line 410
    invoke-static {v9, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    sub-int v11, v9, v14

    add-int/lit8 v13, v1, -0x1

    add-int/lit8 v15, v9, -0x1

    const/4 v12, 0x0

    move v9, v11

    move-object/from16 v11, p1

    .line 414
    invoke-interface/range {v11 .. v16}, Lorg/apache/commons/math3/linear/RealMatrix;->copySubMatrix(IIII[[D)V

    const/4 v11, 0x0

    .line 417
    :goto_1
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ge v11, v12, :cond_5

    .line 418
    iget-object v12, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v12, v12, v11

    .line 419
    iget-object v15, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v17, v15, v11

    aget-wide v19, v12, v11

    mul-double v17, v17, v19

    div-double v13, v13, v17

    move/from16 v17, v11

    const/4 v15, 0x1

    const-wide/16 v10, 0x0

    .line 421
    invoke-static {v6, v3, v9, v10, v11}, Ljava/util/Arrays;->fill([DIID)V

    move/from16 v10, v17

    :goto_2
    if-ge v10, v1, :cond_1

    .line 423
    aget-wide v18, v12, v10

    .line 424
    aget-object v11, v16, v10

    const/4 v15, 0x0

    const/16 v20, 0x1

    :goto_3
    if-ge v15, v9, :cond_0

    .line 426
    aget-wide v21, v6, v15

    aget-wide v23, v11, v15

    mul-double v23, v23, v18

    add-double v21, v21, v23

    aput-wide v21, v6, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/16 v20, 0x1

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_2

    .line 430
    aget-wide v18, v6, v10

    mul-double v18, v18, v13

    aput-wide v18, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    move/from16 v10, v17

    :goto_5
    if-ge v10, v1, :cond_4

    .line 434
    aget-wide v13, v12, v10

    .line 435
    aget-object v11, v16, v10

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v9, :cond_3

    .line 437
    aget-wide v18, v11, v15

    aget-wide v21, v6, v15

    mul-double v21, v21, v13

    add-double v18, v18, v21

    aput-wide v18, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v17, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    const/16 v20, 0x1

    .line 443
    iget-object v10, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    :goto_7
    if-ltz v10, :cond_9

    .line 444
    div-int/lit8 v11, v10, 0x34

    mul-int/lit8 v12, v11, 0x34

    .line 446
    iget-object v15, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v17, v15, v10

    div-double v17, v13, v17

    .line 447
    aget-object v15, v16, v10

    mul-int v11, v11, v5

    add-int/2addr v11, v8

    .line 448
    aget-object v11, v7, v11

    sub-int v12, v10, v12

    mul-int v12, v12, v9

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v9, :cond_6

    .line 451
    aget-wide v23, v15, v13

    mul-double v23, v23, v17

    aput-wide v23, v15, v13

    add-int/lit8 v14, v12, 0x1

    .line 452
    aput-wide v23, v11, v12

    add-int/lit8 v13, v13, 0x1

    move v12, v14

    goto :goto_8

    .line 455
    :cond_6
    iget-object v11, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v11, v11, v10

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v10, :cond_8

    .line 457
    aget-wide v13, v11, v12

    .line 458
    aget-object v17, v16, v12

    :goto_a
    if-ge v3, v9, :cond_7

    .line 460
    aget-wide v23, v17, v3

    aget-wide v25, v15, v3

    mul-double v25, v25, v13

    sub-double v23, v23, v25

    aput-wide v23, v17, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_9

    :cond_8
    add-int/lit8 v10, v10, -0x1

    const/4 v3, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 466
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v7, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-object v1

    .line 398
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1

    .line 395
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 13

    .line 349
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 350
    aget-object v0, v0, v2

    array-length v0, v0

    .line 351
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 354
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 358
    new-array v3, v1, [D

    .line 359
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    const/4 v4, 0x0

    .line 362
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 364
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v5, v5, v4

    const-wide/16 v6, 0x0

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_0

    .line 367
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 369
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v9, v8, v4

    aget-wide v11, v5, v4

    mul-double v9, v9, v11

    div-double/2addr v6, v9

    move v8, v4

    :goto_2
    if-ge v8, v0, :cond_1

    .line 372
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double v11, v11, v6

    add-double/2addr v9, v11

    aput-wide v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 378
    aget-wide v4, p1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v6, v1, v0

    div-double/2addr v4, v6

    aput-wide v4, p1, v0

    .line 380
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v1, v1, v0

    .line 381
    aput-wide v4, v3, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v0, :cond_3

    .line 383
    aget-wide v7, p1, v6

    aget-wide v9, v1, v6

    mul-double v9, v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 387
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 355
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p1

    .line 352
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
