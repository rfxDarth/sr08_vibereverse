.class public Lorg/apache/commons/math3/linear/BlockFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "BlockFieldMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x24

.field private static final serialVersionUID:J = -0x3fdec8c7e872feefL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 153
    invoke-static {p3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 154
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 155
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 p1, p1, 0x23

    .line 158
    div-int/lit8 p1, p1, 0x24

    iput p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 p2, p2, 0x23

    .line 159
    div-int/lit8 p2, p2, 0x24

    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-eqz p4, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    mul-int p1, p1, p2

    const/4 p2, -0x1

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 166
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 170
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge p2, v1, :cond_4

    .line 171
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v1

    const/4 v2, 0x0

    .line 172
    :goto_2
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v2, v3, :cond_3

    .line 173
    aget-object v3, p3, v0

    array-length v3, v3

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    mul-int v4, v4, v1

    if-ne v3, v4, :cond_2

    if-eqz p4, :cond_1

    .line 178
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, p3, v0

    invoke-virtual {v4}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p2, p3, v0

    array-length p2, p2

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

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

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 104
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 105
    iput p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v0, p2, 0x23

    .line 108
    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 v0, p3, 0x23

    .line 109
    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    .line 112
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-void
.end method

.method private blockHeight(I)I
    .locals 2

    .line 1582
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x24

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    mul-int/lit8 p1, p1, 0x24

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return v1
.end method

.method private blockWidth(I)I
    .locals 2

    .line 1591
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x24

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    mul-int/lit8 p1, p1, 0x24

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return v1
.end method

.method private copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IIIII[TT;III)V"
        }
    .end annotation

    sub-int/2addr p6, p5

    mul-int v0, p3, p2

    add-int/2addr v0, p5

    mul-int p9, p9, p8

    add-int/2addr p9, p10

    :goto_0
    if-ge p3, p4, :cond_0

    .line 776
    invoke-static {p1, v0, p7, p9, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p2

    add-int/2addr p9, p8

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)[[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x23

    .line 272
    div-int/lit8 v0, v0, 0x24

    add-int/lit8 v1, p2, 0x23

    .line 273
    div-int/lit8 v1, v1, 0x24

    mul-int v2, v0, v1

    const/4 v3, -0x1

    .line 275
    invoke-static {p0, v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v6, v4, 0x24

    add-int/lit8 v7, v6, 0x24

    .line 279
    invoke-static {v7, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    sub-int/2addr v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v8, v6, 0x24

    add-int/lit8 v9, v8, 0x24

    .line 283
    invoke-static {v9, p2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    sub-int/2addr v9, v8

    mul-int v9, v9, v7

    .line 285
    invoke-static {p0, v9}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/FieldElement;

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

.method public static toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([[TT;)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 211
    array-length v1, v0

    const/4 v2, 0x0

    .line 212
    aget-object v3, v0, v2

    array-length v3, v3

    add-int/lit8 v4, v1, 0x23

    .line 213
    div-int/lit8 v4, v4, 0x24

    add-int/lit8 v5, v3, 0x23

    .line 214
    div-int/lit8 v5, v5, 0x24

    const/4 v6, 0x0

    .line 217
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 218
    aget-object v7, v0, v6

    array-length v7, v7

    if-ne v7, v3, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, v3, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 225
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v6

    mul-int v7, v4, v5

    const/4 v8, -0x1

    .line 226
    invoke-static {v6, v7, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v4, :cond_4

    mul-int/lit8 v10, v8, 0x24

    add-int/lit8 v11, v10, 0x24

    .line 230
    invoke-static {v11, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    sub-int v12, v11, v10

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_3

    mul-int/lit8 v14, v13, 0x24

    add-int/lit8 v15, v14, 0x24

    .line 234
    invoke-static {v15, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    sub-int/2addr v15, v14

    mul-int v2, v12, v15

    .line 238
    invoke-static {v6, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 239
    aput-object v2, v7, v9

    move/from16 v16, v1

    move v0, v10

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v11, :cond_2

    move/from16 v17, v0

    .line 244
    aget-object v0, p0, v17

    invoke-static {v0, v14, v2, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v15

    add-int/lit8 v0, v17, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_2

    :cond_3
    move/from16 v16, v1

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    return-object v7
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 374
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 377
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 378
    aget-object v3, v3, v2

    .line 379
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    .line 380
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    .line 381
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 382
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 322
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 326
    :catch_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 328
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 332
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    const/4 v6, 0x0

    .line 333
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 336
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    .line 337
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x24

    add-int/lit8 v10, v9, 0x24

    .line 339
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x24

    add-int/lit8 v12, v11, 0x24

    .line 341
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 345
    aget-object v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v7, v13

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

.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1191
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1192
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1194
    div-int/lit8 v0, p1, 0x24

    .line 1195
    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    .line 1196
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1198
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    .line 1200
    aget-object v0, p2, p1

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/FieldElement;

    aput-object p3, p2, p1

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 307
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 310
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 311
    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 298
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumn(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1115
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1118
    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    .line 1120
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1122
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    .line 1123
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v6

    .line 1124
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v8, v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    .line 1126
    aget-object v10, v7, v10

    aput-object v10, v0, v5

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

    .line 1267
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    return v0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 926
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 929
    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    .line 931
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    .line 934
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 935
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v8, :cond_2

    .line 936
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v8

    .line 937
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v10, v10, v5

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    .line 939
    array-length v11, v3

    if-lt v6, v11, :cond_0

    .line 940
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v7, v7, 0x1

    aget-object v3, v3, v7

    const/4 v6, 0x0

    :cond_0
    add-int/lit8 v11, v6, 0x1

    mul-int v12, v10, v2

    add-int/2addr v12, p1

    .line 943
    aget-object v12, v9, v12

    aput-object v12, v3, v6

    add-int/lit8 v10, v10, 0x1

    move v6, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1039
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1040
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1043
    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    .line 1045
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1047
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    .line 1048
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v6

    .line 1049
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v8, v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    .line 1051
    aget-object v10, v7, v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1055
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {p1, v1, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    .line 632
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x24

    mul-int/lit8 v2, v2, 0x24

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 634
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v5, :cond_2

    mul-int/lit8 v5, v4, 0x24

    add-int/lit8 v6, v5, 0x24

    .line 636
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    .line 640
    aget-object v9, v0, v5

    .line 641
    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v10, v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 643
    :goto_2
    iget v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v13, v13, -0x1

    if-ge v11, v13, :cond_0

    .line 644
    iget-object v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v14, v10, 0x1

    aget-object v10, v13, v10

    invoke-static {v10, v7, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x24

    add-int/lit8 v11, v11, 0x1

    move v10, v14

    goto :goto_2

    .line 647
    :cond_0
    iget-object v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v10, v11, v10

    invoke-static {v10, v8, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x24

    add-int/2addr v8, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1161
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1162
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1164
    div-int/lit8 v0, p1, 0x24

    .line 1165
    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    .line 1166
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1169
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aget-object p1, p2, p1

    return-object p1
.end method

.method public getRow(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1073
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1076
    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1079
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v2, v4, :cond_0

    .line 1080
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    .line 1081
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v6, v6, v1

    add-int/2addr v6, v2

    aget-object v5, v5, v6

    mul-int v6, p1, v4

    .line 1082
    invoke-static {v5, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 1261
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    return v0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 839
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 840
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 843
    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    .line 847
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 848
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v7, :cond_1

    .line 849
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    .line 850
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v9, v9, v1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    .line 851
    array-length v9, v2

    sub-int/2addr v9, v5

    if-le v7, v9, :cond_0

    mul-int v10, p1, v7

    .line 853
    invoke-static {v8, v10, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v2, v6

    sub-int/2addr v7, v9

    .line 855
    invoke-static {v8, v10, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v7

    goto :goto_1

    :cond_0
    mul-int v9, p1, v7

    .line 858
    invoke-static {v8, v9, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1008
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 1011
    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1014
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v5, :cond_0

    .line 1015
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    .line 1016
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v7, v7, v1

    add-int/2addr v7, v3

    aget-object v6, v6, v7

    mul-int v7, p1, v5

    .line 1017
    invoke-static {v6, v7, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {p1, v1, v0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 663
    invoke-virtual/range {p0 .. p4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 666
    new-instance v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p4, p3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v11, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 670
    div-int/lit8 v1, p1, 0x24

    .line 671
    rem-int/lit8 v3, p1, 0x24

    .line 672
    div-int/lit8 v12, p3, 0x24

    .line 673
    rem-int/lit8 v5, p3, 0x24

    const/4 v13, 0x0

    move v14, v1

    const/4 v15, 0x0

    .line 677
    :goto_0
    iget v1, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v15, v1, :cond_4

    .line 678
    invoke-direct {v11, v15}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v16

    move v2, v12

    const/4 v1, 0x0

    .line 680
    :goto_1
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v1, v4, :cond_3

    .line 681
    invoke-direct {v11, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v8

    .line 684
    iget v4, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v4, v4, v15

    add-int/2addr v4, v1

    .line 685
    iget-object v6, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v6, v4

    .line 686
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v4, v4, v14

    add-int v17, v4, v2

    move v4, v2

    .line 687
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    move v6, v4

    add-int v4, v16, v3

    add-int/lit8 v18, v4, -0x24

    move v9, v6

    add-int v6, v8, v5

    add-int/lit8 v19, v6, -0x24

    if-lez v18, :cond_1

    if-lez v19, :cond_0

    add-int/lit8 v4, v9, 0x1

    .line 695
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v20

    .line 696
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v17

    move v6, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v21, v1

    move-object v1, v4

    const/16 v4, 0x24

    move/from16 v22, v6

    const/16 v6, 0x24

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    move/from16 v24, v2

    move/from16 v23, v5

    .line 700
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v17, 0x1

    aget-object v1, v1, v2

    sub-int v10, v8, v19

    const/4 v5, 0x0

    move/from16 v6, v19

    move/from16 v2, v20

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    move/from16 v25, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v26, v10

    .line 704
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v2, v17, v2

    aget-object v1, v1, v2

    sub-int v9, v16, v18

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x24

    move/from16 v4, v18

    move/from16 v5, v23

    move/from16 v2, v24

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 708
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v17, v17, v2

    add-int/lit8 v17, v17, 0x1

    aget-object v1, v1, v17

    const/4 v5, 0x0

    move/from16 v6, v20

    move/from16 v2, v25

    move/from16 v10, v26

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    move/from16 v3, v19

    goto :goto_2

    :cond_0
    move/from16 v21, v1

    move/from16 v19, v3

    move/from16 v23, v5

    move/from16 v22, v9

    .line 714
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x24

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    .line 718
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v17, v17, v3

    aget-object v1, v1, v17

    sub-int v9, v16, v18

    const/4 v3, 0x0

    move/from16 v4, v18

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    move/from16 v3, v19

    goto :goto_3

    :cond_1
    move/from16 v21, v1

    move/from16 v22, v9

    move/from16 v20, v19

    move/from16 v19, v3

    if-lez v20, :cond_2

    add-int/lit8 v1, v22, 0x1

    .line 727
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v18

    .line 728
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x24

    move/from16 v3, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    move/from16 v23, v5

    .line 732
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v17, v17, 0x1

    aget-object v1, v1, v17

    sub-int v10, v8, v20

    const/4 v5, 0x0

    move/from16 v2, v18

    move/from16 v6, v20

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    :goto_2
    move/from16 v5, v23

    goto :goto_3

    :cond_2
    move/from16 v23, v5

    move/from16 v3, v19

    .line 738
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

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

.method public multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 566
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 568
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 569
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 573
    :goto_0
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v7, :cond_6

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 576
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 578
    :goto_1
    iget v10, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v9, v10, :cond_5

    .line 579
    invoke-direct {v2, v9}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v10

    add-int v11, v10, v10

    add-int v12, v11, v10

    add-int v13, v12, v10

    .line 585
    iget-object v14, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v14, v14, v6

    const/4 v15, 0x0

    .line 588
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v15, v4, :cond_4

    .line 589
    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    move-object/from16 v16, v2

    .line 590
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v2, v2, v5

    add-int/2addr v2, v15

    aget-object v2, v17, v2

    .line 591
    iget-object v0, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v0

    iget v0, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v0, v0, v15

    add-int/2addr v0, v9

    aget-object v0, v17, v0

    move-object/from16 v17, v0

    move v0, v7

    const/16 v18, 0x0

    :goto_3
    if-ge v0, v8, :cond_3

    sub-int v19, v0, v7

    mul-int v19, v19, v4

    move/from16 v20, v0

    add-int v0, v19, v4

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_2

    move/from16 v21, v1

    move/from16 v23, v21

    move-object/from16 v22, v2

    move-object v2, v3

    move/from16 v1, v19

    :goto_5
    move-object/from16 v24, v3

    add-int/lit8 v3, v0, -0x3

    if-ge v1, v3, :cond_0

    .line 601
    aget-object v3, v22, v1

    move/from16 v25, v1

    aget-object v1, v17, v23

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v25, 0x1

    aget-object v2, v22, v2

    add-int v3, v23, v10

    aget-object v3, v17, v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v25, 0x2

    aget-object v2, v22, v2

    add-int v3, v23, v11

    aget-object v3, v17, v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v25, 0x3

    aget-object v2, v22, v2

    add-int v3, v23, v12

    aget-object v3, v17, v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v1, v25, 0x4

    add-int v23, v23, v13

    move-object/from16 v3, v24

    goto :goto_5

    :cond_0
    move/from16 v25, v1

    :goto_6
    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 610
    aget-object v1, v22, v1

    move/from16 v25, v0

    aget-object v0, v17, v23

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int v23, v23, v10

    move v1, v3

    move/from16 v0, v25

    goto :goto_6

    :cond_1
    move/from16 v25, v0

    .line 613
    aget-object v0, v14, v18

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v14, v18

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v1, v21, 0x1

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    move/from16 v0, v25

    goto/16 :goto_4

    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v24, v3

    add-int/lit8 v0, v20, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_3
    move-object/from16 v24, v3

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_2

    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v24, v3

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v24, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v2

    return-object v16
.end method

.method public multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 499
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 503
    :catch_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 505
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 506
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 510
    :goto_0
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v7, :cond_5

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 513
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 515
    :goto_1
    iget v10, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v9, v10, :cond_4

    mul-int/lit8 v10, v9, 0x24

    add-int/lit8 v11, v10, 0x24

    .line 518
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 521
    iget-object v12, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v12, v12, v6

    const/4 v13, 0x0

    .line 524
    :goto_2
    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v13, v14, :cond_3

    .line 525
    invoke-direct {v0, v13}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v14

    .line 526
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v4, v4, v5

    add-int/2addr v4, v13

    aget-object v4, v15, v4

    mul-int/lit8 v15, v13, 0x24

    move v0, v7

    const/16 v16, 0x0

    :goto_3
    if-ge v0, v8, :cond_2

    sub-int v17, v0, v7

    mul-int v17, v17, v14

    move/from16 v18, v0

    add-int v0, v17, v14

    move-object/from16 v19, v2

    move v2, v10

    :goto_4
    if-ge v2, v11, :cond_1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move v5, v15

    move-object/from16 v4, v20

    move/from16 v3, v17

    :goto_5
    if-ge v3, v0, :cond_0

    move/from16 v23, v0

    .line 536
    aget-object v0, v21, v3

    move/from16 v24, v3

    invoke-interface {v1, v5, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v24, 0x1

    move/from16 v0, v23

    goto :goto_5

    :cond_0
    move/from16 v23, v0

    .line 539
    aget-object v0, v12, v16

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v12, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    move/from16 v0, v23

    goto :goto_4

    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    add-int/lit8 v0, v18, 0x1

    move-object/from16 v2, v19

    goto :goto_3

    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v22, v5

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v22, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v22, v5

    add-int/lit8 v5, v22, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v19, v2

    return-object v19
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1207
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1208
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1210
    div-int/lit8 v0, p1, 0x24

    .line 1211
    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    .line 1212
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1214
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    .line 1216
    aget-object v0, p2, p1

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/FieldElement;

    aput-object p3, p2, p1

    return-void
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1273
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    if-ne v2, v3, :cond_5

    .line 1276
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 1277
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    .line 1280
    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_4

    mul-int/lit8 v6, v5, 0x24

    add-int/lit8 v7, v6, 0x24

    .line 1282
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 1283
    :goto_1
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v8, v9, :cond_3

    .line 1284
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    mul-int v9, v9, v5

    add-int/2addr v9, v8

    aget-object v9, v10, v9

    mul-int/lit8 v10, v8, 0x24

    add-int/lit8 v11, v10, 0x24

    .line 1286
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    move v12, v6

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v7, :cond_2

    move-object v15, v3

    move v14, v10

    :goto_3
    add-int/lit8 v4, v11, -0x3

    if-ge v14, v4, :cond_0

    .line 1292
    aget-object v4, v9, v13

    move-object/from16 v16, v2

    aget-object v2, v1, v14

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v13, 0x1

    aget-object v4, v9, v4

    add-int/lit8 v15, v14, 0x1

    aget-object v15, v1, v15

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v13, 0x2

    aget-object v4, v9, v4

    add-int/lit8 v15, v14, 0x2

    aget-object v15, v1, v15

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v13, 0x3

    aget-object v4, v9, v4

    add-int/lit8 v15, v14, 0x3

    aget-object v15, v1, v15

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v14, v14, 0x4

    move-object/from16 v2, v16

    goto :goto_3

    :cond_0
    move-object/from16 v16, v2

    :goto_4
    if-ge v14, v11, :cond_1

    add-int/lit8 v2, v13, 0x1

    .line 1301
    aget-object v4, v9, v13

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v1, v14

    invoke-interface {v4, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lorg/apache/commons/math3/FieldElement;

    move v14, v13

    move v13, v2

    goto :goto_4

    .line 1303
    :cond_1
    aget-object v2, v16, v12

    invoke-interface {v2, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v16, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v16, v2

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v16, v2

    return-object v16

    .line 1274
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1315
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    if-ne v2, v3, :cond_5

    .line 1318
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    .line 1319
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    .line 1322
    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_4

    .line 1323
    invoke-direct {v0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    add-int v7, v6, v6

    add-int v8, v7, v6

    add-int v9, v8, v6

    mul-int/lit8 v10, v5, 0x24

    add-int/lit8 v11, v10, 0x24

    .line 1328
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    const/4 v12, 0x0

    .line 1329
    :goto_1
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v12, v13, :cond_3

    .line 1330
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v14, v14, v12

    add-int/2addr v14, v5

    aget-object v13, v13, v14

    mul-int/lit8 v14, v12, 0x24

    add-int/lit8 v15, v14, 0x24

    .line 1332
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v15, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move v15, v10

    :goto_2
    if-ge v15, v11, :cond_2

    sub-int v16, v15, v10

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move v2, v14

    :goto_3
    move/from16 v19, v5

    add-int/lit8 v5, v4, -0x3

    if-ge v2, v5, :cond_0

    .line 1338
    aget-object v5, v13, v16

    move/from16 v20, v2

    aget-object v2, v1, v20

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int v3, v16, v6

    aget-object v3, v13, v3

    add-int/lit8 v5, v20, 0x1

    aget-object v5, v1, v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int v3, v16, v7

    aget-object v3, v13, v3

    add-int/lit8 v5, v20, 0x2

    aget-object v5, v1, v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    add-int v3, v16, v8

    aget-object v3, v13, v3

    add-int/lit8 v5, v20, 0x3

    aget-object v5, v1, v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    add-int v16, v16, v9

    add-int/lit8 v2, v20, 0x4

    move/from16 v5, v19

    goto :goto_3

    :cond_0
    move/from16 v20, v2

    :goto_4
    if-ge v2, v4, :cond_1

    .line 1347
    aget-object v5, v13, v16

    add-int/lit8 v20, v2, 0x1

    aget-object v2, v1, v2

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    add-int v16, v16, v6

    move/from16 v2, v20

    goto :goto_4

    .line 1350
    :cond_1
    aget-object v2, v17, v15

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v17, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v5, v19

    goto/16 :goto_2

    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v5

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v5

    add-int/lit8 v5, v19, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v17, v2

    return-object v17

    .line 1316
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 462
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 465
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 466
    aget-object v3, v3, v2

    .line 467
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 468
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 469
    aget-object v6, v4, v5

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 480
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 483
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 484
    aget-object v3, v3, v2

    .line 485
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 486
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 487
    aget-object v6, v4, v5

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1137
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1138
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v0

    .line 1139
    array-length v1, p2

    if-ne v1, v0, :cond_2

    .line 1144
    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    .line 1146
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1148
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v3, v5, :cond_1

    .line 1149
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v5

    .line 1150
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v7, v7, v3

    add-int/2addr v7, v0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    mul-int v8, v7, v1

    add-int/2addr v8, p1

    add-int/lit8 v9, v4, 0x1

    .line 1152
    aget-object v4, p2, v4

    aput-object v4, v6, v8

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1140
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 974
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 975
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v0

    .line 976
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 984
    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    .line 986
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v1

    .line 989
    iget-object v2, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 990
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v7, :cond_2

    .line 991
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v7

    .line 992
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v9, v9, v4

    add-int/2addr v9, v0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_1

    .line 994
    array-length v10, v2

    if-lt v5, v10, :cond_0

    .line 995
    iget-object v2, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v2, v6

    const/4 v5, 0x0

    :cond_0
    mul-int v10, v9, v1

    add-int/2addr v10, p1

    add-int/lit8 v11, v5, 0x1

    .line 998
    aget-object v5, v2, v5

    aput-object v5, v8, v10

    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 978
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v0, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 955
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 957
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    return-void
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1063
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1065
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    return-void
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1176
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1177
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkColumnIndex(I)V

    .line 1179
    div-int/lit8 v0, p1, 0x24

    .line 1180
    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    .line 1181
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int p1, p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1184
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aput-object p3, p2, p1

    return-void
.end method

.method public setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1093
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 1094
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 1095
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 1100
    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1103
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v1, v3, :cond_0

    .line 1104
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    .line 1105
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v5, v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    mul-int v5, p1, v3

    .line 1106
    invoke-static {p2, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1096
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v1, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 890
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkRowIndex(I)V

    .line 891
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 892
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 900
    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    .line 904
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 905
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v6, :cond_1

    .line 906
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    .line 907
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v8, v8, v0

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    .line 908
    array-length v8, v1

    sub-int/2addr v8, v4

    if-le v6, v8, :cond_0

    mul-int v9, p1, v6

    .line 910
    invoke-static {v1, v4, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v5, v5, 0x1

    aget-object v1, v1, v5

    sub-int/2addr v6, v8

    .line 912
    invoke-static {v1, v2, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    goto :goto_1

    :cond_0
    mul-int v8, p1, v6

    .line 915
    invoke-static {v1, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 894
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 871
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 873
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    return-void
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1029
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1031
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    return-void
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 789
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 790
    aget-object v5, v1, v4

    array-length v5, v5

    if-eqz v5, :cond_5

    .line 794
    array-length v6, v1

    add-int/2addr v6, v2

    add-int/lit8 v7, v6, -0x1

    add-int v8, v3, v5

    add-int/lit8 v9, v8, -0x1

    .line 796
    invoke-virtual {v0, v2, v7, v3, v9}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 797
    array-length v7, v1

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v9, v1, v4

    .line 798
    array-length v10, v9

    if-ne v10, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 799
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v9

    invoke-direct {v1, v5, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 804
    :cond_1
    div-int/lit8 v4, v2, 0x24

    add-int/lit8 v5, v6, 0x23

    .line 805
    div-int/lit8 v5, v5, 0x24

    .line 806
    div-int/lit8 v7, v3, 0x24

    add-int/lit8 v9, v8, 0x23

    .line 807
    div-int/lit8 v9, v9, 0x24

    :goto_1
    if-ge v4, v5, :cond_4

    .line 811
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v10

    mul-int/lit8 v11, v4, 0x24

    .line 813
    invoke-static {v2, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v12

    add-int/2addr v10, v11

    .line 814
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    move v13, v7

    :goto_2
    if-ge v13, v9, :cond_3

    .line 817
    invoke-direct {v0, v13}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v14

    mul-int/lit8 v15, v13, 0x24

    .line 819
    invoke-static {v3, v15}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v16

    add-int v1, v15, v14

    .line 820
    invoke-static {v8, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    sub-int v1, v1, v16

    .line 824
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v2, v2, v4

    add-int/2addr v2, v13

    aget-object v2, v17, v2

    move v0, v12

    :goto_3
    if-ge v0, v10, :cond_2

    sub-int v17, v0, p2

    move/from16 v18, v0

    .line 826
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

    .line 792
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 444
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 447
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 448
    aget-object v3, v3, v2

    .line 449
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    .line 450
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    .line 451
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 452
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 394
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 398
    :catch_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 400
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 404
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    const/4 v6, 0x0

    .line 405
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 408
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    .line 409
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x24

    add-int/lit8 v10, v9, 0x24

    .line 411
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x24

    add-int/lit8 v12, v11, 0x24

    .line 413
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 417
    aget-object v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v7, v13

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

.method public transpose()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1222
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    .line 1223
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 1224
    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1228
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v2, v5, :cond_3

    const/4 v5, 0x0

    .line 1229
    :goto_1
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_2

    .line 1232
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    .line 1233
    iget-object v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v8, v8, v5

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    mul-int/lit8 v8, v2, 0x24

    add-int/lit8 v9, v8, 0x24

    .line 1235
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    mul-int/lit8 v10, v5, 0x24

    add-int/lit8 v11, v10, 0x24

    .line 1237
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

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

    .line 1243
    aget-object v16, v7, v15

    aput-object v16, v6, v13

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

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1469
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1471
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x24

    add-int/lit8 v4, v3, 0x24

    .line 1473
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 1474
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x24

    add-int/lit8 v7, v6, 0x24

    .line 1476
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1477
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v2

    move v9, v3

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 1481
    aget-object v12, v8, v10

    invoke-interface {v0, v9, v11, v12}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v12

    aput-object v12, v8, v10

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

    .line 1488
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

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

    .line 1522
    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1523
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1524
    div-int/lit8 v1, v4, 0x24

    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 1526
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, p3, 0x1

    .line 1527
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1528
    div-int/lit8 v8, v6, 0x24

    :goto_1
    div-int/lit8 v9, p5, 0x24

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_2

    .line 1529
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x24

    .line 1531
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x24

    add-int/lit8 v14, p5, 0x1

    .line 1532
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1533
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

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

    .line 1537
    aget-object v1, v8, v15

    move/from16 v17, v2

    move-object/from16 v2, p1

    invoke-interface {v2, v14, v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    aput-object v1, v8, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_3

    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_2

    :cond_1
    move/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move v8, v12

    move/from16 v2, v17

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 1543
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1494
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1496
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x24

    add-int/lit8 v4, v3, 0x24

    .line 1498
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 1499
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x24

    add-int/lit8 v7, v6, 0x24

    .line 1501
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1502
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v2

    move v9, v3

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 1506
    aget-object v12, v8, v10

    invoke-interface {v0, v9, v11, v12}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

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

    .line 1513
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

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

    .line 1552
    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1553
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1554
    div-int/lit8 v1, v4, 0x24

    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 1556
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, p3, 0x1

    .line 1557
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1558
    div-int/lit8 v8, v6, 0x24

    :goto_1
    div-int/lit8 v9, p5, 0x24

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_2

    .line 1559
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x24

    .line 1561
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x24

    add-int/lit8 v14, p5, 0x1

    .line 1562
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1563
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

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

    .line 1567
    aget-object v1, v8, v15

    move/from16 v17, v2

    move-object/from16 v2, p1

    invoke-interface {v2, v14, v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_3

    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v2, p1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_2

    :cond_1
    move/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move v8, v12

    move/from16 v2, v17

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 1573
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1361
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1362
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    add-int/lit8 v3, v2, 0x24

    .line 1364
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    const/4 v5, 0x0

    .line 1366
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 1367
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 1369
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 1370
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v10, v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int v10, v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 1373
    aget-object v6, v9, v10

    invoke-interface {v0, v4, v7, v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    aput-object v6, v9, v10

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

    .line 1379
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

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

    .line 1412
    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1413
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 1414
    div-int/lit8 v1, v4, 0x24

    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 1416
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, p3, 0x1

    .line 1417
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    :goto_1
    if-ge v3, v7, :cond_2

    .line 1419
    div-int/lit8 v8, v6, 0x24

    :goto_2
    div-int/lit8 v9, p5, 0x24

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1420
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x24

    .line 1422
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x24

    add-int/lit8 v14, p5, 0x1

    .line 1423
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1424
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v15, v15, v1

    add-int/2addr v15, v8

    aget-object v8, v14, v15

    sub-int v14, v3, v2

    mul-int v14, v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    :goto_3
    if-ge v11, v13, :cond_0

    .line 1427
    aget-object v9, v8, v14

    move-object/from16 v10, p1

    invoke-interface {v10, v3, v11, v9}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v9

    aput-object v9, v8, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v10, p1

    move v8, v12

    goto :goto_2

    :cond_1
    move-object/from16 v10, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    move v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v10, p1

    .line 1433
    invoke-interface {v10}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1385
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1386
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    add-int/lit8 v3, v2, 0x24

    .line 1388
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    const/4 v5, 0x0

    .line 1390
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 1391
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 1393
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 1394
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v10, v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int v10, v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 1397
    aget-object v6, v9, v10

    invoke-interface {v0, v4, v7, v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

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

    .line 1403
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

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

    .line 1442
    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 1443
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 1444
    div-int/lit8 v1, v4, 0x24

    :goto_0
    div-int/lit8 v2, p3, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 1446
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, p3, 0x1

    .line 1447
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    :goto_1
    if-ge v3, v7, :cond_2

    .line 1449
    div-int/lit8 v8, v6, 0x24

    :goto_2
    div-int/lit8 v9, p5, 0x24

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1450
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v9

    mul-int/lit8 v10, v8, 0x24

    .line 1452
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    mul-int/lit8 v13, v12, 0x24

    add-int/lit8 v14, p5, 0x1

    .line 1453
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v13

    .line 1454
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v15, v15, v1

    add-int/2addr v15, v8

    aget-object v8, v14, v15

    sub-int v14, v3, v2

    mul-int v14, v14, v9

    add-int/2addr v14, v11

    sub-int/2addr v14, v10

    :goto_3
    if-ge v11, v13, :cond_0

    .line 1457
    aget-object v9, v8, v14

    move-object/from16 v10, p1

    invoke-interface {v10, v3, v11, v9}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v10, p1

    move v8, v12

    goto :goto_2

    :cond_1
    move-object/from16 v10, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    move v1, v5

    goto :goto_0

    :cond_3
    move-object/from16 v10, p1

    .line 1463
    invoke-interface {v10}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method
