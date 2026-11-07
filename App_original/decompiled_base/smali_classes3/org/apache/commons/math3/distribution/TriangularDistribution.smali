.class public Lorg/apache/commons/math3/distribution/TriangularDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "TriangularDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1330230L


# instance fields
.field private final a:D

.field private final b:D

.field private final c:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 61
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/TriangularDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    cmpl-double p1, p2, p6

    if-gez p1, :cond_2

    const/4 p1, 0x1

    cmpg-double v0, p4, p2

    if-ltz v0, :cond_1

    cmpl-double v0, p4, p6

    if-gtz v0, :cond_0

    .line 96
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    .line 97
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    .line 98
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    .line 99
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide p1

    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 92
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_LARGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-direct {p2, p3, p4, p5, p1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 88
    :cond_1
    new-instance p6, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p6, p7, p4, p2, p1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p6

    .line 83
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p5, 0x0

    invoke-direct {p1, p4, p2, p3, p5}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 10

    .line 175
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1

    .line 178
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    sub-double v4, p1, v0

    sub-double/2addr p1, v0

    mul-double v4, v4, p1

    .line 180
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr p1, v0

    sub-double/2addr v2, v0

    mul-double p1, p1, v2

    div-double/2addr v4, p1

    return-wide v4

    .line 183
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpl-double v4, p1, v2

    if-nez v4, :cond_2

    sub-double/2addr v2, v0

    .line 184
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr p1, v0

    div-double/2addr v2, p1

    return-wide v2

    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, p1

    if-gez v6, :cond_3

    .line 186
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_3

    sub-double v8, v6, p1

    sub-double p1, v6, p1

    mul-double v8, v8, p1

    sub-double p1, v6, v0

    sub-double/2addr v6, v2

    mul-double p1, p1, v6

    div-double/2addr v8, p1

    sub-double/2addr v4, v8

    :cond_3
    return-wide v4
.end method

.method public density(D)D
    .locals 11

    .line 142
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v0

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v6, v0, p1

    if-gtz v6, :cond_1

    .line 145
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v8, p1, v6

    if-gez v8, :cond_1

    sub-double/2addr p1, v0

    mul-double p1, p1, v4

    .line 147
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr v2, v0

    sub-double/2addr v6, v0

    mul-double v2, v2, v6

    div-double/2addr p1, v2

    return-wide p1

    .line 150
    :cond_1
    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpl-double v8, p1, v6

    if-nez v8, :cond_2

    .line 151
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr p1, v0

    div-double/2addr v4, p1

    return-wide v4

    :cond_2
    cmpg-double v8, v6, p1

    if-gez v8, :cond_3

    .line 153
    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    cmpg-double v10, p1, v8

    if-gtz v10, :cond_3

    sub-double p1, v8, p1

    mul-double p1, p1, v4

    sub-double v0, v8, v0

    sub-double/2addr v8, v6

    mul-double v0, v0, v8

    div-double/2addr p1, v0

    return-wide p1

    :cond_3
    return-wide v2
.end method

.method public getMode()D
    .locals 2

    .line 108
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    .line 201
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 10

    .line 211
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    mul-double v2, v0, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    mul-double v8, v0, v4

    sub-double/2addr v2, v8

    mul-double v0, v0, v6

    sub-double/2addr v2, v0

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 223
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 235
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-gtz v4, :cond_3

    cmpl-double v5, p1, v0

    if-nez v5, :cond_0

    .line 266
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    return-wide p1

    :cond_0
    if-nez v4, :cond_1

    .line 269
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    return-wide p1

    .line 271
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double v6, v0, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double v10, v8, v4

    div-double/2addr v6, v10

    cmpg-double v10, p1, v6

    if-gez v10, :cond_2

    sub-double/2addr v8, v4

    mul-double p1, p1, v8

    sub-double/2addr v0, v4

    mul-double p1, p1, v0

    .line 272
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p1

    add-double/2addr v4, p1

    return-wide v4

    :cond_2
    sub-double/2addr v2, p1

    sub-double p1, v8, v4

    mul-double v2, v2, p1

    sub-double p1, v8, v0

    mul-double v2, v2, p1

    .line 274
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p1

    sub-double/2addr v8, p1

    return-wide v8

    .line 263
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
