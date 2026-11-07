.class public final Lorg/apache/commons/math3/util/CombinatoricsUtils;
.super Ljava/lang/Object;
.source "CombinatoricsUtils.java"


# static fields
.field static final FACTORIALS:[J

.field static final STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x15

    .line 36
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :array_0
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomialCoefficient(II)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    const-wide/16 v0, 0x1

    if-eq p0, p1, :cond_9

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_8

    add-int/lit8 v3, p0, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_3

    .line 90
    :cond_1
    div-int/lit8 v3, p0, 0x2

    if-le p1, v3, :cond_2

    sub-int p1, p0, p1

    .line 91
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const/16 v3, 0x3d

    if-gt p0, v3, :cond_4

    sub-int/2addr p0, p1

    add-int/2addr p0, v2

    const/4 v3, 0x1

    :goto_0
    if-gt v3, p1, :cond_3

    int-to-long v4, p0

    mul-long v0, v0, v4

    int-to-long v4, v3

    .line 104
    div-long/2addr v0, v4

    add-int/2addr p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v0

    :cond_4
    const/16 v3, 0x42

    if-gt p0, v3, :cond_6

    sub-int/2addr p0, p1

    add-int/2addr p0, v2

    const/4 v3, 0x1

    :goto_1
    if-gt v3, p1, :cond_5

    .line 118
    invoke-static {p0, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v3

    .line 119
    div-long/2addr v6, v4

    div-long/2addr v0, v6

    int-to-long v6, p0

    div-long/2addr v6, v4

    mul-long v0, v0, v6

    add-int/2addr p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-wide v0

    :cond_6
    sub-int/2addr p0, p1

    add-int/2addr p0, v2

    const/4 v3, 0x1

    :goto_2
    if-gt v3, p1, :cond_7

    .line 128
    invoke-static {p0, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v3

    .line 129
    div-long/2addr v6, v4

    div-long/2addr v0, v6

    int-to-long v6, p0

    div-long/2addr v6, v4

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    add-int/2addr p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-wide v0

    :cond_8
    :goto_3
    int-to-long p0, p0

    return-wide p0

    :cond_9
    :goto_4
    return-wide v0
.end method

.method public static binomialCoefficientDouble(II)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 163
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eq p0, p1, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    add-int/lit8 v3, p0, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    div-int/lit8 v3, p0, 0x2

    if-le p1, v3, :cond_2

    sub-int p1, p0, p1

    .line 171
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide p0

    return-wide p0

    :cond_2
    const/16 v3, 0x43

    if-ge p0, v3, :cond_3

    .line 174
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0

    :cond_3
    :goto_0
    if-gt v2, p1, :cond_4

    sub-int v3, p0, p1

    add-int/2addr v3, v2

    int-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    mul-double v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    .line 182
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    return-wide p0

    :cond_5
    :goto_1
    int-to-double p0, p0

    return-wide p0

    :cond_6
    :goto_2
    return-wide v0
.end method

.method public static binomialCoefficientLog(II)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 208
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    const-wide/16 v0, 0x0

    if-eq p0, p1, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    add-int/lit8 v3, p0, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x43

    if-ge p0, v3, :cond_2

    .line 221
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    const/16 v3, 0x406

    if-ge p0, v3, :cond_3

    .line 229
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    .line 232
    :cond_3
    div-int/lit8 v3, p0, 0x2

    if-le p1, v3, :cond_4

    sub-int p1, p0, p1

    .line 233
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide p0

    return-wide p0

    :cond_4
    sub-int v3, p0, p1

    add-int/2addr v3, v2

    :goto_0
    if-gt v3, p0, :cond_5

    int-to-double v4, v3

    .line 243
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_1
    if-gt p0, p1, :cond_6

    int-to-double v2, p0

    .line 248
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    return-wide v0

    :cond_7
    :goto_2
    int-to-double p0, p0

    .line 213
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    :cond_8
    :goto_3
    return-wide v0
.end method

.method public static checkBinomial(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-lt p0, p1, :cond_1

    if-ltz p0, :cond_0

    return-void

    .line 462
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 458
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public static combinationsIterator(II)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator<",
            "[I>;"
        }
    .end annotation

    .line 442
    new-instance v0, Lorg/apache/commons/math3/util/Combinations;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/Combinations;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Combinations;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static factorial(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    if-ltz p0, :cond_1

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 286
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v1, v0, p0

    return-wide v1

    .line 284
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw p0

    .line 280
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static factorialDouble(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p0, :cond_1

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 308
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v1, v0, p0

    long-to-double v0, v1

    return-wide v0

    .line 310
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    return-wide v0

    .line 304
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static factorialLog(I)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p0, :cond_2

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 326
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v1, v0, p0

    long-to-double v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    :goto_0
    if-gt v2, p0, :cond_1

    int-to-double v3, v2

    .line 330
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    .line 322
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static stirlingS2(II)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_d

    const/4 v2, 0x1

    if-gt v1, v0, :cond_c

    .line 363
    sget-object v3, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    if-nez v3, :cond_2

    const/16 v3, 0x1a

    .line 372
    new-array v10, v3, [[J

    .line 373
    new-array v11, v2, [J

    aput-wide v8, v11, v7

    aput-object v11, v10, v7

    const/4 v11, 0x1

    :goto_0
    if-ge v11, v3, :cond_1

    add-int/lit8 v12, v11, 0x1

    .line 375
    new-array v13, v12, [J

    aput-object v13, v10, v11

    .line 376
    aput-wide v5, v13, v7

    .line 377
    aput-wide v8, v13, v2

    .line 378
    aput-wide v8, v13, v11

    const/4 v13, 0x2

    :goto_1
    if-ge v13, v11, :cond_0

    .line 380
    aget-object v14, v10, v11

    move-wide v15, v5

    int-to-long v5, v13

    add-int/lit8 v17, v11, -0x1

    aget-object v17, v10, v17

    aget-wide v18, v17, v13

    mul-long v5, v5, v18

    add-int/lit8 v18, v13, -0x1

    aget-wide v18, v17, v18

    add-long v5, v5, v18

    aput-wide v5, v14, v13

    add-int/lit8 v13, v13, 0x1

    move-wide v5, v15

    goto :goto_1

    :cond_0
    move v11, v12

    goto :goto_0

    :cond_1
    move-wide v15, v5

    .line 385
    sget-object v3, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-static {v3, v5, v10}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v3, v10

    goto :goto_2

    :cond_2
    move-wide v15, v5

    .line 389
    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 391
    aget-object v0, v3, v0

    aget-wide v1, v0, v1

    return-wide v1

    :cond_3
    if-nez v1, :cond_4

    return-wide v15

    :cond_4
    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_5

    goto :goto_5

    :cond_5
    if-ne v1, v4, :cond_6

    sub-int/2addr v0, v2

    shl-long v0, v8, v0

    sub-long/2addr v0, v8

    return-wide v0

    :cond_6
    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_7

    .line 401
    invoke-static {v0, v4}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    return-wide v0

    :cond_7
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    const-wide/16 v8, -0x1

    :goto_3
    move-wide v10, v15

    const/4 v5, 0x1

    :goto_4
    if-gt v5, v1, :cond_a

    neg-long v8, v8

    .line 408
    invoke-static {v1, v5}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v12

    mul-long v12, v12, v8

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(II)I

    move-result v6

    move/from16 v17, v5

    const/4 v14, 0x2

    int-to-long v4, v6

    mul-long v12, v12, v4

    add-long/2addr v10, v12

    cmp-long v4, v10, v15

    if-ltz v4, :cond_9

    add-int/lit8 v5, v17, 0x1

    const/4 v4, 0x2

    goto :goto_4

    .line 411
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v5, v6, v2

    aput-object v3, v6, v14

    invoke-direct {v1, v4, v6}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 415
    :cond_a
    invoke-static {v1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v0

    div-long/2addr v10, v0

    return-wide v10

    :cond_b
    :goto_5
    return-wide v8

    .line 360
    :cond_c
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    .line 357
    :cond_d
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
