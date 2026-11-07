.class public Lorg/apache/commons/math3/special/Beta;
.super Ljava/lang/Object;
.source "Beta.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-14

.field private static final DELTA:[D

.field private static final HALF_LOG_TWO_PI:D = 0.9189385332046727


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    .line 81
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    return-void

    :array_0
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        -0x4102df75a56ed1ceL    # -2.777777777777778E-5
        0x3e754ded3ddad442L    # 7.936507936507937E-8
        -0x41fb8c3af7d1c398L    # -5.952380952380953E-10
        0x3da282a2cf083a98L
        -0x42b5036195bc49f6L    # -1.917526917518546E-13
        0x3cfcde85bfe7ab89L    # 6.410256405103255E-15
        -0x434ab4ddf135a5f4L
        0x3c74b6258b42ee9bL    # 1.7964371635940225E-17
        -0x43c65119190af537L    # -1.3922896466162779E-18
        0x3c03beedcf2f631eL    # 1.338028550140209E-19
        -0x442dca334d9339b1L    # -1.542460098679661E-20
        0x3ba2ac241095f5ffL    # 1.9770199298095743E-21
        -0x448e5082f787f436L
        0x3b34b6f6d66e9efaL    # 1.713480149663986E-23
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deltaMinusDeltaSum(DD)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmpg-double v3, p0, v0

    if-ltz v3, :cond_3

    cmpl-double v0, p0, p2

    if-gtz v0, :cond_3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const/4 v3, 0x1

    cmpg-double v4, p2, v0

    if-ltz v4, :cond_2

    div-double v4, p0, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, v4, v6

    div-double/2addr v4, v8

    div-double v8, v6, v8

    mul-double v10, v8, v8

    .line 360
    sget-object v12, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v12, v12

    new-array v13, v12, [D

    .line 361
    aput-wide v6, v13, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v12, :cond_0

    add-int/lit8 v14, v2, -0x1

    .line 363
    aget-wide v14, v13, v14

    mul-double v14, v14, v10

    add-double/2addr v14, v8

    add-double/2addr v14, v6

    aput-wide v14, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    div-double v0, v0, p2

    mul-double v0, v0, v0

    .line 370
    sget-object v2, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length v6, v2

    sub-int/2addr v6, v3

    aget-wide v6, v2, v6

    sub-int/2addr v12, v3

    aget-wide v8, v13, v12

    mul-double v6, v6, v8

    .line 371
    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    :goto_1
    if-ltz v2, :cond_1

    mul-double v6, v6, v0

    .line 372
    sget-object v3, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    aget-wide v8, v3, v2

    aget-wide v10, v13, v2

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    mul-double v6, v6, v4

    div-double v6, v6, p2

    return-wide v6

    .line 350
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 347
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static logBeta(DD)D
    .locals 12

    .line 421
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_e

    cmpg-double v2, p2, v0

    if-gtz v2, :cond_0

    goto/16 :goto_5

    .line 425
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 426
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    const-wide/high16 p2, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, p2

    if-ltz v4, :cond_2

    .line 428
    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->sumDeltaMinusDeltaSum(DD)D

    move-result-wide p2

    div-double v4, v0, p0

    add-double/2addr v2, v4

    div-double v2, v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v6

    neg-double v0, v0

    .line 431
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    .line 432
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v2

    mul-double v2, v2, p0

    const-wide v4, 0x3fed67f1c864beb4L    # 0.9189385332046727

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    cmpg-double v8, v0, v2

    if-gtz v8, :cond_1

    .line 434
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    mul-double p0, p0, v6

    add-double/2addr p0, v4

    add-double/2addr p0, p2

    sub-double/2addr p0, v0

    sub-double/2addr p0, v2

    return-wide p0

    .line 436
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    mul-double p0, p0, v6

    add-double/2addr p0, v4

    add-double/2addr p0, p2

    sub-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0

    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_8

    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpl-double v8, p0, v6

    if-lez v8, :cond_4

    sub-double p2, v0, v2

    .line 440
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    const/4 p3, 0x0

    move-wide v4, v2

    :goto_0
    if-ge p3, p2, :cond_3

    sub-double/2addr v0, v2

    div-double v6, v0, p0

    add-double/2addr v6, v2

    div-double v6, v0, v6

    mul-double v4, v4, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 447
    :cond_3
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    int-to-double p2, p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double p2, p2, v4

    sub-double/2addr v2, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p2

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide p0

    add-double/2addr p2, p0

    :goto_1
    add-double/2addr v2, p2

    return-wide v2

    :cond_4
    move-wide v6, v2

    :goto_2
    cmpl-double v8, v0, v4

    if-lez v8, :cond_5

    sub-double/2addr v0, v2

    div-double v8, v0, p0

    add-double v10, v8, v2

    div-double/2addr v8, v10

    mul-double v6, v6, v8

    goto :goto_2

    :cond_5
    cmpg-double v8, p0, p2

    if-gez v8, :cond_7

    move-wide p2, v2

    :goto_3
    cmpl-double v8, p0, v4

    if-lez v8, :cond_6

    sub-double/2addr p0, v2

    add-double v8, v0, p0

    div-double v8, p0, v8

    mul-double p2, p2, v8

    goto :goto_3

    .line 465
    :cond_6
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    add-double/2addr v2, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v4

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide p0

    sub-double/2addr v4, p0

    add-double/2addr p2, v4

    goto :goto_1

    .line 471
    :cond_7
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    add-double/2addr p2, v2

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide p0

    add-double/2addr p2, p0

    return-wide p2

    :cond_8
    cmpl-double v6, v0, v2

    if-ltz v6, :cond_c

    cmpl-double v6, p0, v4

    if-lez v6, :cond_b

    cmpg-double v6, p0, p2

    if-gez v6, :cond_a

    move-wide p2, v2

    :goto_4
    cmpl-double v6, p0, v4

    if-lez v6, :cond_9

    sub-double/2addr p0, v2

    add-double v6, v0, p0

    div-double v6, p0, v6

    mul-double p2, p2, v6

    goto :goto_4

    .line 485
    :cond_9
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v4

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide p0

    sub-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr p2, v2

    return-wide p2

    .line 490
    :cond_a
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p2

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide p0

    add-double/2addr p2, p0

    return-wide p2

    .line 494
    :cond_b
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    add-double/2addr p2, v2

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->logGammaSum(DD)D

    move-result-wide p0

    sub-double/2addr p2, p0

    return-wide p2

    :cond_c
    cmpl-double v2, p0, p2

    if-ltz v2, :cond_d

    .line 500
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p2

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/special/Beta;->logGammaMinusLogGammaSum(DD)D

    move-result-wide p0

    add-double/2addr p2, p0

    return-wide p2

    .line 507
    :cond_d
    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v2

    mul-double p2, p2, v2

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide p0

    div-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    :cond_e
    :goto_5
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static logBeta(DDDI)D
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static logGammaMinusLogGammaSum(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-ltz v3, :cond_3

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    cmpg-double v3, p2, v1

    if-ltz v3, :cond_2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, p2

    if-gtz v2, :cond_0

    sub-double v0, p0, v0

    add-double/2addr v0, p2

    .line 320
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    sub-double v0, p2, v0

    add-double/2addr v0, p0

    .line 323
    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide v2

    :goto_0
    div-double v4, p0, p2

    .line 326
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    .line 327
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v4

    mul-double p0, p0, p2

    cmpg-double p2, v0, p0

    if-gtz p2, :cond_1

    sub-double/2addr v2, v0

    sub-double/2addr v2, p0

    return-wide v2

    :cond_1
    sub-double/2addr v2, p0

    sub-double/2addr v2, v0

    return-wide v2

    .line 310
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 307
    :cond_3
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method private static logGammaSum(DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    cmpg-double v6, p0, v3

    if-ltz v6, :cond_3

    cmpl-double v6, p0, v0

    if-gtz v6, :cond_3

    cmpg-double v6, p2, v3

    if-ltz v6, :cond_2

    cmpl-double v6, p2, v0

    if-gtz v6, :cond_2

    sub-double/2addr p0, v3

    sub-double/2addr p2, v3

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    add-double/2addr p0, v3

    .line 282
    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p2, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_1

    .line 284
    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p0

    :goto_0
    add-double/2addr p2, p0

    return-wide p2

    :cond_1
    sub-double p2, p0, v3

    .line 286
    invoke-static {p2, p3}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide p2

    add-double/2addr v3, p0

    mul-double p0, p0, v3

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    goto :goto_0

    .line 277
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, v5, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    .line 274
    :cond_3
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0, v5, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public static regularizedBeta(DDD)D
    .locals 9

    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    const v8, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 117
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static regularizedBeta(DDDD)D
    .locals 9

    const v8, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 138
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static regularizedBeta(DDDDI)D
    .locals 13

    .line 187
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v9

    if-gtz v2, :cond_2

    cmpg-double v2, p2, v0

    if-lez v2, :cond_2

    cmpg-double v2, p4, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    add-double v0, p2, v9

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double v2, p4, v2

    add-double/2addr v2, p2

    div-double/2addr v0, v2

    cmpl-double v4, p0, v0

    if-lez v4, :cond_1

    sub-double v0, v9, p0

    add-double v4, p4, v9

    div-double/2addr v4, v2

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_1

    move-wide v4, p2

    move-wide/from16 v2, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 197
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    sub-double/2addr v9, p0

    return-wide v9

    :cond_1
    move-wide v4, p2

    move-wide/from16 v2, p4

    .line 199
    new-instance v0, Lorg/apache/commons/math3/special/Beta$1;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/special/Beta$1;-><init>(DD)V

    .line 222
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    neg-double v11, p0

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v11

    mul-double v11, v11, v2

    add-double/2addr v6, v11

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v11

    sub-double/2addr v6, v11

    invoke-static/range {p2 .. p5}, Lorg/apache/commons/math3/special/Beta;->logBeta(DD)D

    move-result-wide v1

    sub-double/2addr v6, v1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    mul-double v6, v1, v9

    move-wide v1, p0

    move-wide/from16 v3, p6

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p0

    div-double/2addr v6, p0

    return-wide v6

    :cond_2
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static regularizedBeta(DDDI)D
    .locals 9

    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v8, p6

    .line 155
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method private static sumDeltaMinusDeltaSum(DD)D
    .locals 9

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 393
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    cmpg-double v4, p0, v1

    if-ltz v4, :cond_2

    cmpg-double v4, p2, v1

    if-ltz v4, :cond_1

    .line 399
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    .line 400
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    div-double/2addr v1, v3

    mul-double v1, v1, v1

    .line 403
    sget-object p2, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    array-length p3, p2

    sub-int/2addr p3, v0

    aget-wide v5, p2, p3

    .line 404
    array-length p2, p2

    add-int/lit8 p2, p2, -0x2

    :goto_0
    if-ltz p2, :cond_0

    mul-double v5, v5, v1

    .line 405
    sget-object p3, Lorg/apache/commons/math3/special/Beta;->DELTA:[D

    aget-wide v7, p3, p2

    add-double/2addr v5, v7

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    div-double/2addr v5, v3

    .line 407
    invoke-static {v3, v4, p0, p1}, Lorg/apache/commons/math3/special/Beta;->deltaMinusDeltaSum(DD)D

    move-result-wide p0

    add-double/2addr v5, p0

    return-wide v5

    .line 396
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, v3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 393
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0, v3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method
