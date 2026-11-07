.class public abstract Lorg/apache/commons/math3/random/BitsStreamGenerator;
.super Ljava/lang/Object;
.source "BitsStreamGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1332938L


# instance fields
.field private nextGaussian:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 41
    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 195
    iput-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    return-void
.end method

.method protected abstract next(I)I
.end method

.method public nextBoolean()Z
    .locals 2

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextBytes([B)V
    .locals 5

    .line 72
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 75
    aput-byte v3, p1, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 76
    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 77
    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 78
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    .line 82
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    .line 83
    aput-byte v3, p1, v1

    shr-int/lit8 v0, v0, 0x8

    move v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 5

    const/16 v0, 0x1a

    .line 90
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    .line 91
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    long-to-double v0, v1

    const-wide/high16 v2, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    const/16 v0, 0x17

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x34000000

    mul-float v0, v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 6

    .line 104
    iget-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v0

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextDouble()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v0, v0, v4

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    .line 109
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 110
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    .line 111
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    return-wide v4

    .line 114
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 115
    iput-wide v2, p0, Lorg/apache/commons/math3/random/BitsStreamGenerator;->nextGaussian:D

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    const/16 v0, 0x20

    .line 124
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_1

    neg-int v0, p1

    and-int/2addr v0, p1

    const/16 v1, 0x1f

    if-ne v0, p1, :cond_0

    int-to-long v2, p1

    .line 145
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result p1

    int-to-long v4, p1

    mul-long v2, v2, v4

    shr-long v0, v2, v1

    long-to-int p1, v0

    return p1

    .line 150
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    .line 151
    rem-int v2, v0, p1

    sub-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v0, v3

    if-ltz v0, :cond_0

    return v2

    .line 155
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public nextLong()J
    .locals 7

    const/16 v0, 0x20

    .line 160
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    .line 161
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v0

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public nextLong(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    :cond_0
    const/16 v2, 0x1f

    .line 181
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 182
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/random/BitsStreamGenerator;->next(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 183
    rem-long v4, v2, p1

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v2, v6

    cmp-long v6, v2, v0

    if-ltz v6, :cond_0

    return-wide v4

    .line 187
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public abstract setSeed(I)V
.end method

.method public abstract setSeed(J)V
.end method

.method public abstract setSeed([I)V
.end method
