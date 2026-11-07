.class public Lorg/apache/commons/math3/random/Well19937c;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "Well19937c.java"


# static fields
.field private static final K:I = 0x4de1

.field private static final M1:I = 0x46

.field private static final M2:I = 0xb3

.field private static final M3:I = 0x1c1

.field private static final serialVersionUID:J = -0x63f7f76dfc11e644L


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0xb3

    const/16 v1, 0x1c1

    const/16 v2, 0x4de1

    const/16 v3, 0x46

    .line 57
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

    const/16 v1, 0x4de1

    const/16 v2, 0x46

    move-object v0, p0

    move v5, p1

    .line 64
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

    const/16 v1, 0x4de1

    const/16 v2, 0x46

    move-object v0, p0

    move-wide v5, p1

    .line 79
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIIJ)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 6

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

    const/16 v1, 0x4de1

    const/16 v2, 0x46

    move-object v0, p0

    move-object v5, p1

    .line 72
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 10

    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/random/Well19937c;->iRm1:[I

    iget v1, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    aget v0, v0, v1

    .line 87
    iget-object v1, p0, Lorg/apache/commons/math3/random/Well19937c;->iRm2:[I

    iget v2, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    aget v1, v1, v2

    .line 89
    iget-object v2, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    iget v3, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    aget v2, v2, v3

    .line 90
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    iget-object v4, p0, Lorg/apache/commons/math3/random/Well19937c;->i1:[I

    iget v5, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    aget v4, v4, v5

    aget v3, v3, v4

    .line 91
    iget-object v4, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    iget-object v5, p0, Lorg/apache/commons/math3/random/Well19937c;->i2:[I

    iget v6, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    aget v5, v5, v6

    aget v4, v4, v5

    .line 92
    iget-object v5, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    iget-object v6, p0, Lorg/apache/commons/math3/random/Well19937c;->i3:[I

    iget v7, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    aget v6, v6, v7

    aget v5, v5, v6

    .line 94
    iget-object v6, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    aget v6, v6, v0

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    aget v8, v8, v1

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    xor-int/2addr v6, v8

    shl-int/lit8 v8, v2, 0x19

    xor-int/2addr v2, v8

    ushr-int/lit8 v8, v3, 0x1b

    xor-int/2addr v3, v8

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v4, 0x9

    ushr-int/lit8 v4, v5, 0x1

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    xor-int v4, v2, v3

    shl-int/lit8 v5, v2, 0x9

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    shl-int/lit8 v5, v3, 0x15

    xor-int/2addr v3, v5

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v4, 0x15

    xor-int/2addr v3, v4

    xor-int/2addr v2, v3

    .line 100
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    iget v5, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    aput v4, v3, v5

    .line 101
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    aput v2, v3, v0

    .line 102
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well19937c;->v:[I

    aget v4, v3, v1

    and-int/2addr v4, v7

    aput v4, v3, v1

    .line 103
    iput v0, p0, Lorg/apache/commons/math3/random/Well19937c;->index:I

    shl-int/lit8 v0, v2, 0x7

    const v1, -0x1b91e900

    and-int/2addr v0, v1

    xor-int/2addr v0, v2

    shl-int/lit8 v1, v0, 0xf

    const v2, -0x64798000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v0, p1

    return p1
.end method
