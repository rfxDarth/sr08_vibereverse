.class public Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "Percentile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_CACHED_LEVELS:I = 0xa

.field private static final MIN_SELECT_SIZE:I = 0xf

.field private static final serialVersionUID:J = -0x7049c6862ae14530L


# instance fields
.field private cachedPivots:[I

.field private quantile:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 108
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    .line 118
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    .line 130
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 501
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 502
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setData([D)V

    .line 504
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    if-eqz v0, :cond_0

    .line 505
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-void
.end method

.method private insertionSort([DII)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_1

    .line 444
    aget-wide v1, p1, v0

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-lt v3, p2, :cond_0

    .line 446
    aget-wide v4, p1, v3

    cmpg-double v6, v1, v4

    if-gez v6, :cond_0

    add-int/lit8 v6, v3, 0x1

    .line 447
    aput-wide v4, p1, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 450
    aput-wide v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private partition([DIII)I
    .locals 8

    .line 407
    aget-wide v0, p1, p4

    .line 408
    aget-wide v2, p1, p2

    aput-wide v2, p1, p4

    add-int/lit8 p4, p2, 0x1

    add-int/lit8 v2, p3, -0x1

    :cond_0
    :goto_0
    if-ge p4, v2, :cond_3

    :goto_1
    if-ge p4, v2, :cond_1

    .line 413
    aget-wide v3, p1, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p4, v2, :cond_2

    .line 416
    aget-wide v3, p1, p4

    cmpg-double v5, v3, v0

    if-gez v5, :cond_2

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    if-ge p4, v2, :cond_0

    .line 421
    aget-wide v3, p1, p4

    add-int/lit8 v5, p4, 0x1

    .line 422
    aget-wide v6, p1, v2

    aput-wide v6, p1, p4

    add-int/lit8 p4, v2, -0x1

    .line 423
    aput-wide v3, p1, v2

    move v2, p4

    move p4, v5

    goto :goto_0

    :cond_3
    if-ge p4, p3, :cond_4

    .line 427
    aget-wide v2, p1, p4

    cmpl-double p3, v2, v0

    if-lez p3, :cond_5

    :cond_4
    add-int/lit8 p4, p4, -0x1

    .line 430
    :cond_5
    aget-wide v2, p1, p4

    aput-wide v2, p1, p2

    .line 431
    aput-wide v0, p1, p4

    return p4
.end method

.method private select([D[II)D
    .locals 5

    .line 321
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sub-int v3, v0, v1

    const/16 v4, 0xf

    if-le v3, v4, :cond_4

    .line 327
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget v3, p2, v2

    if-ltz v3, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->medianOf3([DII)I

    move-result v3

    invoke-direct {p0, p1, v1, v0, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->partition([DIII)I

    move-result v3

    .line 334
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 335
    aput v3, p2, v2

    :cond_1
    :goto_1
    if-ne p3, v3, :cond_2

    .line 341
    aget-wide p2, p1, p3

    return-wide p2

    :cond_2
    if-ge p3, v3, :cond_3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 345
    array-length v0, p2

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    .line 349
    array-length v1, p2

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 356
    :cond_4
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->insertionSort([DII)V

    .line 357
    aget-wide p2, p1, p3

    return-wide p2
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1

    .line 485
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    .line 487
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    return-object v0
.end method

.method public evaluate(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    const/4 v3, 0x0

    .line 202
    array-length v4, p1

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 231
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DIID)D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    const/4 v0, 0x0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    cmpl-double v3, p4, v1

    if-gtz v3, :cond_5

    const-wide/16 v3, 0x0

    cmpg-double v5, p4, v3

    if-lez v5, :cond_5

    if-nez p3, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    .line 277
    aget-wide p2, p1, p2

    return-wide p2

    :cond_1
    int-to-double v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, v4, v6

    mul-double p4, p4, v8

    div-double/2addr p4, v1

    .line 281
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    double-to-int v8, v1

    sub-double v1, p4, v1

    .line 286
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v9

    if-ne p1, v9, :cond_2

    .line 287
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object p1

    .line 288
    iget-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    .line 290
    :cond_2
    new-array v9, p3, [D

    .line 291
    invoke-static {p1, p2, v9, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x3ff

    .line 292
    new-array p2, p1, [I

    const/4 p1, -0x1

    .line 293
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    move-object p1, v9

    :goto_0
    cmpg-double v9, p4, v6

    if-gez v9, :cond_3

    .line 297
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->select([D[II)D

    move-result-wide p1

    return-wide p1

    :cond_3
    cmpl-double v0, p4, v4

    if-ltz v0, :cond_4

    sub-int/2addr p3, v3

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->select([D[II)D

    move-result-wide p1

    return-wide p1

    :cond_4
    add-int/lit8 p3, v8, -0x1

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->select([D[II)D

    move-result-wide p3

    .line 303
    invoke-direct {p0, p1, p2, v8}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->select([D[II)D

    move-result-wide p1

    sub-double/2addr p1, p3

    mul-double v1, v1, p1

    add-double/2addr p3, v1

    return-wide p3

    .line 270
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x64

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public getQuantile()D
    .locals 2

    .line 461
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-wide v0
.end method

.method medianOf3([DII)I
    .locals 7

    add-int/lit8 p3, p3, -0x1

    sub-int v0, p3, p2

    .line 371
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 372
    aget-wide v1, p1, p2

    .line 373
    aget-wide v3, p1, v0

    .line 374
    aget-wide v5, p1, p3

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    cmpg-double p1, v3, v5

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double p1, v1, v5

    if-gez p1, :cond_2

    goto :goto_0

    :cond_1
    cmpg-double p1, v1, v5

    if-gez p1, :cond_3

    :cond_2
    return p2

    :cond_3
    cmpg-double p1, v3, v5

    if-gez p1, :cond_4

    :goto_0
    return p3

    :cond_4
    :goto_1
    return v0
.end method

.method public setData([D)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ff

    .line 139
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    .line 140
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 142
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    return-void
.end method

.method public setData([DII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ff

    .line 152
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    .line 153
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 155
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([DII)V

    return-void
.end method

.method public setQuantile(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 477
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-void

    .line 474
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method
