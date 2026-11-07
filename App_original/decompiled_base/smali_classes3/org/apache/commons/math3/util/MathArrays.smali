.class public Lorg/apache/commons/math3/util/MathArrays;
.super Ljava/lang/Object;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MathArrays$Position;,
        Lorg/apache/commons/math3/util/MathArrays$OrderDirection;,
        Lorg/apache/commons/math3/util/MathArrays$Function;
    }
.end annotation


# static fields
.field private static final SPLIT_FACTOR:I = 0x8000001


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 1343
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 1344
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)[[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 1364
    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object p0

    .line 1365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    check-cast p0, [[Ljava/lang/Object;

    return-object p0

    .line 1367
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1, p2}, [I

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Ljava/lang/Object;

    check-cast p2, [[Ljava/lang/Object;

    :goto_0
    if-ge v0, p1, :cond_1

    .line 1372
    aget-object v1, p2, v0

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static checkNonNegative([J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 501
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 502
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static checkNonNegative([[J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 517
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 518
    :goto_1
    aget-object v3, p0, v1

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 519
    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 520
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-object p0, p0, v1

    aget-wide v1, p0, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static checkOrder([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 452
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 441
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    return-void
.end method

.method public static checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 380
    aget-wide v1, p0, v0

    .line 381
    array-length v3, p0

    const/4 v4, 0x1

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v3, :cond_5

    .line 386
    sget-object v5, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    if-eqz p2, :cond_0

    .line 400
    aget-wide v5, p0, v8

    cmpl-double v7, v5, v1

    if-ltz v7, :cond_4

    goto :goto_1

    .line 404
    :cond_0
    aget-wide v5, p0, v8

    cmpl-double v7, v5, v1

    if-lez v7, :cond_4

    goto :goto_1

    .line 411
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    :cond_2
    if-eqz p2, :cond_3

    .line 389
    aget-wide v5, p0, v8

    cmpg-double v7, v5, v1

    if-gtz v7, :cond_4

    goto :goto_1

    .line 393
    :cond_3
    aget-wide v5, p0, v8

    cmpg-double v7, v5, v1

    if-gez v7, :cond_4

    goto :goto_1

    .line 414
    :cond_4
    aget-wide v1, p0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-ne v8, v3, :cond_6

    return v4

    :cond_6
    if-nez p3, :cond_7

    return v0

    .line 424
    :cond_7
    new-instance v5, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;

    aget-wide v3, p0, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;-><init>(Ljava/lang/Number;Ljava/lang/Number;ILorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    throw v5
.end method

.method public static checkPositive([D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 485
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 486
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static checkRectangular([[J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 465
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 466
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 467
    aget-object v1, p0, v0

    array-length v1, v1

    const/4 v2, 0x0

    aget-object v3, p0, v2

    array-length v3, v3

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIFFERENT_ROWS_LENGTHS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object v0, p0, v0

    array-length v0, v0

    aget-object p0, p0, v2

    array-length p0, p0

    invoke-direct {v1, v3, v0, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v1

    :cond_1
    return-void
.end method

.method public static convolve([D[D)[D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1401
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1402
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1404
    array-length v2, v0

    .line 1405
    array-length v3, v1

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    add-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    .line 1413
    new-array v5, v4, [D

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_1

    add-int/lit8 v8, v7, 0x1

    sub-int v9, v8, v2

    .line 1418
    invoke-static {v6, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v9

    sub-int v10, v7, v9

    const-wide/16 v11, 0x0

    :goto_1
    if-ge v9, v3, :cond_0

    if-ltz v10, :cond_0

    add-int/lit8 v13, v10, -0x1

    .line 1421
    aget-wide v14, v0, v10

    add-int/lit8 v10, v9, 0x1

    aget-wide v16, v1, v9

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    move v9, v10

    move v10, v13

    goto :goto_1

    .line 1423
    :cond_0
    aput-wide v11, v5, v7

    move v7, v8

    goto :goto_0

    :cond_1
    return-object v5

    .line 1408
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method

.method public static copyOf([D)[D
    .locals 1

    .line 768
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([DI)[D
    .locals 2

    .line 796
    new-array v0, p1, [D

    .line 797
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOf([I)[I
    .locals 1

    .line 758
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([II)[I
    .locals 2

    .line 781
    new-array v0, p1, [I

    .line 782
    array-length v1, p0

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static distance([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 240
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 241
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    mul-double v3, v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distance([I[I)D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 256
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 257
    aget v3, p0, v2

    aget v4, p1, v2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    mul-double v3, v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distance1([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 210
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 211
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static distance1([I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 226
    aget v2, p0, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static distanceInf([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 272
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 273
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static distanceInf([I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 287
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 288
    aget v2, p0, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static ebeAdd([D[D)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 124
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    .line 129
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 130
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 125
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static ebeDivide([D[D)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 190
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 194
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    .line 195
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 196
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 191
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static ebeMultiply([D[D)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 168
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    .line 173
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 174
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    mul-double v2, v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 169
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static ebeSubtract([D[D)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 146
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 150
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    .line 151
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 152
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 147
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static equals([D[D)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1239
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 1242
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1243
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-nez p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    xor-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static equals([F[F)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1188
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 1191
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1192
    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equals(FF)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-nez p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    xor-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static equalsIncludingNaN([D[D)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1265
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 1268
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1269
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-nez p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    xor-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static equalsIncludingNaN([F[F)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1214
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 1217
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1218
    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-nez p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    xor-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static isMonotonic([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result p0

    return p0
.end method

.method public static isMonotonic([Ljava/lang/Comparable;Lorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;",
            "Lorg/apache/commons/math3/util/MathArrays$OrderDirection;",
            "Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 315
    aget-object v1, p0, v0

    .line 316
    array-length v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v2, :cond_5

    .line 319
    sget-object v5, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 333
    aget-object v5, p0, v4

    invoke-interface {v5, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz p2, :cond_0

    if-ltz v1, :cond_4

    return v0

    :cond_0
    if-lez v1, :cond_4

    return v0

    .line 346
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    .line 321
    :cond_2
    aget-object v5, p0, v4

    invoke-interface {v1, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz p2, :cond_3

    if-ltz v1, :cond_4

    return v0

    :cond_3
    if-lez v1, :cond_4

    return v0

    .line 349
    :cond_4
    aget-object v1, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public static linearCombination(DDDD)D
    .locals 18

    const-wide v0, 0x41a0000002000000L    # 1.34217729E8

    mul-double v2, p0, v0

    sub-double v4, v2, p0

    sub-double/2addr v2, v4

    sub-double v4, p0, v2

    mul-double v6, p2, v0

    sub-double v8, v6, p2

    sub-double/2addr v6, v8

    sub-double v8, p2, v6

    mul-double v10, p0, p2

    mul-double v12, v4, v8

    mul-double v14, v2, v6

    sub-double v14, v10, v14

    mul-double v4, v4, v6

    sub-double/2addr v14, v4

    mul-double v2, v2, v8

    sub-double/2addr v14, v2

    sub-double/2addr v12, v14

    mul-double v2, p4, v0

    sub-double v4, v2, p4

    sub-double/2addr v2, v4

    sub-double v4, p4, v2

    mul-double v0, v0, p6

    sub-double v6, v0, p6

    sub-double/2addr v0, v6

    sub-double v6, p6, v0

    mul-double v8, p4, p6

    mul-double v14, v4, v6

    mul-double v16, v2, v0

    sub-double v16, v8, v16

    mul-double v4, v4, v0

    sub-double v16, v16, v4

    mul-double v2, v2, v6

    sub-double v16, v16, v2

    sub-double v14, v14, v16

    add-double v0, v10, v8

    sub-double v2, v0, v8

    sub-double v4, v0, v2

    sub-double/2addr v8, v4

    sub-double/2addr v10, v2

    add-double/2addr v8, v10

    add-double/2addr v12, v14

    add-double/2addr v12, v8

    add-double/2addr v12, v0

    .line 949
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    return-wide v12
.end method

.method public static linearCombination(DDDDDD)D
    .locals 22

    const-wide v0, 0x41a0000002000000L    # 1.34217729E8

    mul-double v2, p0, v0

    sub-double v4, v2, p0

    sub-double/2addr v2, v4

    sub-double v4, p0, v2

    mul-double v6, p2, v0

    sub-double v8, v6, p2

    sub-double/2addr v6, v8

    sub-double v8, p2, v6

    mul-double v10, p0, p2

    mul-double v12, v4, v8

    mul-double v14, v2, v6

    sub-double v14, v10, v14

    mul-double v4, v4, v6

    sub-double/2addr v14, v4

    mul-double v2, v2, v8

    sub-double/2addr v14, v2

    sub-double/2addr v12, v14

    mul-double v2, p4, v0

    sub-double v4, v2, p4

    sub-double/2addr v2, v4

    sub-double v4, p4, v2

    mul-double v6, p6, v0

    sub-double v8, v6, p6

    sub-double/2addr v6, v8

    sub-double v8, p6, v6

    mul-double v14, p4, p6

    mul-double v16, v4, v8

    mul-double v18, v2, v6

    sub-double v18, v14, v18

    mul-double v4, v4, v6

    sub-double v18, v18, v4

    mul-double v2, v2, v8

    sub-double v18, v18, v2

    sub-double v16, v16, v18

    mul-double v2, p8, v0

    sub-double v4, v2, p8

    sub-double/2addr v2, v4

    sub-double v4, p8, v2

    mul-double v0, v0, p10

    sub-double v6, v0, p10

    sub-double/2addr v0, v6

    sub-double v6, p10, v0

    mul-double v8, p8, p10

    mul-double v18, v4, v6

    mul-double v20, v2, v0

    sub-double v20, v8, v20

    mul-double v4, v4, v0

    sub-double v20, v20, v4

    mul-double v2, v2, v6

    sub-double v20, v20, v2

    sub-double v18, v18, v20

    add-double v0, v10, v14

    sub-double v2, v0, v14

    sub-double v4, v0, v2

    sub-double/2addr v14, v4

    sub-double/2addr v10, v2

    add-double/2addr v14, v10

    add-double v2, v0, v8

    sub-double v4, v2, v8

    sub-double v6, v2, v4

    sub-double/2addr v8, v6

    sub-double/2addr v0, v4

    add-double/2addr v8, v0

    add-double v12, v12, v16

    add-double v12, v12, v18

    add-double/2addr v12, v14

    add-double/2addr v12, v8

    add-double/2addr v12, v2

    .line 1046
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2

    :cond_0
    return-wide v12
.end method

.method public static linearCombination(DDDDDDDD)D
    .locals 26

    const-wide v0, 0x41a0000002000000L    # 1.34217729E8

    mul-double v2, p0, v0

    sub-double v4, v2, p0

    sub-double/2addr v2, v4

    sub-double v4, p0, v2

    mul-double v6, p2, v0

    sub-double v8, v6, p2

    sub-double/2addr v6, v8

    sub-double v8, p2, v6

    mul-double v10, p0, p2

    mul-double v12, v4, v8

    mul-double v14, v2, v6

    sub-double v14, v10, v14

    mul-double v4, v4, v6

    sub-double/2addr v14, v4

    mul-double v2, v2, v8

    sub-double/2addr v14, v2

    sub-double/2addr v12, v14

    mul-double v2, p4, v0

    sub-double v4, v2, p4

    sub-double/2addr v2, v4

    sub-double v4, p4, v2

    mul-double v6, p6, v0

    sub-double v8, v6, p6

    sub-double/2addr v6, v8

    sub-double v8, p6, v6

    mul-double v14, p4, p6

    mul-double v16, v4, v8

    mul-double v18, v2, v6

    sub-double v18, v14, v18

    mul-double v4, v4, v6

    sub-double v18, v18, v4

    mul-double v2, v2, v8

    sub-double v18, v18, v2

    sub-double v16, v16, v18

    mul-double v2, p8, v0

    sub-double v4, v2, p8

    sub-double/2addr v2, v4

    sub-double v4, p8, v2

    mul-double v6, p10, v0

    sub-double v8, v6, p10

    sub-double/2addr v6, v8

    sub-double v8, p10, v6

    mul-double v18, p8, p10

    mul-double v20, v4, v8

    mul-double v22, v2, v6

    sub-double v22, v18, v22

    mul-double v4, v4, v6

    sub-double v22, v22, v4

    mul-double v2, v2, v8

    sub-double v22, v22, v2

    sub-double v20, v20, v22

    mul-double v2, p12, v0

    sub-double v4, v2, p12

    sub-double/2addr v2, v4

    sub-double v4, p12, v2

    mul-double v0, v0, p14

    sub-double v6, v0, p14

    sub-double/2addr v0, v6

    sub-double v6, p14, v0

    mul-double v8, p12, p14

    mul-double v22, v4, v6

    mul-double v24, v2, v0

    sub-double v24, v8, v24

    mul-double v4, v4, v0

    sub-double v24, v24, v4

    mul-double v2, v2, v6

    sub-double v24, v24, v2

    sub-double v22, v22, v24

    add-double v0, v10, v14

    sub-double v2, v0, v14

    sub-double v4, v0, v2

    sub-double/2addr v14, v4

    sub-double/2addr v10, v2

    add-double/2addr v14, v10

    add-double v2, v0, v18

    sub-double v4, v2, v18

    sub-double v6, v2, v4

    sub-double v18, v18, v6

    sub-double/2addr v0, v4

    add-double v18, v18, v0

    add-double v0, v2, v8

    sub-double v4, v0, v8

    sub-double v6, v0, v4

    sub-double/2addr v8, v6

    sub-double/2addr v2, v4

    add-double/2addr v8, v2

    add-double v12, v12, v16

    add-double v12, v12, v20

    add-double v12, v12, v22

    add-double/2addr v12, v14

    add-double v12, v12, v18

    add-double/2addr v12, v8

    add-double/2addr v12, v0

    .line 1165
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    return-wide v12
.end method

.method public static linearCombination([D[D)D
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 820
    array-length v2, v0

    .line 821
    array-length v3, v1

    if-ne v2, v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 827
    aget-wide v4, v0, v3

    aget-wide v0, v1, v3

    mul-double v4, v4, v0

    return-wide v4

    .line 830
    :cond_0
    new-array v5, v2, [D

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_1

    .line 834
    aget-wide v11, v0, v8

    const-wide v13, 0x41a0000002000000L    # 1.34217729E8

    mul-double v15, v11, v13

    sub-double v17, v15, v11

    sub-double v15, v15, v17

    sub-double v17, v11, v15

    .line 839
    aget-wide v19, v1, v8

    mul-double v13, v13, v19

    sub-double v21, v13, v19

    sub-double v13, v13, v21

    sub-double v21, v19, v13

    mul-double v11, v11, v19

    .line 843
    aput-wide v11, v5, v8

    mul-double v19, v17, v21

    mul-double v23, v15, v13

    sub-double v11, v11, v23

    mul-double v17, v17, v13

    sub-double v11, v11, v17

    mul-double v15, v15, v21

    sub-double/2addr v11, v15

    sub-double v19, v19, v11

    add-double v9, v9, v19

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 852
    :cond_1
    aget-wide v11, v5, v3

    .line 853
    aget-wide v13, v5, v4

    add-double v15, v11, v13

    sub-double v17, v15, v13

    sub-double v19, v15, v17

    sub-double v13, v13, v19

    sub-double v11, v11, v17

    add-double/2addr v13, v11

    add-int/lit8 v8, v2, -0x1

    :goto_1
    if-ge v4, v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 860
    aget-wide v11, v5, v4

    add-double v17, v15, v11

    sub-double v19, v17, v11

    sub-double v21, v17, v19

    sub-double v11, v11, v21

    sub-double v15, v15, v19

    add-double/2addr v11, v15

    add-double/2addr v13, v11

    move-wide/from16 v15, v17

    goto :goto_1

    :cond_2
    add-double/2addr v9, v13

    add-double/2addr v15, v9

    .line 869
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    if-ge v3, v2, :cond_3

    .line 874
    aget-wide v4, v0, v3

    aget-wide v8, v1, v3

    mul-double v4, v4, v8

    add-double/2addr v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-wide v6

    :cond_4
    return-wide v15

    .line 822
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static natural(I)[I
    .locals 2

    .line 1545
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1547
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static normalizeArray([DD)[D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1301
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 1304
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1308
    array-length v0, p0

    .line 1309
    new-array v2, v0, [D

    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 1311
    aget-wide v8, p0, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1314
    aget-wide v8, p0, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1315
    aget-wide v8, p0, v5

    add-double/2addr v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1312
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-wide v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const/4 p0, 0x1

    aput-object v0, v2, p0

    invoke-direct {p1, p2, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    cmpl-double v5, v6, v3

    if-eqz v5, :cond_5

    :goto_1
    if-ge v1, v0, :cond_4

    .line 1322
    aget-wide v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 1323
    aput-wide v3, v2, v1

    goto :goto_2

    .line 1325
    :cond_3
    aget-wide v3, p0, v1

    mul-double v3, v3, p1

    div-double/2addr v3, v6

    aput-wide v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    .line 1319
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SUMS_TO_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 1305
    :cond_6
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 1302
    :cond_7
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORMALIZE_INFINITE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static safeNorm([D)D
    .locals 23

    move-object/from16 v0, p0

    .line 594
    array-length v1, v0

    int-to-double v1, v1

    const-wide v3, 0x43e69eec5d27e300L    # 1.304E19

    div-double/2addr v3, v1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 596
    :goto_0
    array-length v1, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    if-ge v5, v1, :cond_6

    .line 597
    aget-wide v1, v0, v5

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    const-wide v20, 0x3be6a1c6e8d98029L    # 3.834E-20

    cmpg-double v22, v1, v20

    if-ltz v22, :cond_1

    cmpl-double v22, v1, v3

    if-lez v22, :cond_0

    goto :goto_1

    :cond_0
    mul-double v1, v1, v1

    add-double/2addr v8, v1

    goto :goto_2

    :cond_1
    :goto_1
    cmpl-double v22, v1, v20

    if-lez v22, :cond_3

    cmpl-double v20, v1, v10

    if-lez v20, :cond_2

    div-double/2addr v10, v1

    mul-double v6, v6, v10

    mul-double v6, v6, v10

    add-double v6, v6, v18

    move-wide v10, v1

    goto :goto_2

    :cond_2
    div-double/2addr v1, v10

    mul-double v1, v1, v1

    add-double/2addr v6, v1

    goto :goto_2

    :cond_3
    cmpl-double v20, v1, v12

    if-lez v20, :cond_4

    div-double/2addr v12, v1

    mul-double v14, v14, v12

    mul-double v14, v14, v12

    add-double v14, v14, v18

    move-wide v12, v1

    goto :goto_2

    :cond_4
    cmpl-double v18, v1, v16

    if-eqz v18, :cond_5

    div-double/2addr v1, v12

    mul-double v1, v1, v1

    add-double/2addr v14, v1

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    cmpl-double v0, v6, v16

    if-eqz v0, :cond_7

    div-double/2addr v8, v10

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 626
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v10, v10, v0

    return-wide v10

    :cond_7
    cmpl-double v0, v8, v16

    if-nez v0, :cond_8

    .line 629
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v12, v12, v0

    return-wide v12

    :cond_8
    cmpl-double v0, v8, v12

    if-ltz v0, :cond_9

    div-double v0, v12, v8

    mul-double v12, v12, v14

    mul-double v0, v0, v12

    add-double v0, v0, v18

    mul-double v8, v8, v0

    .line 632
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_9
    div-double/2addr v8, v12

    mul-double v14, v14, v12

    add-double/2addr v8, v14

    mul-double v12, v12, v8

    .line 634
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static scale(D[D)[D
    .locals 4

    .line 90
    array-length v0, p2

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 91
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 92
    aget-wide v2, p2, v1

    mul-double v2, v2, p0

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static scaleInPlace(D[D)V
    .locals 3

    const/4 v0, 0x0

    .line 107
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 108
    aget-wide v1, p2, v0

    mul-double v1, v1, p0

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shuffle([I)V
    .locals 1

    .line 1534
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;)V
    .locals 1

    .line 1456
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public static shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 3

    .line 1477
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$Position:[I

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/MathArrays$Position;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-gt p2, p1, :cond_4

    if-ne p2, p1, :cond_0

    move v0, p1

    goto :goto_1

    .line 1500
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v0, p3, p2, p1}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v0

    .line 1502
    :goto_1
    aget v1, p0, v0

    .line 1503
    aget v2, p0, p2

    aput v2, p0, v0

    .line 1504
    aput v1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1509
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    .line 1479
    :cond_2
    array-length p2, p0

    sub-int/2addr p2, v0

    :goto_2
    if-lt p2, p1, :cond_4

    if-ne p2, p1, :cond_3

    move v0, p1

    goto :goto_3

    .line 1485
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result v0

    .line 1487
    :goto_3
    aget v1, p0, v0

    .line 1488
    aget v2, p0, p2

    aput v2, p0, v0

    .line 1489
    aput v1, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2

    const/4 v0, 0x0

    .line 1523
    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([IILorg/apache/commons/math3/util/MathArrays$Position;Lorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public static varargs sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 690
    array-length v0, p2

    .line 691
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 694
    aget-object v4, p2, v3

    if-eqz v4, :cond_1

    .line 698
    array-length v5, v4

    if-ne v5, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 699
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, v4

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    .line 696
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0

    .line 704
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 707
    new-instance v5, Lorg/apache/commons/math3/util/Pair;

    aget-wide v6, p0, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 711
    :cond_3
    sget-object v4, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    if-ne p1, v4, :cond_4

    new-instance p1, Lorg/apache/commons/math3/util/MathArrays$1;

    invoke-direct {p1}, Lorg/apache/commons/math3/util/MathArrays$1;-><init>()V

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/apache/commons/math3/util/MathArrays$2;

    invoke-direct {p1}, Lorg/apache/commons/math3/util/MathArrays$2;-><init>()V

    .line 726
    :goto_2
    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 731
    new-array p1, v1, [I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_5

    .line 733
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/util/Pair;

    .line 734
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, p0, v4

    .line 735
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    :goto_4
    if-ge p0, v0, :cond_7

    .line 742
    aget-object v3, p2, p0

    .line 743
    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_6

    .line 746
    aget v6, p1, v5

    aget-wide v6, v4, v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_7
    return-void

    .line 687
    :cond_8
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static varargs sortInPlace([D[[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 659
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V

    return-void
.end method

.method public static verifyValues([DII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1573
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result p0

    return p0
.end method

.method public static verifyValues([DIIZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    add-int/2addr p1, p2

    .line 1612
    array-length v1, p0

    const/4 v2, 0x1

    if-gt p1, v1, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return v0

    :cond_0
    return v2

    .line 1613
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SUBARRAY_ENDS_AFTER_ARRAY_END:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p3, p1, p0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 1609
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 1605
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 1601
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static verifyValues([D[DII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1659
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([D[DIIZ)Z

    move-result p0

    return p0
.end method

.method public static verifyValues([D[DIIZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p0, :cond_7

    .line 1702
    array-length v1, p1

    array-length v2, p0

    if-ne v1, v2, :cond_6

    move v1, p2

    const/4 v2, 0x0

    :goto_0
    add-int v3, p2, p3

    if-ge v1, v3, :cond_4

    .line 1708
    aget-wide v3, p1, v1

    .line 1709
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 1712
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    const/4 v7, 0x2

    if-nez v5, :cond_2

    const-wide/16 v8, 0x0

    cmpg-double v5, v3, v8

    if-ltz v5, :cond_1

    if-nez v2, :cond_0

    cmpl-double v5, v3, v8

    if-lez v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1716
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    new-array p4, v7, [Ljava/lang/Object;

    aput-object p2, p4, v0

    aput-object p3, p4, v6

    invoke-direct {p0, p1, p4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 1713
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, v7, [Ljava/lang/Object;

    aput-object p2, p4, v0

    aput-object p3, p4, v6

    invoke-direct {p0, p1, p4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 1710
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_ELEMENT_AT_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_4
    if-eqz v2, :cond_5

    .line 1727
    invoke-static {p0, p2, p3, p4}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DIIZ)Z

    move-result p0

    return p0

    .line 1724
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WEIGHT_AT_LEAST_ONE_NON_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 1703
    :cond_6
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p0, p0

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 1699
    :cond_7
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method
