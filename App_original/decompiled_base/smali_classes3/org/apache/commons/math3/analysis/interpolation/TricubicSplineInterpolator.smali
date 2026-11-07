.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;
.super Ljava/lang/Object;
.source "TricubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
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
.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 42
    array-length v1, v2

    if-eqz v1, :cond_15

    array-length v1, v3

    if-eqz v1, :cond_15

    array-length v1, v4

    if-eqz v1, :cond_15

    array-length v1, v5

    if-eqz v1, :cond_15

    .line 45
    array-length v1, v2

    array-length v6, v5

    if-ne v1, v6, :cond_14

    .line 49
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 50
    invoke-static {v3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 51
    invoke-static {v4}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 53
    array-length v1, v2

    .line 54
    array-length v6, v3

    .line 55
    array-length v7, v4

    const/4 v8, 0x3

    .line 60
    new-array v9, v8, [I

    const/4 v10, 0x2

    aput v6, v9, v10

    const/4 v11, 0x1

    aput v1, v9, v11

    const/4 v12, 0x0

    aput v7, v9, v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[D

    .line 61
    new-array v13, v8, [I

    aput v1, v13, v10

    aput v7, v13, v11

    aput v6, v13, v12

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[D

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v1, :cond_4

    .line 63
    aget-object v15, v5, v14

    array-length v15, v15

    if-ne v15, v6, :cond_3

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v6, :cond_2

    .line 68
    aget-object v16, v5, v14

    const/16 v17, 0x2

    aget-object v10, v16, v15

    array-length v10, v10

    if-ne v10, v7, :cond_1

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_0

    .line 73
    aget-object v16, v5, v14

    aget-object v16, v16, v15

    aget-wide v18, v16, v10

    .line 74
    aget-object v16, v9, v10

    aget-object v16, v16, v14

    aput-wide v18, v16, v15

    .line 75
    aget-object v16, v13, v15

    aget-object v16, v16, v10

    aput-wide v18, v16, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x2

    goto :goto_1

    .line 69
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v14

    aget-object v2, v2, v15

    array-length v2, v2

    invoke-direct {v1, v2, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    const/16 v17, 0x2

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x2

    goto :goto_0

    .line 64
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v14

    array-length v2, v2

    invoke-direct {v1, v2, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_4
    const/16 v17, 0x2

    .line 80
    new-instance v10, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;

    invoke-direct {v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>()V

    .line 83
    new-array v14, v1, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v1, :cond_5

    const/16 v16, 0x1

    .line 86
    aget-object v11, v5, v15

    invoke-virtual {v10, v3, v4, v11}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v11

    aput-object v11, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x1

    .line 90
    new-array v11, v6, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v6, :cond_6

    const/16 v18, 0x0

    .line 93
    aget-object v12, v13, v15

    invoke-virtual {v10, v4, v2, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v12

    aput-object v12, v11, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    .line 97
    new-array v12, v7, [Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v7, :cond_7

    .line 100
    aget-object v15, v9, v13

    invoke-virtual {v10, v2, v3, v15}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v15

    aput-object v15, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 104
    :cond_7
    new-array v9, v8, [I

    aput v7, v9, v17

    aput v6, v9, v16

    aput v1, v9, v18

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[D

    .line 105
    new-array v10, v8, [I

    aput v7, v10, v17

    aput v6, v10, v16

    aput v1, v10, v18

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[D

    .line 106
    new-array v13, v8, [I

    aput v7, v13, v17

    aput v6, v13, v16

    aput v1, v13, v18

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[D

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v7, :cond_a

    .line 108
    aget-object v8, v12, v15

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_9

    move/from16 v20, v2

    .line 110
    aget-wide v2, p1, v20

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v6, :cond_8

    move/from16 v21, v4

    .line 112
    aget-wide v4, p2, v21

    .line 113
    aget-object v22, v9, v20

    aget-object v22, v22, v21

    invoke-virtual {v8, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeX(DD)D

    move-result-wide v23

    aput-wide v23, v22, v15

    .line 114
    aget-object v22, v10, v20

    aget-object v22, v22, v21

    invoke-virtual {v8, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v23

    aput-wide v23, v22, v15

    .line 115
    aget-object v22, v13, v20

    aget-object v22, v22, v21

    invoke-virtual {v8, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v4

    aput-wide v4, v22, v15

    add-int/lit8 v4, v21, 0x1

    move-object/from16 v5, p4

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    goto :goto_7

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v8, 0x3

    goto :goto_6

    :cond_a
    const/4 v2, 0x3

    .line 121
    new-array v3, v2, [I

    aput v7, v3, v17

    aput v6, v3, v16

    aput v1, v3, v18

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [[[D

    .line 122
    new-array v3, v2, [I

    aput v7, v3, v17

    aput v6, v3, v16

    aput v1, v3, v18

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[D

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_d

    .line 124
    aget-object v4, v14, v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v6, :cond_c

    move-object v12, v2

    move v15, v3

    .line 126
    aget-wide v2, p2, v5

    move/from16 v20, v5

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v7, :cond_b

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    .line 128
    aget-wide v8, p3, v5

    .line 129
    aget-object v23, v22, v15

    aget-object v23, v23, v20

    invoke-virtual {v4, v2, v3, v8, v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeY(DD)D

    move-result-wide v24

    aput-wide v24, v23, v5

    .line 130
    aget-object v23, v12, v15

    aget-object v23, v23, v20

    invoke-virtual {v4, v2, v3, v8, v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v8

    aput-wide v8, v23, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v21

    move-object/from16 v8, v22

    goto :goto_b

    :cond_b
    move-object/from16 v22, v8

    move-object/from16 v21, v9

    add-int/lit8 v5, v20, 0x1

    move-object v2, v12

    move v3, v15

    goto :goto_a

    :cond_c
    move-object v12, v2

    move v15, v3

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    add-int/lit8 v3, v15, 0x1

    goto :goto_9

    :cond_d
    move-object v12, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    const/4 v2, 0x3

    .line 136
    new-array v3, v2, [I

    aput v7, v3, v17

    aput v6, v3, v16

    aput v1, v3, v18

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[D

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v6, :cond_10

    .line 138
    aget-object v4, v11, v3

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v7, :cond_f

    .line 140
    aget-wide v8, p3, v5

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v1, :cond_e

    move-object v15, v2

    move/from16 v20, v3

    .line 142
    aget-wide v2, p1, v14

    .line 143
    aget-object v23, v15, v14

    aget-object v23, v23, v20

    invoke-virtual {v4, v8, v9, v2, v3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivativeXY(DD)D

    move-result-wide v2

    aput-wide v2, v23, v5

    add-int/lit8 v14, v14, 0x1

    move-object v2, v15

    move/from16 v3, v20

    goto :goto_e

    :cond_e
    move-object v15, v2

    move/from16 v20, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_f
    move-object v15, v2

    move/from16 v20, v3

    add-int/lit8 v3, v20, 0x1

    goto :goto_c

    :cond_10
    move-object v15, v2

    const/4 v2, 0x3

    .line 149
    new-array v2, v2, [I

    aput v7, v2, v17

    aput v6, v2, v16

    aput v1, v2, v18

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[D

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_13

    .line 151
    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v4

    .line 152
    invoke-direct {v0, v3}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v5

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v6, :cond_12

    .line 154
    invoke-direct {v0, v8, v6}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v9

    .line 155
    invoke-direct {v0, v8}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v11

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v7, :cond_11

    .line 157
    invoke-direct {v0, v14, v7}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->nextIndex(II)I

    move-result v16

    .line 158
    invoke-direct {v0, v14}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolator;->previousIndex(I)I

    move-result v17

    .line 161
    aget-object v19, v2, v3

    aget-object v19, v19, v8

    aget-object v20, p4, v4

    aget-object v23, v20, v9

    aget-wide v24, v23, v16

    aget-object v20, v20, v11

    aget-wide v26, v20, v16

    sub-double v24, v24, v26

    aget-object v26, p4, v5

    aget-object v27, v26, v9

    aget-wide v28, v27, v16

    sub-double v24, v24, v28

    aget-object v26, v26, v11

    aget-wide v28, v26, v16

    add-double v24, v24, v28

    aget-wide v28, v23, v17

    sub-double v24, v24, v28

    aget-wide v28, v20, v17

    add-double v24, v24, v28

    aget-wide v28, v27, v17

    add-double v24, v24, v28

    aget-wide v27, v26, v17

    sub-double v24, v24, v27

    aget-wide v26, p1, v4

    aget-wide v28, p1, v5

    sub-double v26, v26, v28

    aget-wide v28, p2, v9

    aget-wide v30, p2, v11

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    aget-wide v28, p3, v16

    aget-wide v16, p3, v17

    sub-double v28, v28, v16

    mul-double v26, v26, v28

    div-double v24, v24, v26

    aput-wide v24, v19, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 171
    :cond_13
    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v7, v10

    move-object v11, v12

    move-object v9, v13

    move-object v10, v15

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    move-object v12, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v2

    array-length v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 43
    :cond_15
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method
