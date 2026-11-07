.class public Lorg/apache/commons/math3/distribution/UniformRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "UniformRealDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x133022dL


# instance fields
.field private final lower:D

.field private final upper:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 53
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 66
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide p5, p3

    move-wide p3, p1

    .line 82
    new-instance p2, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {p2}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    cmpl-double p1, p2, p4

    if-gez p1, :cond_0

    .line 126
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    .line 127
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    return-void

    .line 121
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p1, v0, p2, p3, p4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 5

    .line 140
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 143
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    :cond_1
    sub-double/2addr p1, v0

    sub-double/2addr v2, v0

    div-double/2addr p1, v2

    return-wide p1
.end method

.method public density(D)D
    .locals 5

    .line 132
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    div-double/2addr p1, v2

    return-wide p1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getNumericalMean()D
    .locals 4

    .line 165
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .line 175
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    sub-double/2addr v0, v2

    mul-double v0, v0, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 188
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 200
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

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

    .line 155
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    sub-double/2addr v0, v2

    mul-double p1, p1, v0

    add-double/2addr p1, v2

    return-wide p1

    .line 153
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

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sample()D
    .locals 6

    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 228
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->upper:D

    mul-double v2, v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;->lower:D

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    return-wide v2
.end method
