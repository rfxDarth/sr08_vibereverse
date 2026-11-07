.class public Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;
.super Ljava/lang/Object;
.source "LoessInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_ACCURACY:D = 1.0E-12

.field public static final DEFAULT_BANDWIDTH:D = 0.3

.field public static final DEFAULT_ROBUSTNESS_ITERS:I = 0x2

.field private static final serialVersionUID:J = 0x483b9da904604c5dL


# instance fields
.field private final accuracy:D

.field private final bandwidth:D

.field private final robustnessIters:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 96
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 98
    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 124
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_1

    .line 155
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    if-ltz p3, :cond_0

    .line 159
    iput p3, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    .line 160
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    return-void

    .line 157
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROBUSTNESS_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 153
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p3, p4, p1, p2, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p3
.end method

.method private static checkAllFiniteReal([D)V
    .locals 3

    const/4 v0, 0x0

    .line 470
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 471
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkFinite(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static nextNonzero([DI)I
    .locals 5

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 439
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static tricube(D)D
    .locals 4

    .line 454
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    sub-double/2addr v0, v2

    mul-double p0, v0, v0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static updateBandwidthInterval([D[DI[I)V
    .locals 10

    const/4 v0, 0x0

    .line 416
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 417
    aget v3, p3, v2

    .line 421
    invoke-static {p1, v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result v3

    .line 422
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-wide v4, p0, v3

    aget-wide v6, p0, p2

    sub-double/2addr v4, v6

    aget-wide v8, p0, v1

    sub-double/2addr v6, v8

    cmpg-double p0, v4, v6

    if-gez p0, :cond_0

    .line 423
    aget p0, p3, v0

    invoke-static {p1, p0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->nextNonzero([DI)I

    move-result p0

    .line 424
    aput p0, p3, v0

    .line 425
    aput v3, p3, v2

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public final interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D)[D

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public final smooth([D[D)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 388
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 392
    array-length v0, p1

    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 393
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 395
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->smooth([D[D[D)[D

    move-result-object p1

    return-object p1

    .line 389
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public final smooth([D[D[D)[D
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 221
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_f

    .line 225
    array-length v4, v1

    if-eqz v4, :cond_e

    .line 231
    invoke-static {v1}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 232
    invoke-static {v2}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 233
    invoke-static {v3}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->checkAllFiniteReal([D)V

    .line 235
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 238
    aget-wide v1, v2, v5

    new-array v3, v6, [D

    aput-wide v1, v3, v5

    return-object v3

    :cond_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 242
    aget-wide v3, v2, v5

    aget-wide v1, v2, v6

    new-array v7, v7, [D

    aput-wide v3, v7, v5

    aput-wide v1, v7, v6

    return-object v7

    .line 245
    :cond_1
    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->bandwidth:D

    int-to-double v10, v4

    mul-double v8, v8, v10

    double-to-int v8, v8

    if-lt v8, v7, :cond_d

    .line 252
    new-array v7, v4, [D

    .line 254
    new-array v9, v4, [D

    .line 255
    new-array v10, v4, [D

    .line 257
    new-array v11, v4, [D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 262
    invoke-static {v11, v12, v13}, Ljava/util/Arrays;->fill([DD)V

    const/4 v14, 0x0

    .line 264
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-gt v14, v15, :cond_c

    add-int/lit8 v15, v8, -0x1

    .line 265
    filled-new-array {v5, v15}, [I

    move-result-object v15

    move-wide/from16 v16, v12

    const/4 v12, 0x0

    :goto_1
    const-wide/16 v18, 0x0

    if-ge v12, v4, :cond_7

    .line 268
    aget-wide v20, v1, v12

    if-lez v12, :cond_2

    .line 273
    invoke-static {v1, v3, v12, v15}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->updateBandwidthInterval([D[DI[I)V

    .line 276
    :cond_2
    aget v13, v15, v5

    const/16 v22, 0x1

    .line 277
    aget v6, v15, v22

    .line 282
    aget-wide v23, v1, v12

    aget-wide v25, v1, v13

    sub-double v25, v23, v25

    aget-wide v27, v1, v6

    sub-double v27, v27, v23

    cmpl-double v23, v25, v27

    if-lez v23, :cond_3

    move/from16 v23, v13

    goto :goto_2

    :cond_3
    move/from16 v23, v6

    .line 300
    :goto_2
    aget-wide v23, v1, v23

    sub-double v23, v23, v20

    div-double v23, v16, v23

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    :goto_3
    if-gt v13, v6, :cond_5

    .line 302
    aget-wide v35, v1, v13

    .line 303
    aget-wide v37, v2, v13

    if-ge v13, v12, :cond_4

    sub-double v39, v20, v35

    goto :goto_4

    :cond_4
    sub-double v39, v35, v20

    :goto_4
    mul-double v39, v39, v23

    .line 305
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->tricube(D)D

    move-result-wide v39

    aget-wide v41, v11, v13

    mul-double v39, v39, v41

    aget-wide v41, v3, v13

    mul-double v39, v39, v41

    mul-double v41, v35, v39

    add-double v27, v27, v39

    add-double v25, v25, v41

    mul-double v35, v35, v41

    add-double v33, v33, v35

    mul-double v39, v39, v37

    add-double v29, v29, v39

    mul-double v37, v37, v41

    add-double v31, v31, v37

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    div-double v25, v25, v27

    div-double v29, v29, v27

    div-double v31, v31, v27

    div-double v33, v33, v27

    mul-double v23, v25, v25

    sub-double v33, v33, v23

    .line 320
    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v23

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v27, v23, v5

    if-gez v27, :cond_6

    goto :goto_5

    :cond_6
    mul-double v5, v25, v29

    sub-double v31, v31, v5

    div-double v18, v31, v33

    :goto_5
    mul-double v25, v25, v18

    sub-double v29, v29, v25

    mul-double v18, v18, v20

    add-double v18, v18, v29

    .line 328
    aput-wide v18, v7, v12

    .line 329
    aget-wide v5, v2, v12

    sub-double v5, v5, v18

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    aput-wide v5, v9, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v22, 0x1

    .line 334
    iget v5, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->robustnessIters:I

    if-ne v14, v5, :cond_8

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    .line 343
    invoke-static {v9, v13, v10, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    invoke-static {v10}, Ljava/util/Arrays;->sort([D)V

    .line 345
    div-int/lit8 v5, v4, 0x2

    aget-wide v5, v10, v5

    .line 347
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    move v12, v14

    iget-wide v13, v0, Lorg/apache/commons/math3/analysis/interpolation/LoessInterpolator;->accuracy:D

    cmpg-double v23, v20, v13

    if-gez v23, :cond_9

    goto :goto_8

    :cond_9
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v4, :cond_b

    .line 352
    aget-wide v20, v9, v13

    const-wide/high16 v23, 0x4018000000000000L    # 6.0

    mul-double v23, v23, v5

    div-double v20, v20, v23

    cmpl-double v14, v20, v16

    if-ltz v14, :cond_a

    .line 354
    aput-wide v18, v11, v13

    goto :goto_7

    :cond_a
    mul-double v20, v20, v20

    sub-double v20, v16, v20

    mul-double v20, v20, v20

    .line 357
    aput-wide v20, v11, v13

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v14, v12, 0x1

    move-wide/from16 v12, v16

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_8
    return-object v7

    :cond_d
    const/16 v22, 0x1

    .line 248
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BANDWIDTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 228
    :cond_e
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1

    .line 222
    :cond_f
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v2

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3
.end method
