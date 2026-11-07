.class Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LexicographicIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[I>;"
    }
.end annotation


# instance fields
.field private final c:[I

.field private j:I

.field private final k:I

.field private more:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    .line 208
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    add-int/lit8 v1, p2, 0x3

    .line 209
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-lt p2, p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-gt v0, p2, :cond_1

    .line 216
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v3, v0, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v2, p2, 0x1

    aput p1, v0, v2

    add-int/lit8 p1, p2, 0x2

    .line 220
    aput v1, v0, p1

    .line 221
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    return-void

    .line 211
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->next()[I

    move-result-object v0

    return-object v0
.end method

.method public next()[I
    .locals 8

    .line 235
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    if-eqz v0, :cond_5

    .line 239
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    new-array v1, v0, [I

    .line 240
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    if-lez v0, :cond_0

    .line 247
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aput v0, v2, v0

    sub-int/2addr v0, v3

    .line 248
    iput v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    return-object v1

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aget v2, v0, v3

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    aget v7, v0, v6

    if-ge v5, v7, :cond_1

    add-int/2addr v2, v3

    .line 253
    aput v2, v0, v3

    return-object v1

    .line 256
    :cond_1
    iput v6, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 261
    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x2

    aput v7, v2, v6

    .line 262
    aget v6, v2, v5

    add-int/2addr v6, v3

    add-int/lit8 v7, v5, 0x1

    .line 263
    aget v2, v2, v7

    if-ne v6, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 264
    iput v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v6

    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :cond_3
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    if-le v0, v5, :cond_4

    .line 271
    iput-boolean v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    return-object v1

    .line 275
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aput v2, v4, v0

    sub-int/2addr v0, v3

    .line 276
    iput v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    return-object v1

    .line 236
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
