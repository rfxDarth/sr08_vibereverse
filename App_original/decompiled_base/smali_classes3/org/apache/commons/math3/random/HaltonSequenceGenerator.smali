.class public Lorg/apache/commons/math3/random/HaltonSequenceGenerator;
.super Ljava/lang/Object;
.source "HaltonSequenceGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# static fields
.field private static final PRIMES:[I

.field private static final WEIGHTS:[I


# instance fields
.field private final base:[I

.field private count:I

.field private final dimension:I

.field private final weight:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x28

    .line 58
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->PRIMES:[I

    .line 65
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->WEIGHTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x3
        0x8
        0xb
        0xc
        0xe
        0x7
        0x12
        0xc
        0xd
        0x11
        0x12
        0x1d
        0xe
        0x12
        0x2b
        0x29
        0x2c
        0x28
        0x1e
        0x2f
        0x41
        0x47
        0x1c
        0x28
        0x3c
        0x4f
        0x59
        0x38
        0x32
        0x34
        0x3d
        0x6c
        0x38
        0x42
        0x3f
        0x3c
        0x42
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 90
    sget-object v0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->PRIMES:[I

    sget-object v1, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->WEIGHTS:[I

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;-><init>(I[I[I)V

    return-void
.end method

.method public constructor <init>(I[I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 108
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    .line 110
    array-length v2, p2

    if-gt p1, v2, :cond_3

    if-eqz p3, :cond_1

    .line 114
    array-length v1, p3

    array-length v2, p2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p3, p3

    array-length p2, p2

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 118
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->dimension:I

    .line 119
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    if-nez p3, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_1
    iput-object p1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->weight:[I

    .line 121
    iput v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    return-void

    .line 111
    :cond_3
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object v0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->PRIMES:[I

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, p3, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method


# virtual methods
.method public getNextIndex()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    return v0
.end method

.method public nextVector()[D
    .locals 10

    .line 126
    iget v0, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->dimension:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->dimension:I

    if-ge v2, v3, :cond_1

    .line 128
    iget v3, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 129
    iget-object v4, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v4, v4, v2

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :goto_1
    div-double/2addr v6, v4

    if-lez v3, :cond_0

    .line 133
    iget-object v4, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v4, v4, v2

    rem-int v5, v3, v4

    invoke-virtual {p0, v2, v1, v4, v5}, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->scramble(IIII)I

    move-result v4

    .line 134
    aget-wide v8, v0, v2

    int-to-double v4, v4

    mul-double v4, v4, v6

    add-double/2addr v8, v4

    aput-wide v8, v0, v2

    .line 135
    iget-object v4, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->base:[I

    aget v4, v4, v2

    div-int/2addr v3, v4

    int-to-double v4, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget v1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    return-object v0
.end method

.method protected scramble(IIII)I
    .locals 0

    .line 157
    iget-object p2, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->weight:[I

    if-eqz p2, :cond_0

    aget p1, p2, p1

    mul-int p1, p1, p4

    rem-int/2addr p1, p3

    return p1

    :cond_0
    return p4
.end method

.method public skipTo(I)[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 170
    iput p1, p0, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->count:I

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/HaltonSequenceGenerator;->nextVector()[D

    move-result-object p1

    return-object p1
.end method
