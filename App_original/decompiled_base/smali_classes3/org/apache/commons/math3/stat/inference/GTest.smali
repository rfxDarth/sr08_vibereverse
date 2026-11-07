.class public Lorg/apache/commons/math3/stat/inference/GTest;
.super Ljava/lang/Object;
.source "GTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private entropy([J)D
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    .line 294
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    .line 295
    aget-wide v6, p1, v3

    long-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_0
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 298
    aget-wide v6, p1, v2

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    long-to-double v6, v6

    div-double/2addr v6, v4

    .line 300
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v0, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    neg-double v0, v0

    return-wide v0
.end method

.method private entropy([[J)D
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    .line 264
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_1

    const/4 v6, 0x0

    .line 265
    :goto_1
    aget-object v7, p1, v3

    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 266
    aget-wide v8, v7, v6

    long-to-double v7, v8

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 269
    :goto_2
    array-length v6, p1

    if-ge v3, v6, :cond_4

    const/4 v6, 0x0

    .line 270
    :goto_3
    aget-object v7, p1, v3

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 271
    aget-wide v8, v7, v6

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    long-to-double v7, v8

    div-double/2addr v7, v4

    .line 273
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v0, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    neg-double v0, v0

    return-wide v0
.end method


# virtual methods
.method public g([D[J)D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 81
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 84
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_4

    .line 87
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 88
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    const/4 v3, 0x0

    .line 92
    :goto_0
    array-length v8, p2

    if-ge v3, v8, :cond_0

    .line 93
    aget-wide v8, p1, v3

    add-double/2addr v4, v8

    .line 94
    aget-wide v8, p2, v3

    long-to-double v8, v8

    add-double/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sub-double v8, v4, v6

    .line 98
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

    .line 103
    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_3

    if-eqz v3, :cond_2

    .line 104
    aget-wide v4, p2, v0

    long-to-double v4, v4

    aget-wide v8, p1, v0

    mul-double v8, v8, v6

    goto :goto_2

    :cond_2
    aget-wide v4, p2, v0

    long-to-double v4, v4

    aget-wide v8, p1, v0

    :goto_2
    div-double/2addr v4, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    .line 107
    aget-wide v8, p2, v0

    long-to-double v8, v8

    mul-double v8, v8, v4

    add-double/2addr v1, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    mul-double v1, v1, p1

    return-wide v1

    .line 85
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 82
    :cond_5
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p2, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method

.method public gDataSetsComparison([J[J)D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 352
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 355
    array-length v3, v1

    array-length v5, v2

    if-ne v3, v5, :cond_4

    .line 360
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 361
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    .line 368
    array-length v3, v1

    new-array v3, v3, [J

    .line 369
    array-length v5, v1

    new-array v6, v4, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    const/4 v5, 0x0

    aput v4, v6, v5

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    const-wide/16 v8, 0x0

    move-wide v11, v8

    move-wide v13, v11

    const/4 v10, 0x0

    .line 371
    :goto_0
    array-length v15, v1

    if-ge v10, v15, :cond_2

    .line 372
    aget-wide v15, v1, v10

    cmp-long v17, v15, v8

    if-nez v17, :cond_1

    aget-wide v17, v2, v10

    cmp-long v19, v17, v8

    if-eqz v19, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_1
    add-long/2addr v11, v15

    .line 376
    aget-wide v17, v2, v10

    add-long v13, v13, v17

    add-long v15, v15, v17

    .line 377
    aput-wide v15, v3, v10

    .line 378
    aget-object v15, v6, v5

    aget-wide v16, v1, v10

    aput-wide v16, v15, v10

    .line 379
    aget-object v15, v6, v7

    aget-wide v16, v2, v10

    aput-wide v16, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    cmp-long v1, v11, v8

    if-eqz v1, :cond_3

    cmp-long v1, v13, v8

    if-eqz v1, :cond_3

    .line 386
    new-array v1, v4, [J

    aput-wide v11, v1, v5

    aput-wide v13, v1, v7

    long-to-double v4, v11

    long-to-double v7, v13

    add-double/2addr v4, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v7

    .line 388
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v1

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([J)D

    move-result-wide v7

    add-double/2addr v1, v7

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/stat/inference/GTest;->entropy([[J)D

    move-result-wide v6

    sub-double/2addr v1, v6

    mul-double v4, v4, v1

    return-wide v4

    .line 384
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v1

    .line 356
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v2

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 353
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v2, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public gTest([D[J)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 158
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    return-wide v3
.end method

.method public gTest([D[JD)Z
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

    .line 246
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTest([D[J)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v4

    .line 243
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

.method public gTestDataSetsComparison([J[J)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 476
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 478
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    return-wide v3
.end method

.method public gTestDataSetsComparison([J[JD)Z
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

    .line 535
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestDataSetsComparison([J[J)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v4

    .line 532
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

.method public gTestIntrinsic([D[J)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 189
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public rootLogLikelihoodRatio(JJJJ)D
    .locals 4

    const/4 v0, 0x2

    .line 423
    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v3, 0x1

    aput-wide p3, v1, v3

    new-array v0, v0, [J

    aput-wide p5, v0, v2

    aput-wide p7, v0, v3

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide v0

    .line 425
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, p1

    add-long/2addr p1, p3

    long-to-double p1, p1

    div-double/2addr v2, p1

    long-to-double p1, p5

    add-long/2addr p5, p7

    long-to-double p3, p5

    div-double/2addr p1, p3

    cmpg-double p3, v2, p1

    if-gez p3, :cond_0

    neg-double p1, v0

    return-wide p1

    :cond_0
    return-wide v0
.end method
