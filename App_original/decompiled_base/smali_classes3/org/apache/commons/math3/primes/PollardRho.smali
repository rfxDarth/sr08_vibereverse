.class Lorg/apache/commons/math3/primes/PollardRho;
.super Ljava/lang/Object;
.source "PollardRho.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gcdPositive(II)I
    .locals 2

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p0

    .line 143
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shr-int/2addr p0, v0

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p1, v1

    .line 147
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    :goto_0
    if-eq p0, p1, :cond_2

    sub-int v1, p0, p1

    .line 155
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    .line 156
    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result p0

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p0, v1

    goto :goto_0

    :cond_2
    shl-int/2addr p0, v0

    return p0
.end method

.method public static primeFactors(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {p0, v0}, Lorg/apache/commons/math3/primes/SmallPrimes;->smallTrialDivision(ILjava/util/List;)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return-object v0

    .line 50
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->millerRabinPrimeTest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 55
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/primes/PollardRho;->rhoBrent(I)I

    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    div-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static rhoBrent(I)I
    .locals 19

    move/from16 v0, p0

    .line 76
    sget v1, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    move v8, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    int-to-long v8, v8

    mul-long v8, v8, v8

    int-to-long v10, v1

    add-long/2addr v8, v10

    int-to-long v10, v0

    .line 83
    rem-long/2addr v8, v10

    long-to-int v8, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    sub-int v7, v5, v6

    const/16 v9, 0x19

    .line 87
    invoke-static {v9, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    const/4 v10, -0x3

    const/4 v11, 0x1

    :goto_2
    if-ge v10, v7, :cond_3

    int-to-long v12, v8

    mul-long v12, v12, v12

    int-to-long v14, v1

    add-long/2addr v12, v14

    int-to-long v14, v0

    .line 91
    rem-long/2addr v12, v14

    long-to-int v8, v12

    sub-int v12, v4, v8

    .line 92
    invoke-static {v12}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v16, 0x0

    cmp-long v18, v16, v12

    if-nez v18, :cond_1

    .line 94
    sget v5, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES_LAST:I

    add-int/2addr v1, v5

    const/16 v6, -0x19

    const/4 v5, 0x1

    const/4 v8, 0x2

    goto :goto_3

    :cond_1
    move/from16 v17, v10

    const/16 v16, 0x19

    int-to-long v9, v11

    mul-long v9, v9, v12

    .line 101
    rem-long/2addr v9, v14

    long-to-int v11, v9

    if-nez v11, :cond_2

    long-to-int v1, v12

    .line 103
    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v1

    invoke-static {v1, v0}, Lorg/apache/commons/math3/primes/PollardRho;->gcdPositive(II)I

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v10, v17, 0x1

    const/16 v9, 0x19

    goto :goto_2

    :cond_3
    :goto_3
    const/16 v16, 0x19

    .line 106
    invoke-static {v11}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v7

    invoke-static {v7, v0}, Lorg/apache/commons/math3/primes/PollardRho;->gcdPositive(II)I

    move-result v7

    if-eq v3, v7, :cond_4

    return v7

    :cond_4
    add-int/lit8 v6, v6, 0x19

    if-lt v6, v5, :cond_0

    mul-int/lit8 v5, v5, 0x2

    move v4, v8

    goto :goto_0
.end method
