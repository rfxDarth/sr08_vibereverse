.class public Lorg/apache/commons/math3/linear/QRDecomposition;
.super Ljava/lang/Object;
.source "QRDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

.field private qrt:[[D

.field private rDiag:[D

.field private final threshold:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    .line 94
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p2

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p3

    .line 96
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    .line 97
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 99
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 101
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 103
    iget-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v2, v1

    aget-object v1, v1, p1

    array-length v1, v1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12

    .line 275
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 278
    aget-object v0, v0, v2

    array-length v0, v0

    const/4 v3, 0x2

    .line 279
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 281
    invoke-static {v6, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 282
    aget-object v6, v3, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v7, v7, v5

    aget-wide v8, v7, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v10, v7, v5

    neg-double v10, v10

    div-double/2addr v8, v10

    aput-wide v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_0

    .line 285
    :cond_1
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 289
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 20

    move-object/from16 v0, p0

    .line 227
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_5

    .line 230
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 231
    aget-object v1, v1, v3

    array-length v1, v1

    const/4 v4, 0x2

    .line 232
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    aput v1, v4, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    add-int/lit8 v4, v1, -0x1

    .line 239
    :goto_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lt v4, v6, :cond_0

    .line 240
    aget-object v6, v3, v4

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 243
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_4

    .line 244
    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v4, v4, v2

    .line 245
    aget-object v5, v3, v2

    aput-wide v7, v5, v2

    .line 246
    aget-wide v5, v4, v2

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-eqz v11, :cond_3

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_3

    move v6, v2

    move-wide v11, v9

    :goto_3
    if-ge v6, v1, :cond_1

    .line 250
    aget-object v13, v3, v5

    aget-wide v14, v13, v6

    aget-wide v16, v4, v6

    mul-double v14, v14, v16

    sub-double/2addr v11, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 252
    :cond_1
    iget-object v6, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v13, v6, v2

    aget-wide v15, v4, v2

    mul-double v13, v13, v15

    div-double/2addr v11, v13

    move v6, v2

    :goto_4
    if-ge v6, v1, :cond_2

    .line 255
    aget-object v13, v3, v5

    aget-wide v14, v13, v6

    neg-double v7, v11

    aget-wide v18, v4, v6

    mul-double v7, v7, v18

    add-double/2addr v14, v7

    aput-wide v14, v13, v6

    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 260
    :cond_4
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 264
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method public getR()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 189
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 193
    aget-object v0, v0, v2

    array-length v0, v0

    const/4 v3, 0x2

    .line 194
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 196
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_1

    .line 197
    aget-object v3, v2, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v5, v4, v0

    aput-wide v5, v3, v0

    add-int/lit8 v3, v0, 0x1

    :goto_1
    if-ge v3, v1, :cond_0

    .line 199
    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v0

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 6

    .line 305
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V

    return-object v0
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 13

    .line 124
    iget-object p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object p2, p2, p1

    const-wide/16 v0, 0x0

    move v2, p1

    move-wide v3, v0

    .line 134
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_0

    .line 135
    aget-wide v5, p2, v2

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    aget-wide v5, p2, p1

    cmpl-double v2, v5, v0

    if-lez v2, :cond_1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 139
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aput-wide v2, v4, p1

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_4

    .line 151
    aget-wide v4, p2, p1

    sub-double/2addr v4, v2

    aput-wide v4, p2, p1

    add-int/lit8 v4, p1, 0x1

    .line 165
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 166
    aget-object v5, v5, v4

    move v6, p1

    move-wide v7, v0

    .line 168
    :goto_3
    array-length v9, v5

    if-ge v6, v9, :cond_2

    .line 169
    aget-wide v9, v5, v6

    aget-wide v11, p2, v6

    mul-double v9, v9, v11

    sub-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 171
    :cond_2
    aget-wide v9, p2, p1

    mul-double v9, v9, v2

    div-double/2addr v7, v9

    move v6, p1

    .line 174
    :goto_4
    array-length v9, v5

    if-ge v6, v9, :cond_3

    .line 175
    aget-wide v9, v5, v6

    aget-wide v11, p2, v6

    mul-double v11, v11, v7

    sub-double/2addr v9, v11

    aput-wide v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
