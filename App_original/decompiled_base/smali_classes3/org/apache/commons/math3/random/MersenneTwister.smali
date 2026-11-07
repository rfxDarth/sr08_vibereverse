.class public Lorg/apache/commons/math3/random/MersenneTwister;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "MersenneTwister.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final M:I = 0x18d

.field private static final MAG01:[I

.field private static final N:I = 0x270

.field private static final serialVersionUID:J = 0x7832beb90773fa2eL


# instance fields
.field private mt:[I

.field private mti:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const v1, -0x66f74f21

    .line 94
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 106
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 107
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 115
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 132
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 123
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 124
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 10

    .line 233
    iget v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v1, 0x270

    if-lt v0, v1, :cond_2

    .line 234
    iget-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xe3

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-ge v2, v3, :cond_0

    .line 237
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v6, v2, 0x1

    aget v7, v3, v6

    and-int/2addr v0, v5

    and-int/2addr v4, v7

    or-int/2addr v0, v4

    add-int/lit16 v4, v2, 0x18d

    .line 239
    aget v4, v3, v4

    ushr-int/lit8 v5, v0, 0x1

    xor-int/2addr v4, v5

    sget-object v5, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v0, v0, 0x1

    aget v0, v5, v0

    xor-int/2addr v0, v4

    aput v0, v3, v2

    move v2, v6

    move v0, v7

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x26f

    if-ge v3, v2, :cond_1

    .line 243
    iget-object v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v6, v3, 0x1

    aget v7, v2, v6

    and-int/2addr v0, v5

    and-int v8, v7, v4

    or-int/2addr v0, v8

    add-int/lit16 v8, v3, -0xe3

    .line 245
    aget v8, v2, v8

    ushr-int/lit8 v9, v0, 0x1

    xor-int/2addr v8, v9

    sget-object v9, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v0, v0, 0x1

    aget v0, v9, v0

    xor-int/2addr v0, v8

    aput v0, v2, v3

    move v3, v6

    move v0, v7

    goto :goto_1

    :cond_1
    and-int/2addr v0, v5

    .line 247
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v5, v3, v1

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    const/16 v4, 0x18c

    .line 248
    aget v4, v3, v4

    ushr-int/lit8 v5, v0, 0x1

    xor-int/2addr v4, v5

    sget-object v5, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v0, v0, 0x1

    aget v0, v5, v0

    xor-int/2addr v0, v4

    aput v0, v3, v2

    .line 250
    iput v1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    .line 253
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget v1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    aget v0, v0, v1

    ushr-int/lit8 v1, v0, 0xb

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x7

    const v2, -0x62d3a980

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xf

    const/high16 v2, -0x103a0000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x12

    xor-int/2addr v0, v1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v0, p1

    return p1
.end method

.method public setSeed(I)V
    .locals 4

    int-to-long v0, p1

    .line 146
    iget-object p1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v2, 0x0

    long-to-int v3, v0

    aput v3, p1, v2

    const/4 p1, 0x1

    .line 147
    :goto_0
    iput p1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    iget p1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v2, 0x270

    if-ge p1, v2, :cond_0

    const/16 v2, 0x1e

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide/32 v2, 0x6c078965

    mul-long v0, v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 151
    iget-object v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    long-to-int v3, v0

    aput v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    return-void
.end method

.method public setSeed(J)V
    .locals 4

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p2, p1

    .line 216
    filled-new-array {v1, p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    return-void
.end method

.method public setSeed([I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    return-void

    :cond_0
    const v2, 0x12bd6aa

    .line 172
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    .line 176
    array-length v2, v1

    const/16 v3, 0x270

    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_0
    const-wide v12, 0x80000000L

    const-wide/16 v14, 0x0

    const-wide/32 v16, 0x7fffffff

    if-eqz v2, :cond_5

    const/16 v18, 0x0

    .line 177
    iget-object v4, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/16 v19, 0x1

    aget v5, v4, v6

    const-wide v20, 0xffffffffL

    int-to-long v8, v5

    and-long v8, v8, v16

    if-gez v5, :cond_1

    move-wide/from16 v22, v12

    goto :goto_1

    :cond_1
    move-wide/from16 v22, v14

    :goto_1
    or-long v8, v8, v22

    add-int/lit8 v5, v6, -0x1

    .line 178
    aget v5, v4, v5

    const/16 v22, 0x1e

    const/16 v23, 0x26f

    int-to-long v10, v5

    and-long v10, v10, v16

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move-wide v12, v14

    :goto_2
    or-long/2addr v10, v12

    shr-long v12, v10, v22

    xor-long/2addr v10, v12

    const-wide/32 v12, 0x19660d

    mul-long v10, v10, v12

    xor-long/2addr v8, v10

    .line 179
    aget v5, v1, v7

    int-to-long v10, v5

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    and-long v8, v8, v20

    long-to-int v5, v8

    .line 180
    aput v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v3, :cond_3

    .line 183
    aget v5, v4, v23

    aput v5, v4, v18

    const/4 v6, 0x1

    .line 186
    :cond_3
    array-length v4, v1

    if-lt v7, v4, :cond_4

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    const/16 v18, 0x0

    const/16 v19, 0x1

    const-wide v20, 0xffffffffL

    const/16 v22, 0x1e

    const/16 v23, 0x26f

    const/16 v1, 0x26f

    :goto_3
    if-eqz v1, :cond_9

    .line 192
    iget-object v2, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v4, v2, v6

    int-to-long v7, v4

    and-long v7, v7, v16

    if-gez v4, :cond_6

    move-wide v4, v12

    goto :goto_4

    :cond_6
    move-wide v4, v14

    :goto_4
    or-long/2addr v4, v7

    add-int/lit8 v7, v6, -0x1

    .line 193
    aget v7, v2, v7

    int-to-long v8, v7

    and-long v8, v8, v16

    if-gez v7, :cond_7

    move-wide v10, v12

    goto :goto_5

    :cond_7
    move-wide v10, v14

    :goto_5
    or-long/2addr v8, v10

    shr-long v10, v8, v22

    xor-long/2addr v8, v10

    const-wide/32 v10, 0x5d588b65

    mul-long v8, v8, v10

    xor-long/2addr v4, v8

    int-to-long v7, v6

    sub-long/2addr v4, v7

    and-long v4, v4, v20

    long-to-int v5, v4

    .line 195
    aput v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_8

    .line 198
    aget v4, v2, v23

    aput v4, v2, v18

    const/4 v6, 0x1

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 203
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/high16 v2, -0x80000000

    aput v2, v1, v18

    .line 205
    invoke-virtual {v0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    return-void
.end method
