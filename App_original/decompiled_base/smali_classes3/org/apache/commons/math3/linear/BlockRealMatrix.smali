.class public Lorg/apache/commons/math3/linear/BlockRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "BlockRealMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLOCK_SIZE:I = 0x34

.field private static final serialVersionUID:J = 0x4546c684f3b7c9deL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[D

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 99
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 100
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v0, p1, 0x33

    .line 103
    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 v0, p2, 0x33

    .line 104
    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    .line 107
    invoke-static {p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    return-void
.end method

.method public constructor <init>(II[[DZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 150
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 151
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 p1, p1, 0x33

    .line 154
    div-int/lit8 p1, p1, 0x34

    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 p2, p2, 0x33

    .line 155
    div-int/lit8 p2, p2, 0x34

    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-eqz p4, :cond_0

    mul-int p1, p1, p2

    .line 159
    new-array p1, p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    goto :goto_0

    .line 162
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 166
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge p2, v1, :cond_4

    .line 167
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v1

    const/4 v2, 0x0

    .line 168
    :goto_2
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v2, v3, :cond_3

    .line 169
    aget-object v3, p3, v0

    array-length v3, v3

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    mul-int v4, v4, v1

    if-ne v3, v4, :cond_2

    if-eqz p4, :cond_1

    .line 174
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, p3, v0

    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aput-object v4, v3, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p2, p3, v0

    array-length p2, p2

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result p3

    mul-int v1, v1, p3

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->toBlocksLayout([[D)[[D

    move-result-object p1

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-void
.end method

.method private blockHeight(I)I
    .locals 2

    .line 1571
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x34

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    mul-int/lit8 p1, p1, 0x34

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return v1
.end method

.method private blockWidth(I)I
    .locals 2

    .line 1580
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x34

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    mul-int/lit8 p1, p1, 0x34

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return v1
.end method

.method private copyBlockPart([DIIIII[DIII)V
    .locals 1

    sub-int/2addr p6, p5

    mul-int v0, p3, p2

    add-int/2addr v0, p5

    mul-int p9, p9, p8

    add-int/2addr p9, p10

    :goto_0
    if-ge p3, p4, :cond_0

    .line 781
    invoke-static {p1, v0, p7, p9, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p2

    add-int/2addr p9, p8

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createBlocksLayout(II)[[D
    .locals 10

    add-int/lit8 v0, p0, 0x33

    .line 258
    div-int/lit8 v0, v0, 0x34

    add-int/lit8 v1, p1, 0x33

    .line 259
    div-int/lit8 v1, v1, 0x34

    mul-int v2, v0, v1

    .line 261
    new-array v2, v2, [[D

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v6, v4, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 265
    invoke-static {v7, p0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    sub-int/2addr v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v8, v6, 0x34

    add-int/lit8 v9, v8, 0x34

    .line 269
    invoke-static {v9, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    sub-int/2addr v9, v8

    mul-int v9, v9, v7

    .line 271
    new-array v8, v9, [D

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static toBlocksLayout([[D)[[D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 203
    array-length v1, v0

    const/4 v2, 0x0

    .line 204
    aget-object v3, v0, v2

    array-length v3, v3

    add-int/lit8 v4, v1, 0x33

    .line 205
    div-int/lit8 v4, v4, 0x34

    add-int/lit8 v5, v3, 0x33

    .line 206
    div-int/lit8 v5, v5, 0x34

    const/4 v6, 0x0

    .line 209
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 210
    aget-object v7, v0, v6

    array-length v7, v7

    if-ne v7, v3, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, v3, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_1
    mul-int v6, v4, v5

    .line 217
    new-array v6, v6, [[D

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v4, :cond_4

    mul-int/lit8 v9, v7, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 221
    invoke-static {v10, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    sub-int v11, v10, v9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_3

    mul-int/lit8 v13, v12, 0x34

    add-int/lit8 v14, v13, 0x34

    .line 225
    invoke-static {v14, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    sub-int/2addr v14, v13

    mul-int v15, v11, v14

    .line 229
    new-array v15, v15, [D

    .line 230
    aput-object v15, v6, v8

    move v2, v9

    const/4 v0, 0x0

    :goto_3
    if-ge v2, v10, :cond_2

    move/from16 v16, v1

    .line 235
    aget-object v1, p0, v2

    invoke-static {v1, v13, v15, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v14

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v16

    goto :goto_3

    :cond_2
    move/from16 v16, v1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    move/from16 v16, v1

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    return-object v6
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 352
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 354
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 357
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 358
    aget-object v3, v3, v2

    .line 359
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    .line 360
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v5, v2

    const/4 v6, 0x0

    .line 361
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 362
    aget-wide v7, v4, v6

    aget-wide v9, v5, v6

    add-double/2addr v7, v9

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 306
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 309
    :catch_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 311
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 315
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    const/4 v6, 0x0

    .line 316
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 319
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, v5

    .line 320
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 322
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x34

    add-int/lit8 v12, v11, 0x34

    .line 324
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 328
    aget-wide v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v17

    add-double v15, v15, v17

    aput-wide v15, v7, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public addToEntry(IID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1191
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1192
    div-int/lit8 v0, p1, 0x34

    .line 1193
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1194
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1196
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aget-wide v0, p2, p1

    add-double/2addr v0, p3

    aput-wide v0, p2, p1

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 6

    .line 291
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 294
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 295
    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 284
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(I)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1119
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1120
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v0, v0, [D

    .line 1123
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 1125
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1127
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    .line 1128
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 1129
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v8, v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    .line 1131
    aget-wide v10, v7, v10

    aput-wide v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .line 1257
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    return v0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 930
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 931
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 934
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 936
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    .line 939
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 940
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v8, :cond_2

    .line 941
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v8

    .line 942
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v10, v10, v5

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    .line 944
    array-length v11, v3

    if-lt v6, v11, :cond_0

    .line 945
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v7, v7, 0x1

    aget-object v3, v3, v7

    const/4 v6, 0x0

    :cond_0
    add-int/lit8 v11, v6, 0x1

    mul-int v12, v10, v2

    add-int/2addr v12, p1

    .line 948
    aget-wide v12, v9, v12

    aput-wide v12, v3, v6

    add-int/lit8 v10, v10, 0x1

    move v6, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1044
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1045
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v0, v0, [D

    .line 1048
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 1050
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1052
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    .line 1053
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 1054
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v8, v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    .line 1056
    aget-wide v10, v7, v10

    aput-wide v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public getData()[[D
    .locals 17

    move-object/from16 v0, p0

    .line 598
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 599
    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    sub-int/2addr v5, v4

    const/16 v6, 0x34

    mul-int/lit8 v5, v5, 0x34

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    .line 601
    :goto_0
    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v7, :cond_2

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, v7, 0x34

    .line 603
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 607
    aget-object v11, v1, v7

    .line 608
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v12, v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 610
    :goto_2
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    sub-int/2addr v15, v4

    if-ge v13, v15, :cond_0

    .line 611
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v16, v12, 0x1

    aget-object v12, v15, v12

    invoke-static {v12, v9, v11, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x34

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v16

    goto :goto_2

    .line 614
    :cond_0
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v12, v13, v12

    invoke-static {v12, v10, v11, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x34

    add-int/2addr v10, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getEntry(II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1166
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1167
    div-int/lit8 v0, p1, 0x34

    .line 1168
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1169
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1171
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public getFrobeniusNorm()D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 653
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 654
    aget-object v4, v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-wide v7, v4, v6

    mul-double v7, v7, v7

    add-double/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 658
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x34

    .line 626
    new-array v1, v1, [D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    const/4 v5, 0x0

    .line 628
    :goto_0
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v8, :cond_4

    .line 629
    invoke-direct {v0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 630
    invoke-static {v1, v4, v8, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    const/4 v9, 0x0

    .line 631
    :goto_1
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v9, v10, :cond_2

    .line 632
    invoke-direct {v0, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v10

    .line 633
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v12, v12, v9

    add-int/2addr v12, v5

    aget-object v11, v11, v12

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_1

    move-wide v14, v2

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_0

    mul-int v16, v13, v8

    add-int v16, v16, v12

    .line 637
    aget-wide v16, v11, v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 639
    :cond_0
    aget-wide v16, v1, v12

    add-double v16, v16, v14

    aput-wide v16, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_3

    .line 643
    aget-wide v10, v1, v9

    invoke-static {v6, v7, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-wide v6
.end method

.method public getRow(I)[D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1077
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1078
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v0, v0, [D

    .line 1081
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1084
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v2, v4, :cond_0

    .line 1085
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 1086
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v6, v6, v1

    add-int/2addr v6, v2

    aget-object v5, v5, v6

    mul-int v6, p1, v4

    .line 1087
    invoke-static {v5, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 1251
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    return v0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 844
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 845
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 848
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 852
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 853
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v7, :cond_1

    .line 854
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    .line 855
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v9, v9, v1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    .line 856
    array-length v9, v2

    sub-int/2addr v9, v5

    if-le v7, v9, :cond_0

    mul-int v10, p1, v7

    .line 858
    invoke-static {v8, v10, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v2, v6

    sub-int/2addr v7, v9

    .line 860
    invoke-static {v8, v10, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v7

    goto :goto_1

    :cond_0
    mul-int v9, p1, v7

    .line 863
    invoke-static {v8, v9, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getRowMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1012
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1013
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v0, v0, [D

    .line 1016
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1019
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v5, :cond_0

    .line 1020
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1021
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v7, v7, v1

    add-int/2addr v7, v3

    aget-object v6, v6, v7

    mul-int v7, p1, v5

    .line 1022
    invoke-static {v6, v7, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 668
    invoke-static/range {p0 .. p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 671
    new-instance v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, p4, p3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v11, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 675
    div-int/lit8 v1, p1, 0x34

    .line 676
    rem-int/lit8 v3, p1, 0x34

    .line 677
    div-int/lit8 v12, p3, 0x34

    .line 678
    rem-int/lit8 v5, p3, 0x34

    const/4 v13, 0x0

    move v14, v1

    const/4 v15, 0x0

    .line 682
    :goto_0
    iget v1, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v15, v1, :cond_4

    .line 683
    invoke-direct {v11, v15}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v16

    move v2, v12

    const/4 v1, 0x0

    .line 685
    :goto_1
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v1, v4, :cond_3

    .line 686
    invoke-direct {v11, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 689
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v4, v4, v15

    add-int/2addr v4, v1

    .line 690
    iget-object v6, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v6, v4

    .line 691
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v4, v4, v14

    add-int v17, v4, v2

    move v4, v2

    .line 692
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    move v6, v4

    add-int v4, v16, v3

    add-int/lit8 v18, v4, -0x34

    move v9, v6

    add-int v6, v8, v5

    add-int/lit8 v19, v6, -0x34

    if-lez v18, :cond_1

    if-lez v19, :cond_0

    add-int/lit8 v4, v9, 0x1

    .line 700
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v20

    .line 701
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v17

    move v6, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v21, v1

    move-object v1, v4

    const/16 v4, 0x34

    move/from16 v22, v6

    const/16 v6, 0x34

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    move/from16 v24, v2

    move/from16 v23, v5

    .line 705
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v2, v17, 0x1

    aget-object v1, v1, v2

    sub-int v10, v8, v19

    const/4 v5, 0x0

    move/from16 v6, v19

    move/from16 v2, v20

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    move/from16 v25, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v26, v10

    .line 709
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v2, v17, v2

    aget-object v1, v1, v2

    sub-int v9, v16, v18

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x34

    move/from16 v4, v18

    move/from16 v5, v23

    move/from16 v2, v24

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 713
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v17, v17, v2

    add-int/lit8 v17, v17, 0x1

    aget-object v1, v1, v17

    const/4 v5, 0x0

    move/from16 v6, v20

    move/from16 v2, v25

    move/from16 v10, v26

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    move/from16 v3, v19

    goto :goto_2

    :cond_0
    move/from16 v21, v1

    move/from16 v19, v3

    move/from16 v23, v5

    move/from16 v22, v9

    .line 719
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v1, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x34

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 723
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v17, v17, v3

    aget-object v1, v1, v17

    sub-int v9, v16, v18

    const/4 v3, 0x0

    move/from16 v4, v18

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    move/from16 v3, v19

    goto :goto_3

    :cond_1
    move/from16 v21, v1

    move/from16 v22, v9

    move/from16 v20, v19

    move/from16 v19, v3

    if-lez v20, :cond_2

    add-int/lit8 v1, v22, 0x1

    .line 732
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v18

    .line 733
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v1, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x34

    move/from16 v3, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    move/from16 v23, v5

    .line 737
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v17, v17, 0x1

    aget-object v1, v1, v17

    sub-int v10, v8, v20

    const/4 v5, 0x0

    move/from16 v2, v18

    move/from16 v6, v20

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    :goto_2
    move/from16 v5, v23

    goto :goto_3

    :cond_2
    move/from16 v23, v5

    move/from16 v3, v19

    .line 743
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v1, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    :goto_3
    add-int/lit8 v2, v22, 0x1

    add-int/lit8 v1, v21, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    return-object v11
.end method

.method public bridge synthetic getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 537
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 539
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v4, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 543
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_6

    mul-int/lit8 v6, v4, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 546
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 548
    :goto_1
    iget v9, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v8, v9, :cond_5

    .line 549
    invoke-direct {v2, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    add-int v10, v9, v9

    add-int v11, v10, v9

    add-int v12, v11, v9

    .line 555
    iget-object v13, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v13, v13, v5

    const/4 v14, 0x0

    .line 558
    :goto_2
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v14, v15, :cond_4

    .line 559
    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v15

    .line 560
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v16, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v2, v2, v4

    add-int/2addr v2, v14

    aget-object v2, v3, v2

    .line 561
    iget-object v3, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v0, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v0, v0, v14

    add-int/2addr v0, v8

    aget-object v0, v3, v0

    move v3, v6

    const/16 v17, 0x0

    :goto_3
    if-ge v3, v7, :cond_3

    sub-int v18, v3, v6

    mul-int v18, v18, v15

    move-object/from16 v19, v0

    add-int v0, v18, v15

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_2

    const-wide/16 v20, 0x0

    move/from16 v22, v1

    move/from16 v23, v22

    move/from16 v1, v18

    :goto_5
    move-object/from16 v24, v2

    add-int/lit8 v2, v0, -0x3

    if-ge v1, v2, :cond_0

    .line 571
    aget-wide v25, v24, v1

    aget-wide v27, v19, v23

    mul-double v25, v25, v27

    add-int/lit8 v2, v1, 0x1

    aget-wide v27, v24, v2

    add-int v2, v23, v9

    aget-wide v29, v19, v2

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-int/lit8 v2, v1, 0x2

    aget-wide v27, v24, v2

    add-int v2, v23, v10

    aget-wide v29, v19, v2

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-int/lit8 v2, v1, 0x3

    aget-wide v27, v24, v2

    add-int v2, v23, v11

    aget-wide v29, v19, v2

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-double v20, v20, v25

    add-int/lit8 v1, v1, 0x4

    add-int v23, v23, v12

    move-object/from16 v2, v24

    goto :goto_5

    :cond_0
    :goto_6
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 579
    aget-wide v25, v24, v1

    aget-wide v27, v19, v23

    mul-double v25, v25, v27

    add-double v20, v20, v25

    add-int v23, v23, v9

    move v1, v2

    goto :goto_6

    .line 582
    :cond_1
    aget-wide v1, v13, v17

    add-double v1, v1, v20

    aput-wide v1, v13, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v1, v22, 0x1

    move-object/from16 v2, v24

    goto :goto_4

    :cond_2
    move-object/from16 v24, v2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v19

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_2

    :cond_4
    move-object/from16 v16, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v16, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v2

    return-object v16
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 477
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 480
    :catch_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 482
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 486
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_5

    mul-int/lit8 v6, v4, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 488
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 490
    :goto_1
    iget v9, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v8, v9, :cond_4

    mul-int/lit8 v9, v8, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 492
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v11

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 495
    iget-object v11, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v11, v11, v5

    const/4 v12, 0x0

    .line 498
    :goto_2
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v12, v13, :cond_3

    .line 499
    invoke-direct {v0, v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v13

    .line 500
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v15, v15, v4

    add-int/2addr v15, v12

    aget-object v14, v14, v15

    mul-int/lit8 v15, v12, 0x34

    move v3, v6

    const/16 v16, 0x0

    :goto_3
    if-ge v3, v7, :cond_2

    sub-int v17, v3, v6

    mul-int v17, v17, v13

    add-int v0, v17, v13

    move-object/from16 v18, v2

    move v2, v9

    :goto_4
    if-ge v2, v10, :cond_1

    const-wide/16 v19, 0x0

    move/from16 v21, v3

    move/from16 v22, v4

    move v4, v15

    move/from16 v3, v17

    :goto_5
    if-ge v3, v0, :cond_0

    .line 510
    aget-wide v23, v14, v3

    invoke-interface {v1, v4, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v19, v19, v23

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 513
    :cond_0
    aget-wide v3, v11, v16

    add-double v3, v3, v19

    aput-wide v3, v11, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v21

    move/from16 v4, v22

    goto :goto_4

    :cond_1
    move/from16 v21, v3

    move/from16 v22, v4

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    goto :goto_3

    :cond_2
    move-object/from16 v18, v2

    move/from16 v22, v4

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    move-object/from16 v18, v2

    move/from16 v22, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    move-object/from16 v18, v2

    move/from16 v22, v4

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v18, v2

    return-object v18
.end method

.method public bridge synthetic multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public multiplyEntry(IID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1204
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1205
    div-int/lit8 v0, p1, 0x34

    .line 1206
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1207
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1209
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aget-wide v0, p2, p1

    mul-double v0, v0, p3

    aput-wide v0, p2, p1

    return-void
.end method

.method public operate([D)[D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1264
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    if-ne v2, v3, :cond_5

    .line 1267
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v2, v2, [D

    const/4 v4, 0x0

    .line 1270
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v5, :cond_4

    mul-int/lit8 v5, v4, 0x34

    add-int/lit8 v6, v5, 0x34

    .line 1272
    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    const/4 v7, 0x0

    .line 1273
    :goto_1
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v7, v8, :cond_3

    .line 1274
    iget-object v9, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    mul-int v8, v8, v4

    add-int/2addr v8, v7

    aget-object v8, v9, v8

    mul-int/lit8 v9, v7, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 1276
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    move v11, v5

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v6, :cond_2

    const-wide/16 v13, 0x0

    move v15, v9

    :goto_3
    add-int/lit8 v3, v10, -0x3

    if-ge v15, v3, :cond_0

    .line 1282
    aget-wide v16, v8, v12

    aget-wide v18, v1, v15

    mul-double v16, v16, v18

    add-int/lit8 v3, v12, 0x1

    aget-wide v18, v8, v3

    add-int/lit8 v3, v15, 0x1

    aget-wide v20, v1, v3

    mul-double v18, v18, v20

    add-double v16, v16, v18

    add-int/lit8 v3, v12, 0x2

    aget-wide v18, v8, v3

    add-int/lit8 v3, v15, 0x2

    aget-wide v20, v1, v3

    mul-double v18, v18, v20

    add-double v16, v16, v18

    add-int/lit8 v3, v12, 0x3

    aget-wide v18, v8, v3

    add-int/lit8 v3, v15, 0x3

    aget-wide v20, v1, v3

    mul-double v18, v18, v20

    add-double v16, v16, v18

    add-double v13, v13, v16

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v15, v15, 0x4

    goto :goto_3

    :cond_0
    :goto_4
    if-ge v15, v10, :cond_1

    add-int/lit8 v3, v12, 0x1

    .line 1290
    aget-wide v16, v8, v12

    add-int/lit8 v12, v15, 0x1

    aget-wide v18, v1, v15

    mul-double v16, v16, v18

    add-double v13, v13, v16

    move v15, v12

    move v12, v3

    goto :goto_4

    .line 1292
    :cond_1
    aget-wide v16, v2, v11

    add-double v16, v16, v13

    aput-wide v16, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    .line 1265
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public preMultiply([D)[D
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1304
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    if-ne v2, v3, :cond_5

    .line 1307
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v2, v2, [D

    const/4 v4, 0x0

    .line 1310
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_4

    .line 1311
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    add-int v6, v5, v5

    add-int v7, v6, v5

    add-int v8, v7, v5

    mul-int/lit8 v9, v4, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 1316
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    const/4 v11, 0x0

    .line 1317
    :goto_1
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v11, v12, :cond_3

    .line 1318
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v13, v13, v11

    add-int/2addr v13, v4

    aget-object v12, v12, v13

    mul-int/lit8 v13, v11, 0x34

    add-int/lit8 v14, v13, 0x34

    .line 1320
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    move v15, v9

    :goto_2
    if-ge v15, v10, :cond_2

    sub-int v16, v15, v9

    const-wide/16 v17, 0x0

    move v3, v13

    :goto_3
    move-object/from16 v19, v2

    add-int/lit8 v2, v14, -0x3

    if-ge v3, v2, :cond_0

    .line 1326
    aget-wide v20, v12, v16

    aget-wide v22, v1, v3

    mul-double v20, v20, v22

    add-int v2, v16, v5

    aget-wide v22, v12, v2

    add-int/lit8 v2, v3, 0x1

    aget-wide v24, v1, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v2, v16, v6

    aget-wide v22, v12, v2

    add-int/lit8 v2, v3, 0x2

    aget-wide v24, v1, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v2, v16, v7

    aget-wide v22, v12, v2

    add-int/lit8 v2, v3, 0x3

    aget-wide v24, v1, v2

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-double v17, v17, v20

    add-int v16, v16, v8

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v2, v19

    goto :goto_3

    :cond_0
    :goto_4
    if-ge v3, v14, :cond_1

    .line 1334
    aget-wide v20, v12, v16

    add-int/lit8 v2, v3, 0x1

    aget-wide v22, v1, v3

    mul-double v20, v20, v22

    add-double v17, v17, v20

    add-int v16, v16, v5

    move v3, v2

    goto :goto_4

    .line 1337
    :cond_1
    aget-wide v2, v19, v15

    add-double v2, v2, v17

    aput-wide v2, v19, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v19

    goto :goto_2

    :cond_2
    move-object/from16 v19, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v19, v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v2

    return-object v19

    .line 1305
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 8

    .line 441
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 444
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 445
    aget-object v3, v3, v2

    .line 446
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 447
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 448
    aget-wide v6, v4, v5

    add-double/2addr v6, p1

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 458
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 461
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 462
    aget-object v3, v3, v2

    .line 463
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 464
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 465
    aget-wide v6, v4, v5

    mul-double v6, v6, p1

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setColumn(I[D)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1142
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1143
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v0

    .line 1144
    array-length v1, p2

    if-ne v1, v0, :cond_2

    .line 1149
    div-int/lit8 v0, p1, 0x34

    mul-int/lit8 v1, v0, 0x34

    sub-int/2addr p1, v1

    .line 1151
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1153
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v3, v5, :cond_1

    .line 1154
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v5

    .line 1155
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v7, v7, v3

    add-int/2addr v7, v0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    mul-int v8, v7, v1

    add-int/2addr v8, p1

    add-int/lit8 v9, v4, 0x1

    .line 1157
    aget-wide v10, p2, v4

    aput-wide v10, v6, v8

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1145
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 979
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 980
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v2

    .line 981
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 989
    div-int/lit8 v2, p1, 0x34

    mul-int/lit8 v3, v2, 0x34

    sub-int v3, p1, v3

    .line 991
    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 994
    iget-object v5, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 995
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v7, v10, :cond_2

    .line 996
    invoke-direct {v0, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v10

    .line 997
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v12, v12, v7

    add-int/2addr v12, v2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_1

    .line 999
    array-length v13, v5

    if-lt v8, v13, :cond_0

    .line 1000
    iget-object v5, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v9, v9, 0x1

    aget-object v5, v5, v9

    const/4 v8, 0x0

    :cond_0
    mul-int v13, v12, v4

    add-int/2addr v13, v3

    add-int/lit8 v14, v8, 0x1

    .line 1003
    aget-wide v15, v5, v8

    aput-wide v15, v11, v13

    add-int/lit8 v12, v12, 0x1

    move v8, v14

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 983
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v1

    invoke-direct {v3, v5, v1, v2, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v3
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 960
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 962
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1068
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumn(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1070
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method

.method public setEntry(IID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1178
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1179
    div-int/lit8 v0, p1, 0x34

    .line 1180
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1181
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1183
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aput-wide p3, p2, p1

    return-void
.end method

.method public setRow(I[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1098
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1099
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v0

    .line 1100
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 1105
    div-int/lit8 v0, p1, 0x34

    mul-int/lit8 v1, v0, 0x34

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1108
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v1, v3, :cond_0

    .line 1109
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    .line 1110
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v5, v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    mul-int v5, p1, v3

    .line 1111
    invoke-static {p2, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1101
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v1, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 895
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 896
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v0

    .line 897
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 905
    div-int/lit8 v0, p1, 0x34

    mul-int/lit8 v1, v0, 0x34

    sub-int/2addr p1, v1

    .line 909
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 910
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v6, :cond_1

    .line 911
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    .line 912
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v8, v8, v0

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    .line 913
    array-length v8, v1

    sub-int/2addr v8, v4

    if-le v6, v8, :cond_0

    mul-int v9, p1, v6

    .line 915
    invoke-static {v1, v4, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v5, v5, 0x1

    aget-object v1, v1, v5

    sub-int/2addr v6, v8

    .line 917
    invoke-static {v1, v2, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    goto :goto_1

    :cond_0
    mul-int v8, p1, v6

    .line 920
    invoke-static {v1, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 899
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 876
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 878
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1034
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRow(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1036
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method

.method public setSubMatrix([[DII)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 794
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 795
    aget-object v5, v1, v4

    array-length v5, v5

    if-eqz v5, :cond_5

    .line 799
    array-length v6, v1

    add-int/2addr v6, v2

    add-int/lit8 v7, v6, -0x1

    add-int v8, v3, v5

    add-int/lit8 v9, v8, -0x1

    .line 801
    invoke-static {v0, v2, v7, v3, v9}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 802
    array-length v7, v1

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v9, v1, v4

    .line 803
    array-length v10, v9

    if-ne v10, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 804
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v9

    invoke-direct {v1, v5, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 809
    :cond_1
    div-int/lit8 v4, v2, 0x34

    add-int/lit8 v5, v6, 0x33

    .line 810
    div-int/lit8 v5, v5, 0x34

    .line 811
    div-int/lit8 v7, v3, 0x34

    add-int/lit8 v9, v8, 0x33

    .line 812
    div-int/lit8 v9, v9, 0x34

    :goto_1
    if-ge v4, v5, :cond_4

    .line 816
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v10

    mul-int/lit8 v11, v4, 0x34

    .line 818
    invoke-static {v2, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v12

    add-int/2addr v10, v11

    .line 819
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    move v13, v7

    :goto_2
    if-ge v13, v9, :cond_3

    .line 822
    invoke-direct {v0, v13}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v14

    mul-int/lit8 v15, v13, 0x34

    .line 824
    invoke-static {v3, v15}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v16

    add-int v1, v15, v14

    .line 825
    invoke-static {v8, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    sub-int v1, v1, v16

    .line 829
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v17, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v2, v2, v4

    add-int/2addr v2, v13

    aget-object v2, v17, v2

    move v0, v12

    :goto_3
    if-ge v0, v10, :cond_2

    sub-int v17, v0, p2

    move/from16 v18, v0

    .line 831
    aget-object v0, p1, v17

    sub-int v3, v16, p3

    sub-int v17, v18, v11

    mul-int v17, v17, v14

    sub-int v19, v16, v15

    move/from16 v20, v4

    add-int v4, v17, v19

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v18, 0x1

    move/from16 v3, p3

    move/from16 v4, v20

    goto :goto_3

    :cond_2
    move/from16 v20, v4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_2

    :cond_3
    move/from16 v20, v4

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_1

    :cond_4
    return-void

    .line 797
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 420
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 422
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 425
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 426
    aget-object v3, v3, v2

    .line 427
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    .line 428
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v5, v2

    const/4 v6, 0x0

    .line 429
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 430
    aget-wide v7, v4, v6

    aget-wide v9, v5, v6

    sub-double/2addr v7, v9

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 374
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 377
    :catch_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 379
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 383
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    const/4 v6, 0x0

    .line 384
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 387
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, v5

    .line 388
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 390
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x34

    add-int/lit8 v12, v11, 0x34

    .line 392
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 396
    aget-wide v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v17

    sub-double v15, v15, v17

    aput-wide v15, v7, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 18

    move-object/from16 v0, p0

    .line 1215
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    .line 1216
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v2

    .line 1217
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v3, v2, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1221
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v2, v5, :cond_3

    const/4 v5, 0x0

    .line 1222
    :goto_1
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_2

    .line 1224
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v6, v6, v4

    .line 1225
    iget-object v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v8, v8, v5

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    mul-int/lit8 v8, v2, 0x34

    add-int/lit8 v9, v8, 0x34

    .line 1227
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    mul-int/lit8 v10, v5, 0x34

    add-int/lit8 v11, v10, 0x34

    .line 1229
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    move v12, v8

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v9, :cond_1

    sub-int v14, v9, v8

    sub-int v15, v12, v8

    move v1, v10

    :goto_3
    if-ge v1, v11, :cond_0

    .line 1235
    aget-wide v16, v7, v15

    aput-wide v16, v6, v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public bridge synthetic transpose()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 14

    .line 1456
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1458
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x34

    add-int/lit8 v4, v3, 0x34

    .line 1460
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 1461
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 1463
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1464
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v2

    move v9, v3

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 1468
    aget-wide v12, v8, v10

    invoke-interface {v0, v9, v11, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v12

    aput-wide v12, v8, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1475
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1510
    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1511
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1512
    div-int/lit8 v1, v4, 0x34

    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1514
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, p3, 0x1

    .line 1515
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1516
    div-int/lit8 v8, v6, 0x34

    :goto_1
    div-int/lit8 v9, p5, 0x34

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_2

    .line 1517
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x34

    .line 1519
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x34

    add-int/lit8 v14, p5, 0x1

    .line 1520
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1521
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v15, v15, v1

    add-int/2addr v15, v8

    aget-object v8, v14, v15

    move v14, v3

    :goto_2
    if-ge v14, v7, :cond_1

    sub-int v15, v14, v2

    mul-int v15, v15, v9

    add-int/2addr v15, v11

    sub-int/2addr v15, v10

    move v0, v11

    :goto_3
    if-ge v0, v13, :cond_0

    move/from16 v16, v1

    move/from16 v17, v2

    .line 1525
    aget-wide v1, v8, v15

    move/from16 v18, v3

    move-object/from16 v3, p1

    invoke-interface {v3, v14, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v1

    aput-wide v1, v8, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_3

    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v3, p1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v18

    goto :goto_2

    :cond_1
    move/from16 v18, v3

    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move v8, v12

    move/from16 v3, v18

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move v1, v5

    goto/16 :goto_0

    :cond_3
    move-object/from16 v3, p1

    .line 1531
    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 14

    .line 1481
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1483
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x34

    add-int/lit8 v4, v3, 0x34

    .line 1485
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 1486
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 1488
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1489
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v2

    move v9, v3

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 1493
    aget-wide v12, v8, v10

    invoke-interface {v0, v9, v11, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1500
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1541
    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1542
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1543
    div-int/lit8 v1, v4, 0x34

    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1545
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, p3, 0x1

    .line 1546
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1547
    div-int/lit8 v8, v6, 0x34

    :goto_1
    div-int/lit8 v9, p5, 0x34

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_2

    .line 1548
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x34

    .line 1550
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x34

    add-int/lit8 v14, p5, 0x1

    .line 1551
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1552
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v15, v15, v1

    add-int/2addr v15, v8

    aget-object v8, v14, v15

    move v14, v3

    :goto_2
    if-ge v14, v7, :cond_1

    sub-int v15, v14, v2

    mul-int v15, v15, v9

    add-int/2addr v15, v11

    sub-int/2addr v15, v10

    move v0, v11

    :goto_3
    if-ge v0, v13, :cond_0

    move/from16 v16, v1

    move/from16 v17, v2

    .line 1556
    aget-wide v1, v8, v15

    move/from16 v18, v3

    move-object/from16 v3, p1

    invoke-interface {v3, v14, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_3

    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v3, p1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v18

    goto :goto_2

    :cond_1
    move/from16 v18, v3

    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move v8, v12

    move/from16 v3, v18

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v3, p1

    .line 1562
    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 13

    .line 1348
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1349
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    add-int/lit8 v3, v2, 0x34

    .line 1351
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    const/4 v5, 0x0

    .line 1353
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 1354
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, v7, 0x34

    .line 1356
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 1357
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v10, v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int v10, v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 1360
    aget-wide v11, v9, v10

    invoke-interface {v0, v4, v7, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1366
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1399
    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1400
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1401
    div-int/lit8 v1, v4, 0x34

    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1403
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, p3, 0x1

    .line 1404
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    :goto_1
    if-ge v3, v7, :cond_2

    .line 1406
    div-int/lit8 v8, v6, 0x34

    :goto_2
    div-int/lit8 v9, p5, 0x34

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1407
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x34

    .line 1409
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x34

    add-int/lit8 v14, p5, 0x1

    .line 1410
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1411
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v15, v15, v1

    add-int/2addr v15, v8

    aget-object v8, v14, v15

    sub-int v14, v3, v2

    mul-int v14, v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    :goto_3
    if-ge v11, v13, :cond_0

    .line 1414
    aget-wide v9, v8, v14

    move-object/from16 v15, p1

    invoke-interface {v15, v3, v11, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v9

    aput-wide v9, v8, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v15, p1

    move v8, v12

    goto :goto_2

    :cond_1
    move-object/from16 v15, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v15, p1

    move v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v15, p1

    .line 1420
    invoke-interface {v15}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v1

    return-wide v1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 13

    .line 1372
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1373
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    add-int/lit8 v3, v2, 0x34

    .line 1375
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    const/4 v5, 0x0

    .line 1377
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 1378
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, v7, 0x34

    .line 1380
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 1381
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v10, v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int v10, v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 1384
    aget-wide v11, v9, v10

    invoke-interface {v0, v4, v7, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1390
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1429
    invoke-static {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1430
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1431
    div-int/lit8 v1, v4, 0x34

    :goto_0
    div-int/lit8 v2, p3, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1433
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, p3, 0x1

    .line 1434
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    :goto_1
    if-ge v3, v7, :cond_2

    .line 1436
    div-int/lit8 v8, v6, 0x34

    :goto_2
    div-int/lit8 v9, p5, 0x34

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1437
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x34

    .line 1439
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x34

    add-int/lit8 v14, p5, 0x1

    .line 1440
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1441
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v15, v15, v1

    add-int/2addr v15, v8

    aget-object v8, v14, v15

    sub-int v14, v3, v2

    mul-int v14, v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    :goto_3
    if-ge v11, v13, :cond_0

    .line 1444
    aget-wide v9, v8, v14

    move-object/from16 v15, p1

    invoke-interface {v15, v3, v11, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v15, p1

    move v8, v12

    goto :goto_2

    :cond_1
    move-object/from16 v15, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v15, p1

    move v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v15, p1

    .line 1450
    invoke-interface {v15}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v1

    return-wide v1
.end method
