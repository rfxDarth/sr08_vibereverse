.class public Lorg/apache/commons/math3/random/ISAACRandom;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "ISAACRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GLD_RATIO:I = -0x61c88647

.field private static final H_SIZE:I = 0x80

.field private static final MASK:I = 0x3fc

.field private static final SIZE:I = 0x100

.field private static final SIZE_L:I = 0x8

.field private static final serialVersionUID:J = 0x6524e169b7df8ea0L


# instance fields
.field private final arr:[I

.field private count:I

.field private isaacA:I

.field private isaacB:I

.field private isaacC:I

.field private isaacI:I

.field private isaacJ:I

.field private isaacX:I

.field private final mem:[I

.field private final rsl:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x100

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 60
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    const/16 v0, 0x8

    .line 70
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 94
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x100

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 60
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    const/16 v0, 0x8

    .line 70
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x100

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    .line 60
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    const/16 v0, 0x8

    .line 70
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    return-void
.end method

.method private initState()V
    .locals 14

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 193
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 194
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    const/4 v1, 0x0

    .line 195
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const v3, -0x61c88647

    .line 196
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 199
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/16 v3, 0x100

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v1, v3, :cond_2

    .line 203
    iget-object v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v10, v3, v0

    iget-object v11, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    aget v12, v11, v1

    add-int/2addr v10, v12

    aput v10, v3, v0

    .line 204
    aget v10, v3, v9

    add-int/lit8 v12, v1, 0x1

    aget v12, v11, v12

    add-int/2addr v10, v12

    aput v10, v3, v9

    .line 205
    aget v9, v3, v8

    add-int/lit8 v10, v1, 0x2

    aget v10, v11, v10

    add-int/2addr v9, v10

    aput v9, v3, v8

    .line 206
    aget v8, v3, v7

    add-int/lit8 v9, v1, 0x3

    aget v9, v11, v9

    add-int/2addr v8, v9

    aput v8, v3, v7

    .line 207
    aget v7, v3, v2

    add-int/lit8 v8, v1, 0x4

    aget v8, v11, v8

    add-int/2addr v7, v8

    aput v7, v3, v2

    .line 208
    aget v7, v3, v6

    add-int/lit8 v8, v1, 0x5

    aget v8, v11, v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    .line 209
    aget v6, v3, v5

    add-int/lit8 v7, v1, 0x6

    aget v7, v11, v7

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 210
    aget v5, v3, v4

    add-int/lit8 v6, v1, 0x7

    aget v6, v11, v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 211
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 212
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setState(I)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 216
    iget-object v10, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    aget v11, v10, v0

    iget-object v12, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    aget v13, v12, v1

    add-int/2addr v11, v13

    aput v11, v10, v0

    .line 217
    aget v11, v10, v9

    add-int/lit8 v13, v1, 0x1

    aget v13, v12, v13

    add-int/2addr v11, v13

    aput v11, v10, v9

    .line 218
    aget v11, v10, v8

    add-int/lit8 v13, v1, 0x2

    aget v13, v12, v13

    add-int/2addr v11, v13

    aput v11, v10, v8

    .line 219
    aget v11, v10, v7

    add-int/lit8 v13, v1, 0x3

    aget v13, v12, v13

    add-int/2addr v11, v13

    aput v11, v10, v7

    .line 220
    aget v11, v10, v2

    add-int/lit8 v13, v1, 0x4

    aget v13, v12, v13

    add-int/2addr v11, v13

    aput v11, v10, v2

    .line 221
    aget v11, v10, v6

    add-int/lit8 v13, v1, 0x5

    aget v13, v12, v13

    add-int/2addr v11, v13

    aput v11, v10, v6

    .line 222
    aget v11, v10, v5

    add-int/lit8 v13, v1, 0x6

    aget v13, v12, v13

    add-int/2addr v11, v13

    aput v11, v10, v5

    .line 223
    aget v11, v10, v4

    add-int/lit8 v13, v1, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v4

    .line 224
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->shuffle()V

    .line 225
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setState(I)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3

    .line 227
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac()V

    const/16 v0, 0xff

    .line 228
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->clear()V

    return-void
.end method

.method private isaac()V
    .locals 4

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    const/16 v1, 0x80

    .line 152
    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    .line 153
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    iget v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacC:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 154
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    if-ge v2, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac2()V

    goto :goto_0

    .line 157
    :cond_0
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    .line 158
    :goto_1
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    if-ge v0, v1, :cond_1

    .line 159
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac2()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isaac2()V
    .locals 4

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v1, v0, v1

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 166
    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 167
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 168
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 169
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v1, v0, v1

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 170
    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    ushr-int/lit8 v2, v1, 0x6

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 171
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 172
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v1, v0, v1

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 174
    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    shl-int/lit8 v2, v1, 0x2

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 175
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 176
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aget v1, v0, v1

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    .line 178
    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 179
    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacJ:I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    .line 180
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac3()V

    return-void
.end method

.method private isaac3()V
    .locals 5

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    iget v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacX:I

    and-int/lit16 v3, v2, 0x3fc

    shr-int/lit8 v3, v3, 0x2

    aget v3, v0, v3

    iget v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacA:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    add-int/2addr v3, v4

    aput v3, v0, v1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0x3fc

    shr-int/lit8 v3, v3, 0x2

    .line 186
    aget v0, v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacB:I

    .line 187
    iget-object v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/math3/random/ISAACRandom;->isaacI:I

    aput v0, v2, v1

    return-void
.end method

.method private setState(I)V
    .locals 4

    .line 265
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->mem:[I

    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    aput v2, v0, p1

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    .line 266
    aget v3, v1, v3

    aput v3, v0, v2

    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    .line 267
    aget v3, v1, v3

    aput v3, v0, v2

    add-int/lit8 v2, p1, 0x3

    const/4 v3, 0x3

    .line 268
    aget v3, v1, v3

    aput v3, v0, v2

    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x4

    .line 269
    aget v3, v1, v3

    aput v3, v0, v2

    add-int/lit8 v2, p1, 0x5

    const/4 v3, 0x5

    .line 270
    aget v3, v1, v3

    aput v3, v0, v2

    add-int/lit8 v2, p1, 0x6

    const/4 v3, 0x6

    .line 271
    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x7

    add-int/2addr p1, v2

    .line 272
    aget v1, v1, v2

    aput v1, v0, p1

    return-void
.end method

.method private shuffle()V
    .locals 14

    .line 234
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->arr:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    shl-int/lit8 v5, v4, 0xb

    xor-int/2addr v2, v5

    aput v2, v0, v1

    const/4 v5, 0x3

    .line 235
    aget v6, v0, v5

    add-int/2addr v6, v2

    aput v6, v0, v5

    const/4 v7, 0x2

    .line 236
    aget v8, v0, v7

    add-int/2addr v4, v8

    aput v4, v0, v3

    ushr-int/lit8 v9, v8, 0x2

    xor-int/2addr v4, v9

    .line 237
    aput v4, v0, v3

    const/4 v9, 0x4

    .line 238
    aget v10, v0, v9

    add-int/2addr v10, v4

    aput v10, v0, v9

    add-int/2addr v8, v6

    .line 239
    aput v8, v0, v7

    shl-int/lit8 v11, v6, 0x8

    xor-int/2addr v8, v11

    .line 240
    aput v8, v0, v7

    const/4 v11, 0x5

    .line 241
    aget v12, v0, v11

    add-int/2addr v12, v8

    aput v12, v0, v11

    add-int/2addr v6, v10

    .line 242
    aput v6, v0, v5

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v6, v13

    .line 243
    aput v6, v0, v5

    const/4 v5, 0x6

    .line 244
    aget v13, v0, v5

    add-int/2addr v13, v6

    aput v13, v0, v5

    add-int/2addr v10, v12

    .line 245
    aput v10, v0, v9

    shl-int/lit8 v6, v12, 0xa

    xor-int/2addr v6, v10

    .line 246
    aput v6, v0, v9

    const/4 v9, 0x7

    .line 247
    aget v10, v0, v9

    add-int/2addr v10, v6

    aput v10, v0, v9

    add-int/2addr v12, v13

    .line 248
    aput v12, v0, v11

    ushr-int/lit8 v6, v13, 0x4

    xor-int/2addr v6, v12

    .line 249
    aput v6, v0, v11

    add-int/2addr v2, v6

    .line 250
    aput v2, v0, v1

    add-int/2addr v13, v10

    .line 251
    aput v13, v0, v5

    shl-int/lit8 v6, v10, 0x8

    xor-int/2addr v6, v13

    .line 252
    aput v6, v0, v5

    add-int/2addr v4, v6

    .line 253
    aput v4, v0, v3

    add-int/2addr v10, v2

    .line 254
    aput v10, v0, v9

    ushr-int/lit8 v3, v2, 0x9

    xor-int/2addr v3, v10

    .line 255
    aput v3, v0, v9

    add-int/2addr v8, v3

    .line 256
    aput v8, v0, v7

    add-int/2addr v2, v4

    .line 257
    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 3

    .line 142
    iget v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    if-gez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->isaac()V

    const/16 v0, 0xff

    .line 144
    iput v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    iget v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/math3/random/ISAACRandom;->count:I

    aget v0, v0, v1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v0, p1

    return p1
.end method

.method public setSeed(I)V
    .locals 0

    .line 111
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

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

    .line 117
    filled-new-array {v1, p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed([I)V

    return-void
.end method

.method public setSeed([I)V
    .locals 7

    if-nez p1, :cond_0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/ISAACRandom;->setSeed(J)V

    return-void

    .line 127
    :cond_0
    array-length v0, p1

    .line 128
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    array-length v2, v1

    .line 129
    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v0, v2, :cond_1

    move p1, v0

    :goto_0
    if-ge p1, v2, :cond_1

    .line 132
    iget-object v1, p0, Lorg/apache/commons/math3/random/ISAACRandom;->rsl:[I

    sub-int v3, p1, v0

    aget v3, v1, v3

    int-to-long v3, v3

    const/16 v5, 0x1e

    shr-long v5, v3, v5

    xor-long/2addr v3, v5

    const-wide/32 v5, 0x6c078965

    mul-long v3, v3, v5

    int-to-long v5, p1

    add-long/2addr v3, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v4, v3

    .line 133
    aput v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/random/ISAACRandom;->initState()V

    return-void
.end method
