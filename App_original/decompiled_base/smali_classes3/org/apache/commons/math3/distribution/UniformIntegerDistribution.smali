.class public Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "UniformIntegerDistribution.java"


# static fields
.field private static final serialVersionUID:J = 0x133022dL


# instance fields
.field private final lower:I

.field private final upper:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    if-ge p2, p3, :cond_0

    .line 76
    iput p2, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    .line 77
    iput p3, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    return-void

    .line 72
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, p3, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 6

    .line 90
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    if-ge p1, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 93
    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-le p1, v1, :cond_1

    return-wide v2

    :cond_1
    sub-int/2addr p1, v0

    int-to-double v4, p1

    add-double/2addr v4, v2

    sub-int/2addr v1, v0

    int-to-double v0, v1

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public getNumericalMean()D
    .locals 4

    .line 106
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    .line 116
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    mul-double v0, v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public probability(I)D
    .locals 4

    .line 82
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-double v0, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sample()I
    .locals 3

    .line 158
    iget v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt()I

    move-result v0

    .line 165
    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->lower:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->upper:I

    if-gt v0, v1, :cond_0

    return v0

    .line 172
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
