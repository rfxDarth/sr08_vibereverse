.class public abstract Lorg/apache/commons/math3/random/AbstractWell;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "AbstractWell.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xb590f627ca0d9acL


# instance fields
.field protected final i1:[I

.field protected final i2:[I

.field protected final i3:[I

.field protected final iRm1:[I

.field protected final iRm2:[I

.field protected index:I

.field protected final v:[I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 74
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method

.method protected constructor <init>(IIIII)V
    .locals 6

    .line 85
    filled-new-array {p5}, [I

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method

.method protected constructor <init>(IIIIJ)V
    .locals 8

    const/16 v0, 0x20

    ushr-long v0, p5, v0

    long-to-int v1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p5, v2

    long-to-int p6, p5

    .line 134
    filled-new-array {v1, p6}, [I

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method

.method protected constructor <init>(IIII[I)V
    .locals 4

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    add-int/lit8 p1, p1, 0x1f

    .line 102
    div-int/lit8 p1, p1, 0x20

    .line 103
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    .line 108
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm1:[I

    .line 109
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm2:[I

    .line 110
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->i1:[I

    .line 111
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->i2:[I

    .line 112
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->i3:[I

    :goto_0
    if-ge v0, p1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm1:[I

    add-int v2, v0, p1

    add-int/lit8 v3, v2, -0x1

    rem-int/2addr v3, p1

    aput v3, v1, v0

    .line 115
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm2:[I

    add-int/lit8 v2, v2, -0x2

    rem-int/2addr v2, p1

    aput v2, v1, v0

    .line 116
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->i1:[I

    add-int v2, v0, p2

    rem-int/2addr v2, p1

    aput v2, v1, v0

    .line 117
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->i2:[I

    add-int v2, v0, p3

    rem-int/2addr v2, p1

    aput v2, v1, v0

    .line 118
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->i3:[I

    add-int v2, v0, p4

    rem-int/2addr v2, p1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed([I)V

    return-void
.end method


# virtual methods
.method protected abstract next(I)I
.end method

.method public setSeed(I)V
    .locals 0

    .line 144
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed([I)V

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

    .line 181
    filled-new-array {v1, p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed([I)V

    return-void
.end method

.method public setSeed([I)V
    .locals 7

    if-nez p1, :cond_0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/AbstractWell;->setSeed(J)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v1, p1

    array-length v2, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 164
    array-length v0, p1

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 165
    array-length v3, p1

    sub-int v3, v0, v3

    aget v3, v1, v3

    int-to-long v3, v3

    const/16 v5, 0x1e

    shr-long v5, v3, v5

    xor-long/2addr v3, v5

    const-wide/32 v5, 0x6c078965

    mul-long v3, v3, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v4, v3

    .line 166
    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iput v2, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/AbstractWell;->clear()V

    return-void
.end method
