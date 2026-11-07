.class Lorg/apache/commons/math3/linear/BiDiagonalTransformer;
.super Ljava/lang/Object;
.source "BiDiagonalTransformer.java"


# instance fields
.field private cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final main:[D

.field private final secondary:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 65
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 66
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 67
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    .line 68
    new-array p1, v2, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    add-int/lit8 v2, v2, -0x1

    .line 69
    new-array p1, v2, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-lt v0, v1, :cond_0

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->transformToUpperBiDiagonal()V

    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->transformToLowerBiDiagonal()V

    return-void
.end method

.method private transformToLowerBiDiagonal()V
    .locals 19

    move-object/from16 v0, p0

    .line 323
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 324
    aget-object v1, v1, v3

    array-length v1, v1

    :goto_0
    if-ge v3, v2, :cond_a

    .line 328
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v4, v4, v3

    const-wide/16 v5, 0x0

    move v7, v3

    move-wide v8, v5

    :goto_1
    if-ge v7, v1, :cond_0

    .line 331
    aget-wide v10, v4, v7

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 334
    :cond_0
    aget-wide v10, v4, v3

    cmpl-double v7, v10, v5

    if-lez v7, :cond_1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    goto :goto_2

    :cond_1
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 335
    :goto_2
    iget-object v9, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    aput-wide v7, v9, v3

    cmpl-double v9, v7, v5

    if-eqz v9, :cond_4

    .line 337
    aget-wide v9, v4, v3

    sub-double/2addr v9, v7

    aput-wide v9, v4, v3

    add-int/lit8 v9, v3, 0x1

    :goto_3
    if-ge v9, v2, :cond_4

    .line 339
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v10, v10, v9

    move v11, v3

    move-wide v12, v5

    :goto_4
    if-ge v11, v1, :cond_2

    .line 342
    aget-wide v14, v10, v11

    aget-wide v16, v4, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 344
    :cond_2
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v11, v11, v3

    aget-wide v14, v11, v3

    mul-double v14, v14, v7

    div-double/2addr v12, v14

    move v11, v3

    :goto_5
    if-ge v11, v1, :cond_3

    .line 346
    aget-wide v14, v10, v11

    aget-wide v16, v4, v11

    mul-double v16, v16, v12

    sub-double v14, v14, v16

    aput-wide v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_9

    .line 353
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    add-int/lit8 v7, v3, 0x1

    aget-object v4, v4, v7

    move-wide v9, v5

    move v8, v7

    :goto_6
    if-ge v8, v2, :cond_5

    .line 356
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v11, v11, v8

    aget-wide v12, v11, v3

    mul-double v12, v12, v12

    add-double/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 359
    :cond_5
    aget-wide v11, v4, v3

    cmpl-double v8, v11, v5

    if-lez v8, :cond_6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_7

    :cond_6
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 360
    :goto_7
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aput-wide v8, v10, v3

    cmpl-double v10, v8, v5

    if-eqz v10, :cond_9

    .line 362
    aget-wide v10, v4, v3

    sub-double/2addr v10, v8

    aput-wide v10, v4, v3

    move v10, v7

    :goto_8
    if-ge v10, v1, :cond_9

    move-wide v12, v5

    move v11, v7

    :goto_9
    if-ge v11, v2, :cond_7

    .line 366
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v14, v14, v11

    .line 367
    aget-wide v15, v14, v10

    aget-wide v17, v14, v3

    mul-double v15, v15, v17

    sub-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 369
    :cond_7
    aget-wide v14, v4, v3

    mul-double v14, v14, v8

    div-double/2addr v12, v14

    move v11, v7

    :goto_a
    if-ge v11, v2, :cond_8

    .line 371
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v14, v14, v11

    .line 372
    aget-wide v15, v14, v10

    aget-wide v17, v14, v3

    mul-double v17, v17, v12

    sub-double v15, v15, v17

    aput-wide v15, v14, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private transformToUpperBiDiagonal()V
    .locals 19

    move-object/from16 v0, p0

    .line 259
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 260
    aget-object v1, v1, v3

    array-length v1, v1

    :goto_0
    if-ge v3, v1, :cond_a

    const-wide/16 v4, 0x0

    move v6, v3

    move-wide v7, v4

    :goto_1
    if-ge v6, v2, :cond_0

    .line 266
    iget-object v9, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v3

    mul-double v10, v10, v10

    add-double/2addr v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 269
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v6, v6, v3

    .line 270
    aget-wide v9, v6, v3

    cmpl-double v11, v9, v4

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    if-lez v11, :cond_1

    neg-double v7, v7

    .line 271
    :cond_1
    iget-object v9, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    aput-wide v7, v9, v3

    cmpl-double v9, v7, v4

    if-eqz v9, :cond_4

    .line 273
    aget-wide v9, v6, v3

    sub-double/2addr v9, v7

    aput-wide v9, v6, v3

    add-int/lit8 v9, v3, 0x1

    :goto_2
    if-ge v9, v1, :cond_4

    move v10, v3

    move-wide v11, v4

    :goto_3
    if-ge v10, v2, :cond_2

    .line 277
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v13, v13, v10

    .line 278
    aget-wide v14, v13, v9

    aget-wide v16, v13, v3

    mul-double v14, v14, v16

    sub-double/2addr v11, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 280
    :cond_2
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v10, v10, v3

    aget-wide v13, v10, v3

    mul-double v13, v13, v7

    div-double/2addr v11, v13

    move v10, v3

    :goto_4
    if-ge v10, v2, :cond_3

    .line 282
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v13, v13, v10

    .line 283
    aget-wide v14, v13, v9

    aget-wide v16, v13, v3

    mul-double v16, v16, v11

    sub-double v14, v14, v16

    aput-wide v14, v13, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v1, -0x1

    if-ge v3, v7, :cond_9

    add-int/lit8 v7, v3, 0x1

    move-wide v9, v4

    move v8, v7

    :goto_5
    if-ge v8, v1, :cond_5

    .line 292
    aget-wide v11, v6, v8

    mul-double v11, v11, v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 295
    :cond_5
    aget-wide v11, v6, v7

    cmpl-double v8, v11, v4

    if-lez v8, :cond_6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_6

    :cond_6
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 296
    :goto_6
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aput-wide v8, v10, v3

    cmpl-double v10, v8, v4

    if-eqz v10, :cond_9

    .line 298
    aget-wide v10, v6, v7

    sub-double/2addr v10, v8

    aput-wide v10, v6, v7

    move v10, v7

    :goto_7
    if-ge v10, v2, :cond_9

    .line 300
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v11, v11, v10

    move-wide v13, v4

    move v12, v7

    :goto_8
    if-ge v12, v1, :cond_7

    .line 303
    aget-wide v15, v11, v12

    aget-wide v17, v6, v12

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 305
    :cond_7
    aget-wide v15, v6, v7

    mul-double v15, v15, v8

    div-double/2addr v13, v15

    move v12, v7

    :goto_9
    if-ge v12, v1, :cond_8

    .line 307
    aget-wide v15, v11, v12

    aget-wide v17, v6, v12

    mul-double v17, v17, v13

    sub-double v15, v15, v17

    aput-wide v15, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public getB()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .line 139
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 142
    aget-object v0, v0, v2

    array-length v0, v0

    const/4 v3, 0x2

    .line 143
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    aput v1, v3, v2

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 144
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 145
    aget-object v6, v3, v2

    aget-wide v7, v5, v2

    aput-wide v7, v6, v2

    if-ge v1, v0, :cond_0

    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    .line 148
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aget-wide v8, v7, v5

    aput-wide v8, v6, v5

    goto :goto_1

    .line 151
    :cond_0
    array-length v5, v5

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 152
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aget-wide v8, v7, v2

    aput-wide v8, v6, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 160
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method getHouseholderVectorsRef()[[D
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    return-object v0
.end method

.method getMainDiagonalRef()[D
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    return-object v0
.end method

.method getSecondaryDiagonalRef()[D
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 25

    move-object/from16 v0, p0

    .line 90
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_8

    .line 92
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 93
    aget-object v1, v1, v3

    array-length v1, v1

    .line 94
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v2, v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    :goto_1
    const/4 v1, 0x2

    .line 97
    new-array v1, v1, [I

    aput v2, v1, v6

    aput v2, v1, v3

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    add-int/lit8 v8, v2, -0x1

    :goto_2
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-lt v8, v5, :cond_2

    .line 101
    aget-object v11, v1, v8

    aput-wide v9, v11, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_2
    sub-int/2addr v5, v6

    :goto_3
    if-lt v5, v7, :cond_6

    .line 106
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v6, v6, v5

    .line 107
    aget-object v8, v1, v5

    aput-wide v9, v8, v5

    sub-int v8, v5, v7

    .line 108
    aget-wide v11, v6, v8

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-eqz v15, :cond_5

    move v11, v5

    :goto_4
    if-ge v11, v2, :cond_5

    move v12, v5

    move-wide v15, v13

    :goto_5
    if-ge v12, v2, :cond_3

    .line 112
    aget-object v17, v1, v12

    aget-wide v18, v17, v11

    const/16 v17, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v3, v3, v12

    aget-wide v20, v3, v8

    mul-double v18, v18, v20

    sub-double v15, v15, v18

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_3
    const/16 v17, 0x0

    .line 114
    aget-wide v18, v4, v8

    aget-wide v20, v6, v8

    mul-double v18, v18, v20

    move-wide/from16 v20, v9

    div-double v9, v15, v18

    move v3, v5

    :goto_6
    if-ge v3, v2, :cond_4

    .line 117
    aget-object v12, v1, v3

    aget-wide v15, v12, v11

    neg-double v13, v9

    move-object/from16 v22, v1

    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v1, v1, v3

    aget-wide v23, v1, v8

    mul-double v13, v13, v23

    add-double/2addr v15, v13

    aput-wide v15, v12, v11

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v22

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_4
    move-object/from16 v22, v1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v9, v20

    const/4 v3, 0x0

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v22, v1

    move-wide/from16 v20, v9

    const/16 v17, 0x0

    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v9, v20

    move-object/from16 v1, v22

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v22, v1

    move-wide/from16 v20, v9

    const/16 v17, 0x0

    if-lez v7, :cond_7

    .line 123
    aget-object v1, v22, v17

    aput-wide v20, v1, v17

    .line 125
    :cond_7
    invoke-static/range {v22 .. v22}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 129
    :cond_8
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 24

    move-object/from16 v0, p0

    .line 171
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_8

    .line 173
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 174
    aget-object v1, v1, v3

    array-length v1, v1

    .line 175
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v2, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 177
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    :cond_1
    const/4 v2, 0x2

    .line 178
    new-array v2, v2, [I

    aput v1, v2, v6

    aput v1, v2, v3

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    add-int/lit8 v8, v1, -0x1

    :goto_1
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-lt v8, v5, :cond_2

    .line 182
    aget-object v11, v2, v8

    aput-wide v9, v11, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v5, v6

    :goto_2
    if-lt v5, v7, :cond_6

    .line 187
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    sub-int v8, v5, v7

    aget-object v6, v6, v8

    .line 188
    aget-object v11, v2, v5

    aput-wide v9, v11, v5

    .line 189
    aget-wide v11, v6, v5

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-eqz v15, :cond_5

    move v11, v5

    :goto_3
    if-ge v11, v1, :cond_5

    move v12, v5

    move-wide v15, v13

    :goto_4
    if-ge v12, v1, :cond_3

    .line 193
    aget-object v17, v2, v12

    aget-wide v18, v17, v11

    aget-wide v20, v6, v12

    mul-double v18, v18, v20

    sub-double v15, v15, v18

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 195
    :cond_3
    aget-wide v17, v4, v8

    aget-wide v19, v6, v5

    mul-double v17, v17, v19

    move-object/from16 v19, v4

    const/4 v12, 0x0

    div-double v3, v15, v17

    move v15, v5

    :goto_5
    if-ge v15, v1, :cond_4

    .line 198
    aget-object v16, v2, v15

    aget-wide v17, v16, v11

    move-wide/from16 v20, v9

    neg-double v9, v3

    aget-wide v22, v6, v15

    mul-double v9, v9, v22

    add-double v17, v17, v9

    aput-wide v17, v16, v11

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v9, v20

    goto :goto_5

    :cond_4
    move-wide/from16 v20, v9

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v19

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v19, v4

    move-wide/from16 v20, v9

    const/4 v12, 0x0

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v4, v19

    move-wide/from16 v9, v20

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move-wide/from16 v20, v9

    const/4 v12, 0x0

    if-lez v7, :cond_7

    .line 204
    aget-object v1, v2, v12

    aput-wide v20, v1, v12

    .line 206
    :cond_7
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 210
    :cond_8
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method isUpperBiDiagonal()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
