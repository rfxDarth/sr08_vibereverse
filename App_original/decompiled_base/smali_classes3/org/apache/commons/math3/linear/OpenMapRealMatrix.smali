.class public Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "OpenMapRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/SparseRealMatrix;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x52beeb57344b3c8dL


# instance fields
.field private final columns:I

.field private final entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    int-to-long v0, p1

    int-to-long v2, p2

    mul-long v0, v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 70
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    .line 71
    iput p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    .line 72
    new-instance p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-void

    .line 68
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 81
    iget v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    .line 82
    iget v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    .line 83
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-void
.end method

.method private computeKey(II)I
    .locals 1

    .line 307
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int p1, p1, v0

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 121
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 123
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    .line 124
    iget-object p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 126
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int/2addr v1, v2

    .line 127
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int v3, v3, v1

    sub-int/2addr v2, v3

    .line 128
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->setEntry(IID)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public addToEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 274
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 275
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 276
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result p1

    .line 277
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v0

    add-double/2addr v0, p3

    const-wide/16 p2, 0x0

    cmpl-double p4, v0, p2

    if-nez p4, :cond_0

    .line 279
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    return-void

    .line 281
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 1

    .line 89
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->copy()Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumnDimension()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    return v0
.end method

.method public getEntry(II)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 246
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 247
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 248
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide p1

    return-wide p1
.end method

.method public getRowDimension()I
    .locals 1

    .line 254
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 215
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 217
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getColumnDimension()I

    move-result v0

    .line 218
    new-instance v1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(II)V

    .line 219
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 221
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    .line 222
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    .line 223
    iget v6, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v7, v5, v6

    .line 224
    rem-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_0

    .line 226
    invoke-direct {p1, v5, v6}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v8

    .line 227
    iget-object v9, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 228
    invoke-direct {v1, v7, v6}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result v9

    .line 229
    iget-object v10, v1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v10

    iget-object v12, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v12, v8}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v12

    mul-double v12, v12, v3

    add-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v8, v10, v12

    if-nez v8, :cond_1

    .line 232
    iget-object v8, v1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    goto :goto_1

    .line 234
    :cond_1
    iget-object v8, v1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 180
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->multiply(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 183
    :catch_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 185
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 186
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->rows:I

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 187
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 189
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    .line 190
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    .line 191
    iget v6, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int v7, v5, v6

    .line 192
    rem-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_0

    .line 194
    invoke-interface {p1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    mul-double v8, v8, v3

    invoke-virtual {v1, v7, v6, v8, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->addToEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public multiplyEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 289
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 290
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 291
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result p1

    .line 292
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v0

    mul-double v0, v0, p3

    const-wide/16 p2, 0x0

    cmpl-double p4, v0, p2

    if-nez p4, :cond_0

    .line 294
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    return-void

    .line 296
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    return-void
.end method

.method public setEntry(IID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 261
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 262
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    .line 264
    iget-object p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->computeKey(II)I

    move-result p1

    invoke-virtual {v0, p1, p3, p4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 156
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 158
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)V

    .line 159
    iget-object p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 161
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    div-int/2addr v1, v2

    .line 162
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->columns:I

    mul-int v3, v3, v1

    sub-int/2addr v2, v3

    .line 163
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->setEntry(IID)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 140
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->subtract(Lorg/apache/commons/math3/linear/OpenMapRealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 142
    :catch_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    return-object p1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    move-result-object p1

    return-object p1
.end method
