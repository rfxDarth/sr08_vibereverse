.class Lorg/apache/commons/math3/linear/TriDiagonalTransformer;
.super Ljava/lang/Object;
.source "TriDiagonalTransformer.java"


# instance fields
.field private cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final main:[D

.field private final secondary:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 69
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    .line 70
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    add-int/lit8 v0, v0, -0x1

    .line 71
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 73
    iput-object p1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->transform()V

    return-void

    .line 64
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method private transform()V
    .locals 20

    move-object/from16 v0, p0

    .line 193
    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 194
    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_8

    .line 198
    iget-object v4, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    aget-object v4, v4, v3

    .line 199
    iget-object v5, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    aget-wide v6, v4, v3

    aput-wide v6, v5, v3

    add-int/lit8 v5, v3, 0x1

    const-wide/16 v6, 0x0

    move v8, v5

    move-wide v9, v6

    :goto_1
    if-ge v8, v1, :cond_0

    .line 202
    aget-wide v11, v4, v8

    mul-double v11, v11, v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 205
    :cond_0
    aget-wide v11, v4, v5

    cmpl-double v8, v11, v6

    if-lez v8, :cond_1

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_2

    :cond_1
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 206
    :goto_2
    iget-object v10, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    aput-wide v8, v10, v3

    cmpl-double v3, v8, v6

    if-eqz v3, :cond_7

    .line 210
    aget-wide v10, v4, v5

    sub-double/2addr v10, v8

    aput-wide v10, v4, v5

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double v8, v8, v10

    div-double/2addr v12, v8

    .line 217
    invoke-static {v2, v5, v1, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    move v3, v5

    :goto_3
    if-ge v3, v1, :cond_3

    .line 219
    iget-object v8, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    aget-object v8, v8, v3

    .line 220
    aget-wide v9, v4, v3

    .line 221
    aget-wide v14, v8, v3

    mul-double v14, v14, v9

    add-int/lit8 v11, v3, 0x1

    move v6, v11

    :goto_4
    if-ge v6, v1, :cond_2

    .line 223
    aget-wide v16, v8, v6

    .line 224
    aget-wide v18, v4, v6

    mul-double v18, v18, v16

    add-double v14, v14, v18

    .line 225
    aget-wide v18, v2, v6

    mul-double v16, v16, v9

    add-double v18, v18, v16

    aput-wide v18, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 227
    :cond_2
    aget-wide v6, v2, v3

    add-double/2addr v6, v14

    mul-double v6, v6, v12

    aput-wide v6, v2, v3

    move v3, v11

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_3
    move v3, v5

    const-wide/16 v6, 0x0

    :goto_5
    if-ge v3, v1, :cond_4

    .line 233
    aget-wide v8, v2, v3

    aget-wide v10, v4, v3

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v8

    mul-double v6, v6, v12

    move v3, v5

    :goto_6
    if-ge v3, v1, :cond_5

    .line 239
    aget-wide v8, v2, v3

    aget-wide v10, v4, v3

    mul-double v10, v10, v6

    sub-double/2addr v8, v10

    aput-wide v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    move v3, v5

    :goto_7
    if-ge v3, v1, :cond_7

    .line 245
    iget-object v6, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    aget-object v6, v6, v3

    move v7, v3

    :goto_8
    if-ge v7, v1, :cond_6

    .line 247
    aget-wide v8, v6, v7

    aget-wide v10, v4, v3

    aget-wide v12, v2, v7

    mul-double v10, v10, v12

    aget-wide v12, v2, v3

    aget-wide v14, v4, v7

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    move v3, v5

    goto/16 :goto_0

    .line 252
    :cond_8
    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    iget-object v2, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    aget-object v2, v2, v4

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    return-void
.end method


# virtual methods
.method getHouseholderVectorsRef()[[D
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    return-object v0
.end method

.method getMainDiagonalRef()[D
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    return-object v0
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 22

    move-object/from16 v0, p0

    .line 98
    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_5

    .line 99
    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    const/4 v2, 0x2

    .line 100
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    add-int/lit8 v5, v1, -0x1

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lt v5, v3, :cond_4

    .line 104
    iget-object v8, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->householderVectors:[[D

    add-int/lit8 v9, v5, -0x1

    aget-object v8, v8, v9

    .line 105
    aget-object v10, v2, v5

    aput-wide v6, v10, v5

    .line 106
    aget-wide v11, v8, v5

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-eqz v15, :cond_3

    .line 107
    iget-object v15, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    aget-wide v16, v15, v9

    mul-double v18, v16, v11

    div-double v18, v6, v18

    div-double v15, v6, v16

    mul-double v11, v11, v15

    add-double/2addr v11, v6

    .line 109
    aput-wide v11, v10, v5

    add-int/lit8 v6, v5, 0x1

    move v7, v6

    :goto_1
    if-ge v7, v1, :cond_0

    .line 111
    aget-object v9, v2, v5

    aget-wide v10, v8, v7

    mul-double v10, v10, v15

    aput-wide v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_2
    if-ge v7, v1, :cond_3

    move v9, v6

    move-wide v10, v13

    :goto_3
    if-ge v9, v1, :cond_1

    .line 116
    aget-object v12, v2, v7

    aget-wide v15, v12, v9

    aget-wide v20, v8, v9

    mul-double v15, v15, v20

    add-double/2addr v10, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    mul-double v10, v10, v18

    .line 119
    aget-object v9, v2, v7

    aget-wide v15, v8, v5

    mul-double v15, v15, v10

    aput-wide v15, v9, v5

    move v9, v6

    :goto_4
    if-ge v9, v1, :cond_2

    .line 121
    aget-object v12, v2, v7

    aget-wide v15, v12, v9

    aget-wide v20, v8, v9

    mul-double v20, v20, v10

    add-double v15, v15, v20

    aput-wide v15, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 126
    :cond_4
    aget-object v1, v2, v4

    aput-wide v6, v1, v4

    .line 127
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 131
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedQt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method getSecondaryDiagonalRef()[D
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    return-object v0
.end method

.method public getT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .line 139
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    array-length v0, v0

    const/4 v1, 0x2

    .line 141
    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    :goto_0
    if-ge v3, v0, :cond_2

    .line 143
    aget-object v4, v1, v3

    iget-object v5, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->main:[D

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    if-lez v3, :cond_0

    add-int/lit8 v6, v3, -0x1

    .line 145
    iget-object v7, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    aget-wide v8, v7, v6

    aput-wide v8, v4, v6

    .line 147
    :cond_0
    array-length v5, v5

    sub-int/2addr v5, v2

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 148
    iget-object v6, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->secondary:[D

    aget-wide v7, v6, v3

    aput-wide v7, v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 155
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
