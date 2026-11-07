.class Lorg/apache/commons/math3/linear/LUDecomposition$Solver;
.super Ljava/lang/Object;
.source "LUDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/LUDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final lu:[[D

.field private final pivot:[I

.field private final singular:Z


# direct methods
.method private constructor <init>([[D[IZ)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    .line 281
    iput-object p2, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    .line 282
    iput-boolean p3, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    return-void
.end method

.method synthetic constructor <init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;-><init>([[D[IZ)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 18

    move-object/from16 v0, p0

    .line 330
    iget-object v1, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v1, v1

    .line 331
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 334
    iget-boolean v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    if-nez v2, :cond_9

    .line 338
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x2

    .line 341
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    .line 343
    aget-object v7, v3, v6

    .line 344
    iget-object v8, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    aget v8, v8, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_0

    move-object/from16 v10, p1

    .line 346
    invoke-interface {v10, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v11

    aput-wide v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v10, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    .line 352
    aget-object v7, v3, v6

    add-int/lit8 v8, v6, 0x1

    move v9, v8

    :goto_3
    if-ge v9, v1, :cond_3

    .line 354
    aget-object v10, v3, v9

    .line 355
    iget-object v11, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v11, v11, v9

    aget-wide v12, v11, v6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v2, :cond_2

    .line 357
    aget-wide v14, v10, v11

    aget-wide v16, v7, v11

    mul-double v16, v16, v12

    sub-double v14, v14, v16

    aput-wide v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v4

    :goto_5
    if-ltz v1, :cond_8

    .line 364
    aget-object v4, v3, v1

    .line 365
    iget-object v6, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v1

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_5

    .line 367
    aget-wide v9, v4, v6

    div-double/2addr v9, v7

    aput-wide v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v1, :cond_7

    .line 370
    aget-object v7, v3, v6

    .line 371
    iget-object v8, v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v8, v8, v6

    aget-wide v9, v8, v1

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v2, :cond_6

    .line 373
    aget-wide v11, v7, v8

    aget-wide v13, v4, v8

    mul-double v13, v13, v9

    sub-double/2addr v11, v13

    aput-wide v11, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 378
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v3, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v1

    .line 335
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1

    :cond_a
    move-object/from16 v10, p1

    .line 332
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12

    .line 292
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    array-length v0, v0

    .line 293
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 296
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->singular:Z

    if-nez v1, :cond_5

    .line 300
    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 304
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->pivot:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_2

    .line 309
    aget-wide v3, v1, p1

    add-int/lit8 v5, p1, 0x1

    move v6, v5

    :goto_2
    if-ge v6, v0, :cond_1

    .line 311
    aget-wide v7, v1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, p1

    mul-double v10, v10, v3

    sub-double/2addr v7, v10

    aput-wide v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move p1, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 317
    aget-wide v3, v1, v0

    iget-object p1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object p1, p1, v0

    aget-wide v5, p1, v0

    div-double/2addr v3, v5

    aput-wide v3, v1, v0

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v0, :cond_3

    .line 320
    aget-wide v5, v1, p1

    iget-object v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;->lu:[[D

    aget-object v7, v7, p1

    aget-wide v8, v7, v0

    mul-double v8, v8, v3

    sub-double/2addr v5, v8

    aput-wide v5, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 324
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 297
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p1

    .line 294
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
