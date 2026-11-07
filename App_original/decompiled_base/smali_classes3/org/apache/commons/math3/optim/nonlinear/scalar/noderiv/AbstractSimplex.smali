.class public abstract Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;
.super Ljava/lang/Object;
.source "AbstractSimplex.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final dimension:I

.field private simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

.field private startConfiguration:[[D


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 65
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>(ID)V

    return-void
.end method

.method protected constructor <init>(ID)V
    .locals 0

    .line 76
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->createHypercubeSteps(ID)[D

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;-><init>([D)V

    return-void
.end method

.method protected constructor <init>([D)V
    .locals 9

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 101
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 104
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    const/4 v1, 0x2

    .line 108
    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v0, v1, :cond_2

    .line 110
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    aget-object v1, v1, v0

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-ge v3, v4, :cond_1

    .line 112
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 115
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 113
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EQUAL_VERTICES_IN_SIMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    return-void

    .line 102
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw p1

    .line 99
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method protected constructor <init>([[D)V
    .locals 14

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    array-length v0, p1

    if-lez v0, :cond_6

    .line 137
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    const/4 v2, 0x2

    .line 141
    new-array v3, v2, [I

    aput v0, v3, v1

    const/4 v4, 0x0

    aput v0, v3, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    .line 142
    aget-object v0, p1, v4

    const/4 v3, 0x0

    .line 145
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_5

    .line 146
    aget-object v5, p1, v3

    .line 149
    array-length v6, v5

    iget v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ne v6, v7, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    .line 153
    aget-object v7, p1, v6

    const/4 v8, 0x0

    .line 155
    :goto_2
    iget v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v8, v9, :cond_1

    .line 156
    aget-wide v9, v5, v8

    aget-wide v11, v7, v8

    cmpl-double v13, v9, v11

    if-eqz v13, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 162
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EQUAL_VERTICES_IN_SIMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    aput-object v5, v2, v1

    invoke-direct {p1, v0, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    if-lez v3, :cond_3

    .line 169
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    .line 170
    :goto_3
    iget v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v7, v8, :cond_3

    .line 171
    aget-wide v8, v5, v7

    aget-wide v10, v0, v7

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v5

    iget v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_5
    return-void

    .line 134
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLEX_NEED_ONE_POINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method private static createHypercubeSteps(ID)[D
    .locals 2

    .line 340
    new-array v0, p0, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 342
    aput-wide p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public build([D)V
    .locals 11

    .line 217
    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    array-length v1, p1

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 222
    new-array v0, v0, [Lorg/apache/commons/math3/optim/PointValuePair;

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    .line 223
    new-instance v1, Lorg/apache/commons/math3/optim/PointValuePair;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v0, 0x0

    .line 226
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v0, v1, :cond_1

    .line 227
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->startConfiguration:[[D

    aget-object v5, v5, v0

    .line 228
    new-array v1, v1, [D

    const/4 v6, 0x0

    .line 229
    :goto_1
    iget v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v6, v7, :cond_0

    .line 230
    aget-wide v7, p1, v6

    aget-wide v9, v5, v6

    add-double/2addr v7, v9

    aput-wide v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 232
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    add-int/lit8 v0, v0, 0x1

    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v6, v1, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    aput-object v6, v5, v0

    goto :goto_0

    :cond_1
    return-void

    .line 218
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    array-length p1, p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 247
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 248
    aget-object v2, v2, v1

    .line 249
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/PointValuePair;->getPointRef()[D

    move-result-object v3

    .line 250
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    new-instance v4, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v5

    invoke-direct {v4, v3, v5, v6, v0}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    aput-object v4, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {v2, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public getDimension()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    return v0
.end method

.method public getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 3

    if-ltz p1, :cond_0

    .line 296
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 300
    aget-object p1, v0, p1

    return-object p1

    .line 298
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 4

    .line 284
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/math3/optim/PointValuePair;

    const/4 v2, 0x0

    .line 285
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v0, v0

    return v0
.end method

.method public abstract iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation
.end method

.method protected replaceWorstPoint(Lorg/apache/commons/math3/optim/PointValuePair;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 268
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->dimension:I

    if-ge v0, v1, :cond_1

    .line 269
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aget-object v1, v1, v0

    invoke-interface {p2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 270
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aget-object v2, v1, v0

    .line 271
    aput-object p1, v1, v0

    move-object p1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    aput-object p1, p2, v1

    return-void
.end method

.method protected setPoint(ILorg/apache/commons/math3/optim/PointValuePair;)V
    .locals 2

    if-ltz p1, :cond_0

    .line 311
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 315
    aput-object p2, v0, p1

    return-void

    .line 313
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method protected setPoints([Lorg/apache/commons/math3/optim/PointValuePair;)V
    .locals 2

    .line 325
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 328
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    return-void

    .line 326
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->simplex:[Lorg/apache/commons/math3/optim/PointValuePair;

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
