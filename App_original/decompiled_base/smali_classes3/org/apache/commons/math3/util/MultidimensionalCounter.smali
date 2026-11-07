.class public Lorg/apache/commons/math3/util/MultidimensionalCounter;
.super Ljava/lang/Object;
.source "MultidimensionalCounter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final dimension:I

.field private final last:I

.field private final size:[I

.field private final totalSize:I

.field private final uniCounterOffset:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    .line 173
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    .line 175
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 177
    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    .line 178
    aget v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 179
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    move v5, v4

    const/4 v6, 0x1

    .line 181
    :goto_1
    iget v7, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v5, v7, :cond_0

    .line 182
    aget v7, p1, v5

    mul-int v6, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 184
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aput v6, v5, v3

    .line 185
    aget v3, p1, v3

    mul-int v0, v0, v3

    move v3, v4

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aput v2, p1, v4

    if-lez v0, :cond_2

    .line 193
    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    return-void

    .line 190
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/util/MultidimensionalCounter;)[I
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    return-object p0
.end method


# virtual methods
.method public varargs getCount([I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 261
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 265
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v1, v3, :cond_1

    .line 266
    aget v3, p1, v1

    if-ltz v3, :cond_0

    .line 267
    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    aget v4, v4, v1

    if-ge v3, v4, :cond_0

    .line 271
    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aget v4, v4, v1

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    aget v1, v3, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 273
    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    aget p1, p1, v0

    add-int/2addr v2, p1

    return v2

    .line 262
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getCounts(I)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 223
    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    if-ge p1, v1, :cond_2

    .line 228
    iget v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 231
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->last:I

    if-ge v2, v4, :cond_1

    .line 233
    iget-object v4, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->uniCounterOffset:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    :goto_1
    if-gt v3, p1, :cond_0

    add-int/2addr v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v3, v4

    .line 240
    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v3

    .line 243
    aput p1, v1, v4

    return-object v1

    .line 225
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public getDimension()I
    .locals 1

    .line 211
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 282
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->totalSize:I

    return v0
.end method

.method public getSizes()[I
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->size:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
    .locals 1

    .line 202
    new-instance v0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;-><init>(Lorg/apache/commons/math3/util/MultidimensionalCounter;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 299
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter;->dimension:I

    if-ge v1, v2, :cond_0

    .line 300
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->getCount([I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
