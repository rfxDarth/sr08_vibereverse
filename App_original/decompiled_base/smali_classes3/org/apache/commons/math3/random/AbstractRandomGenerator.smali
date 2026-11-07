.class public abstract Lorg/apache/commons/math3/random/AbstractRandomGenerator;
.super Ljava/lang/Object;
.source "AbstractRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# instance fields
.field private cachedNormalDeviate:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 45
    iput-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 62
    iput-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    return-void
.end method

.method public nextBoolean()Z
    .locals 5

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextBytes([B)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :cond_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    if-lez v3, :cond_1

    shr-int/lit8 v2, v2, 0x8

    :cond_1
    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v2

    .line 114
    aput-byte v5, p1, v1

    .line 115
    array-length v1, p1

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract nextDouble()D
.end method

.method public nextFloat()F
    .locals 2

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public nextGaussian()D
    .locals 14

    .line 253
    iget-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-wide v0, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 255
    iput-wide v2, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v6, v0

    move-wide v8, v6

    move-wide v4, v2

    :goto_0
    cmpl-double v10, v4, v2

    if-ltz v10, :cond_1

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v6

    sub-double/2addr v4, v2

    .line 263
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v8

    mul-double v8, v8, v6

    sub-double/2addr v8, v2

    mul-double v6, v4, v4

    mul-double v10, v8, v8

    add-double/2addr v6, v10

    move-wide v12, v6

    move-wide v6, v4

    move-wide v4, v12

    goto :goto_0

    :cond_1
    cmpl-double v2, v4, v0

    if-eqz v2, :cond_2

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    .line 267
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    :cond_2
    mul-double v8, v8, v4

    .line 269
    iput-wide v8, p0, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->cachedNormalDeviate:D

    mul-double v6, v6, v4

    return-wide v6
.end method

.method public nextInt()I
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v2

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v2, v2, v0

    double-to-int v0, v2

    return v0
.end method

.method public nextInt(I)I
    .locals 4

    if-lez p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double v0, v0, v2

    double-to-int v0, v0

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1

    .line 158
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public nextLong()J
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->nextDouble()D

    move-result-wide v2

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v2, v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public setSeed(I)V
    .locals 2

    int-to-long v0, p1

    .line 67
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->setSeed(J)V

    return-void
.end method

.method public abstract setSeed(J)V
.end method

.method public setSeed([I)V
    .locals 7

    .line 76
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p1, v3

    const-wide v5, 0xfffffffbL

    mul-long v1, v1, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/random/AbstractRandomGenerator;->setSeed(J)V

    return-void
.end method
