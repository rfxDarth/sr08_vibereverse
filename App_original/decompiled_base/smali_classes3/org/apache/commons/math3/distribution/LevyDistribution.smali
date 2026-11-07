.class public Lorg/apache/commons/math3/distribution/LevyDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LevyDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x1332a0aL


# instance fields
.field private final c:D

.field private final halfC:D

.field private final mu:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 53
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    .line 54
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->c:D

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double p4, p4, p1

    .line 55
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4

    .line 106
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    .line 109
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    sub-double/2addr p1, v0

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/special/Erf;->erfc(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public density(D)D
    .locals 4

    .line 73
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_0
    sub-double/2addr p1, v0

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    div-double/2addr v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double v2, v0, v2

    .line 79
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    div-double/2addr v2, p1

    return-wide v2
.end method

.method public getLocation()D
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->c:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 148
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 118
    invoke-static {p1, p2}, Lorg/apache/commons/math3/special/Erf;->erfcInv(D)D

    move-result-wide p1

    .line 119
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    mul-double p1, p1, p1

    div-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0

    .line 116
    :cond_0
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

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 6

    .line 88
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_0
    sub-double/2addr p1, v0

    .line 93
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    div-double/2addr v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double v2, v0, v2

    .line 94
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    sub-double/2addr v2, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    sub-double/2addr v2, p1

    return-wide v2
.end method
