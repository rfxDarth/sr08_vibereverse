.class public Lorg/apache/commons/math3/stat/inference/ChiSquareTest;
.super Ljava/lang/Object;
.source "ChiSquareTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkArray([[J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 588
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 592
    aget-object v2, p1, v0

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 596
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkRectangular([[J)V

    .line 597
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([[J)V

    return-void

    .line 593
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v0

    array-length p1, p1

    invoke-direct {v2, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 589
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public chiSquare([D[J)D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 85
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 88
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_4

    .line 91
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 92
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    const/4 v3, 0x0

    .line 96
    :goto_0
    array-length v8, p2

    if-ge v3, v8, :cond_0

    .line 97
    aget-wide v8, p1, v3

    add-double/2addr v4, v8

    .line 98
    aget-wide v8, p2, v3

    long-to-double v8, v8

    add-double/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sub-double v8, v4, v6

    .line 102
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v3, v8, v10

    if-lez v3, :cond_1

    div-double/2addr v6, v4

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    .line 107
    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_3

    if-eqz v3, :cond_2

    .line 109
    aget-wide v4, p2, v0

    long-to-double v4, v4

    aget-wide v8, p1, v0

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    mul-double v4, v4, v4

    mul-double v8, v8, v6

    goto :goto_2

    .line 112
    :cond_2
    aget-wide v4, p2, v0

    long-to-double v4, v4

    aget-wide v8, p1, v0

    sub-double/2addr v4, v8

    mul-double v4, v4, v4

    :goto_2
    div-double/2addr v4, v8

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-wide v1

    .line 89
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 86
    :cond_5
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p2, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method

.method public chiSquare([[J)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 248
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->checkArray([[J)V

    .line 249
    array-length v1, v0

    const/4 v2, 0x0

    .line 250
    aget-object v3, v0, v2

    array-length v3, v3

    .line 253
    new-array v4, v1, [D

    .line 254
    new-array v5, v3, [D

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    :goto_0
    if-ge v8, v1, :cond_1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v3, :cond_0

    .line 258
    aget-wide v12, v4, v8

    aget-object v14, v0, v8

    aget-wide v6, v14, v11

    move/from16 v17, v3

    long-to-double v2, v6

    add-double/2addr v12, v2

    aput-wide v12, v4, v8

    .line 259
    aget-wide v2, v5, v11

    long-to-double v12, v6

    add-double/2addr v2, v12

    aput-wide v2, v5, v11

    long-to-double v2, v6

    add-double/2addr v9, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    move/from16 v17, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    :goto_2
    move/from16 v17, v3

    if-ge v2, v1, :cond_3

    move/from16 v3, v17

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_2

    .line 269
    aget-wide v11, v4, v2

    aget-wide v15, v5, v8

    mul-double v11, v11, v15

    div-double/2addr v11, v9

    .line 270
    aget-object v13, v0, v2

    aget-wide v14, v13, v8

    move v13, v1

    long-to-double v0, v14

    sub-double/2addr v0, v11

    long-to-double v14, v14

    sub-double/2addr v14, v11

    mul-double v0, v0, v14

    div-double/2addr v0, v11

    add-double/2addr v6, v0

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    move v1, v13

    goto :goto_3

    :cond_2
    move v13, v1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    goto :goto_2

    :cond_3
    return-wide v6
.end method

.method public chiSquareDataSetsComparison([J[J)D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 414
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    .line 417
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_8

    .line 422
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 423
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    move-wide v8, v6

    const/4 v5, 0x0

    .line 430
    :goto_0
    array-length v10, v0

    if-ge v5, v10, :cond_0

    .line 431
    aget-wide v10, v0, v5

    add-long/2addr v6, v10

    .line 432
    aget-wide v10, v1, v5

    add-long/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    cmp-long v5, v6, v3

    if-eqz v5, :cond_7

    cmp-long v5, v8, v3

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v10, :cond_2

    long-to-double v6, v6

    long-to-double v8, v8

    div-double/2addr v6, v8

    .line 441
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v11

    :goto_2
    const/4 v8, 0x0

    .line 448
    :goto_3
    array-length v9, v0

    if-ge v8, v9, :cond_6

    .line 449
    aget-wide v13, v0, v8

    cmp-long v9, v13, v3

    if-nez v9, :cond_4

    aget-wide v15, v1, v8

    cmp-long v9, v15, v3

    if-eqz v9, :cond_3

    goto :goto_4

    .line 450
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_4
    long-to-double v13, v13

    .line 453
    aget-wide v2, v1, v8

    long-to-double v2, v2

    if-eqz v10, :cond_5

    div-double v17, v13, v6

    mul-double v19, v2, v6

    sub-double v17, v17, v19

    goto :goto_5

    :cond_5
    sub-double v17, v13, v2

    :goto_5
    mul-double v17, v17, v17

    add-double/2addr v13, v2

    div-double v17, v17, v13

    add-double v11, v11, v17

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    goto :goto_3

    :cond_6
    return-wide v11

    .line 436
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0

    .line 418
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 415
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public chiSquareTest([D[J)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 161
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([D[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    return-wide v3
.end method

.method public chiSquareTest([[J)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->checkArray([[J)V

    .line 314
    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    int-to-double v4, v4

    sub-double/2addr v4, v2

    mul-double v0, v0, v4

    .line 316
    new-instance v4, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 317
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([[J)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public chiSquareTest([D[JD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    cmpg-double v5, p3, v0

    if-lez v5, :cond_1

    cmpl-double v0, p3, v2

    if-gtz v0, :cond_1

    .line 212
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([D[J)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v4

    .line 209
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public chiSquareTest([[JD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    cmpg-double v5, p2, v0

    if-lez v5, :cond_1

    cmpl-double v0, p2, v2

    if-gtz v0, :cond_1

    .line 367
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([[J)D

    move-result-wide v0

    cmpg-double p1, v0, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v4

    .line 364
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p1, v0, p2, p3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public chiSquareTestDataSetsComparison([J[J)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 512
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareDataSetsComparison([J[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    return-wide v3
.end method

.method public chiSquareTestDataSetsComparison([J[JD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    cmpg-double v5, p3, v0

    if-lez v5, :cond_1

    cmpl-double v0, p3, v2

    if-gtz v0, :cond_1

    .line 571
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTestDataSetsComparison([J[J)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v4

    .line 568
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method
