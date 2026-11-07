.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextIndex(II)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method private previousIndex(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 43
    array-length v1, v2

    if-eqz v1, :cond_c

    array-length v1, v3

    if-eqz v1, :cond_c

    array-length v1, v4

    if-eqz v1, :cond_c

    .line 46
    array-length v1, v2

    array-length v5, v4

    if-ne v1, v5, :cond_b

    .line 50
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 51
    invoke-static {v3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 53
    array-length v1, v2

    .line 54
    array-length v5, v3

    const/4 v6, 0x2

    .line 60
    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v1, v7, v8

    const/4 v9, 0x0

    aput v5, v7, v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_2

    .line 62
    aget-object v11, v4, v10

    array-length v11, v11

    if-ne v11, v5, :cond_1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_0

    .line 67
    aget-object v12, v7, v11

    aget-object v13, v4, v10

    aget-wide v14, v13, v11

    aput-wide v14, v12, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v4, v10

    array-length v2, v2

    invoke-direct {v1, v2, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 71
    :cond_2
    new-instance v10, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v10}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    .line 75
    new-array v11, v5, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_3

    .line 77
    aget-object v13, v7, v12

    invoke-virtual {v10, v2, v13}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 82
    :cond_3
    new-array v7, v1, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v1, :cond_4

    .line 84
    aget-object v13, v4, v12

    invoke-virtual {v10, v3, v13}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v13

    aput-object v13, v7, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 88
    :cond_4
    new-array v10, v6, [I

    aput v5, v10, v8

    aput v1, v10, v9

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v5, :cond_6

    .line 90
    aget-object v13, v11, v12

    invoke-virtual {v13}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v1, :cond_5

    .line 92
    aget-object v15, v10, v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    aget-wide v8, v2, v14

    invoke-interface {v13, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v8

    aput-wide v8, v15, v12

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    const/16 v16, 0x1

    const/16 v17, 0x0

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 97
    new-array v8, v6, [I

    aput v5, v8, v16

    aput v1, v8, v17

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v1, :cond_8

    .line 99
    aget-object v11, v7, v9

    invoke-virtual {v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v11

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v5, :cond_7

    .line 101
    aget-object v13, v8, v9

    aget-wide v14, v3, v12

    invoke-interface {v11, v14, v15}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v14

    aput-wide v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 106
    :cond_8
    new-array v6, v6, [I

    aput v5, v6, v16

    aput v1, v6, v17

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, [[D

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v1, :cond_a

    .line 108
    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v9

    .line 109
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v11

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v5, :cond_9

    .line 111
    invoke-direct {v0, v12, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v13

    .line 112
    invoke-direct {v0, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v14

    .line 113
    aget-object v15, v7, v6

    aget-object v16, v4, v9

    aget-wide v18, v16, v13

    aget-wide v20, v16, v14

    sub-double v18, v18, v20

    aget-object v16, v4, v11

    aget-wide v20, v16, v13

    sub-double v18, v18, v20

    aget-wide v20, v16, v14

    add-double v18, v18, v20

    aget-wide v20, v2, v9

    aget-wide v22, v2, v11

    sub-double v20, v20, v22

    aget-wide v22, v3, v13

    aget-wide v13, v3, v14

    sub-double v22, v22, v13

    mul-double v20, v20, v22

    div-double v18, v18, v20

    aput-wide v18, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 120
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-object v6, v8

    move-object v5, v10

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[D)V

    return-object v1

    .line 47
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v2

    array-length v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 44
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method
