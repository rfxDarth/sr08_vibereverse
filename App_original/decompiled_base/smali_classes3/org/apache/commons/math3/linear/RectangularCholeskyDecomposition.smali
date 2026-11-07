.class public Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;
.super Ljava/lang/Object;
.source "RectangularCholeskyDecomposition.java"


# instance fields
.field private rank:I

.field private final root:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v5, p2

    .line 83
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 86
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    const/4 v3, 0x2

    .line 87
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v7, 0x0

    aput v1, v3, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 89
    new-array v8, v1, [I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_0

    .line 91
    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_b

    add-int/lit8 v9, v10, 0x1

    move v11, v9

    move v12, v10

    :goto_2
    if-ge v11, v1, :cond_2

    .line 100
    aget v13, v8, v11

    .line 101
    aget v14, v8, v12

    .line 102
    aget-object v15, v2, v13

    aget-wide v16, v15, v13

    aget-object v13, v2, v14

    aget-wide v14, v13, v14

    cmpl-double v13, v16, v14

    if-lez v13, :cond_1

    move v12, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    if-eq v12, v10, :cond_3

    .line 110
    aget v11, v8, v10

    .line 111
    aget v13, v8, v12

    aput v13, v8, v10

    .line 112
    aput v11, v8, v12

    .line 113
    aget-object v11, v3, v10

    .line 114
    aget-object v13, v3, v12

    aput-object v13, v3, v10

    .line 115
    aput-object v11, v3, v12

    :cond_3
    const/4 v11, 0x1

    .line 119
    aget v4, v8, v10

    .line 120
    aget-object v12, v2, v4

    aget-wide v13, v12, v4

    cmpg-double v12, v13, v5

    if-gtz v12, :cond_7

    if-eqz v10, :cond_6

    move v4, v10

    :goto_3
    if-ge v4, v1, :cond_5

    .line 128
    aget v9, v8, v4

    aget-object v12, v2, v9

    aget-wide v13, v12, v9

    move-object v12, v8

    neg-double v7, v5

    cmpg-double v9, v13, v7

    if-ltz v9, :cond_4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v12

    const/4 v7, 0x0

    goto :goto_3

    .line 131
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget v3, v12, v4

    aget-object v2, v2, v3

    aget-wide v7, v2, v3

    move-wide v2, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v1

    :cond_5
    move-object v12, v8

    const/4 v9, 0x0

    goto :goto_7

    .line 123
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-object v2, v2, v4

    aget-wide v5, v2, v4

    move-wide v2, v5

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v1

    :cond_7
    move-object v12, v8

    .line 142
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    .line 143
    aget-object v7, v3, v10

    aput-wide v5, v7, v10

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 145
    aget-object v13, v2, v4

    aget-wide v14, v13, v4

    div-double/2addr v7, v14

    move v13, v9

    :goto_4
    if-ge v13, v1, :cond_9

    .line 147
    aget v14, v12, v13

    .line 148
    aget-object v15, v2, v14

    aget-wide v16, v15, v4

    mul-double v16, v16, v5

    .line 149
    aget-object v18, v3, v13

    aput-wide v16, v18, v10

    .line 150
    aget-wide v18, v15, v14

    aget-wide v20, v15, v4

    mul-double v20, v20, v20

    mul-double v20, v20, v7

    sub-double v18, v18, v20

    aput-wide v18, v15, v14

    move v15, v9

    :goto_5
    if-ge v15, v13, :cond_8

    .line 152
    aget v18, v12, v15

    .line 153
    aget-object v19, v2, v14

    aget-wide v20, v19, v18

    aget-object v22, v3, v15

    aget-wide v23, v22, v10

    mul-double v23, v23, v16

    sub-double v20, v20, v23

    .line 154
    aput-wide v20, v19, v18

    .line 155
    aget-object v18, v2, v18

    aput-wide v20, v18, v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_9
    if-ge v9, v1, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    move v10, v9

    move v9, v4

    :goto_7
    move-wide/from16 v5, p2

    move-object v8, v12

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    move-object v12, v8

    .line 165
    iput v10, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    .line 166
    invoke-static {v1, v10}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_d

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v10, :cond_c

    .line 169
    iget-object v5, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    aget v6, v12, v2

    aget-object v7, v3, v2

    aget-wide v8, v7, v4

    invoke-interface {v5, v6, v4, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method


# virtual methods
.method public getRank()I
    .locals 1

    .line 193
    iget v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    return v0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
