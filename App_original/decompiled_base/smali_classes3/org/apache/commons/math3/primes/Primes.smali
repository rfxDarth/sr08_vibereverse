.class public Lorg/apache/commons/math3/primes/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrime(I)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    .line 59
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/primes/SmallPrimes;->PRIMES:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    .line 60
    rem-int v5, p0, v4

    if-nez v5, :cond_2

    if-ne p0, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->millerRabinPrimeTest(I)Z

    move-result p0

    return p0
.end method

.method public static nextPrime(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ltz p0, :cond_7

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    or-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    return v1

    .line 86
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return p0

    .line 92
    :cond_2
    rem-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_3

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    add-int/lit8 p0, p0, 0x4

    .line 100
    :cond_4
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return p0

    :cond_5
    add-int/lit8 v0, p0, 0x2

    .line 104
    invoke-static {v0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    add-int/lit8 p0, p0, 0x6

    goto :goto_0

    .line 76
    :cond_7
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object v5, v1, v0

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static primeFactors(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    .line 126
    invoke-static {p0}, Lorg/apache/commons/math3/primes/SmallPrimes;->trialDivision(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    const/4 p0, 0x1

    aput-object v3, v0, p0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method
