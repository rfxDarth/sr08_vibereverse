.class public Lorg/apache/commons/math3/random/Well512a;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "Well512a.java"


# static fields
.field private static final K:I = 0x200

.field private static final M1:I = 0xd

.field private static final M2:I = 0x9

.field private static final M3:I = 0x5

.field private static final serialVersionUID:J = -0x54b66732a18f151eL


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x5

    const/16 v2, 0x200

    const/16 v3, 0xd

    .line 57
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/16 v3, 0x9

    const/4 v4, 0x5

    const/16 v1, 0x200

    const/16 v2, 0xd

    move-object v0, p0

    move v5, p1

    .line 64
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const/16 v3, 0x9

    const/4 v4, 0x5

    const/16 v1, 0x200

    const/16 v2, 0xd

    move-object v0, p0

    move-wide v5, p1

    .line 79
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIIJ)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 6

    const/16 v3, 0x9

    const/4 v4, 0x5

    const/16 v1, 0x200

    const/16 v2, 0xd

    move-object v0, p0

    move-object v5, p1

    .line 72
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 6

    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/random/Well512a;->iRm1:[I

    iget v1, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v0, v0, v1

    .line 88
    iget-object v1, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget v2, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v1, v1, v2

    .line 89
    iget-object v2, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget-object v3, p0, Lorg/apache/commons/math3/random/Well512a;->i1:[I

    iget v4, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v3, v3, v4

    aget v2, v2, v3

    .line 90
    iget-object v3, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget-object v4, p0, Lorg/apache/commons/math3/random/Well512a;->i2:[I

    iget v5, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aget v4, v4, v5

    aget v3, v3, v4

    .line 91
    iget-object v4, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    aget v4, v4, v0

    shl-int/lit8 v5, v1, 0x10

    xor-int/2addr v1, v5

    shl-int/lit8 v5, v2, 0xf

    xor-int/2addr v2, v5

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xb

    xor-int/2addr v2, v3

    xor-int v3, v1, v2

    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x12

    xor-int/2addr v1, v5

    xor-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x1c

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x5

    const v4, -0x25bbd2dc

    and-int/2addr v2, v4

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 99
    iget-object v2, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    iget v4, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    aput v3, v2, v4

    .line 100
    iget-object v2, p0, Lorg/apache/commons/math3/random/Well512a;->v:[I

    aput v1, v2, v0

    .line 101
    iput v0, p0, Lorg/apache/commons/math3/random/Well512a;->index:I

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v1, p1

    return p1
.end method
