.class public Lorg/apache/commons/math3/random/Well44497b;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "Well44497b.java"


# static fields
.field private static final K:I = 0xadd1

.field private static final M1:I = 0x17

.field private static final M2:I = 0x1e1

.field private static final M3:I = 0xe5

.field private static final serialVersionUID:J = 0x37f4917e58e3ec24L


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x1e1

    const/16 v1, 0xe5

    const v2, 0xadd1

    const/16 v3, 0x17

    .line 57
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    const v1, 0xadd1

    const/16 v2, 0x17

    move-object v0, p0

    move v5, p1

    .line 64
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    const v1, 0xadd1

    const/16 v2, 0x17

    move-object v0, p0

    move-wide v5, p1

    .line 79
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIIJ)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 6

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    const v1, 0xadd1

    const/16 v2, 0x17

    move-object v0, p0

    move-object v5, p1

    .line 72
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 8

    .line 88
    iget-object v0, p0, Lorg/apache/commons/math3/random/Well44497b;->iRm1:[I

    iget v1, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v0, v0, v1

    .line 89
    iget-object v1, p0, Lorg/apache/commons/math3/random/Well44497b;->iRm2:[I

    iget v2, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v1, v1, v2

    .line 91
    iget-object v2, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    iget v3, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v2, v2, v3

    .line 92
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    iget-object v4, p0, Lorg/apache/commons/math3/random/Well44497b;->i1:[I

    iget v5, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v4, v4, v5

    aget v3, v3, v4

    .line 93
    iget-object v4, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    iget-object v5, p0, Lorg/apache/commons/math3/random/Well44497b;->i2:[I

    iget v6, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v5, v5, v6

    aget v4, v4, v5

    .line 94
    iget-object v5, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    iget-object v6, p0, Lorg/apache/commons/math3/random/Well44497b;->i3:[I

    iget v7, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aget v6, v6, v7

    aget v5, v5, v6

    .line 97
    iget-object v6, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aget v6, v6, v0

    and-int/lit16 v6, v6, -0x8000

    iget-object v7, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aget v7, v7, v1

    and-int/lit16 v7, v7, 0x7fff

    xor-int/2addr v6, v7

    shl-int/lit8 v7, v2, 0x18

    xor-int/2addr v2, v7

    ushr-int/lit8 v7, v3, 0x1e

    xor-int/2addr v3, v7

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0xa

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x1a

    xor-int/2addr v3, v4

    xor-int v4, v2, v3

    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v7, v3, 0x17

    xor-int/2addr v5, v7

    const v7, -0x4000001

    and-int/2addr v5, v7

    const/high16 v7, 0x20000

    and-int/2addr v3, v7

    if-eqz v3, :cond_0

    const v3, -0x48d60314

    xor-int/2addr v5, v3

    :cond_0
    ushr-int/lit8 v3, v2, 0x14

    xor-int/2addr v2, v3

    xor-int/2addr v2, v6

    xor-int/2addr v2, v5

    xor-int/2addr v2, v4

    .line 105
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    iget v5, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    aput v4, v3, v5

    .line 106
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aput v2, v3, v0

    .line 107
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well44497b;->v:[I

    aget v4, v3, v1

    and-int/lit16 v4, v4, -0x8000

    aput v4, v3, v1

    .line 108
    iput v0, p0, Lorg/apache/commons/math3/random/Well44497b;->index:I

    shl-int/lit8 v0, v2, 0x7

    const v1, -0x6c22ec00

    and-int/2addr v0, v1

    xor-int/2addr v0, v2

    shl-int/lit8 v1, v0, 0xf

    const v2, -0x5ee8000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v0, p1

    return p1
.end method
