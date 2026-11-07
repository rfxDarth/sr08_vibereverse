.class public abstract Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.super Ljava/lang/Object;
.source "AbstractIntegerDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/distribution/IntegerDistribution;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfe88ba81dead5b5L


# instance fields
.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field protected final randomData:Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method private checkedCumulativeProbability(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathInternalError;
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 230
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    if-lt p2, p1, :cond_0

    .line 86
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->cumulativeProbability(I)D

    move-result-wide p1

    sub-double/2addr v0, p1

    return-wide v0

    .line 83
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public inverseCumulativeProbability(D)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v4, 0x0

    cmpg-double v6, v1, v4

    if-ltz v6, :cond_6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v1, v6

    if-gtz v8, :cond_6

    .line 105
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getSupportLowerBound()I

    move-result v9

    cmpl-double v10, v1, v4

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_1

    .line 110
    invoke-direct {v0, v9}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v10

    cmpl-double v12, v10, v1

    if-ltz v12, :cond_2

    :goto_0
    return v9

    :cond_1
    add-int/lit8 v9, v9, -0x1

    .line 118
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getSupportUpperBound()I

    move-result v10

    if-nez v8, :cond_3

    return v10

    .line 125
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getNumericalMean()D

    move-result-wide v11

    .line 126
    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->getNumericalVariance()D

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 127
    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5

    cmpl-double v8, v13, v4

    if-eqz v8, :cond_5

    sub-double v4, v6, v1

    div-double/2addr v4, v1

    .line 130
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double v15, v4, v13

    sub-double v15, v11, v15

    move-wide/from16 v17, v4

    const/4 v8, 0x1

    int-to-double v3, v9

    cmpl-double v5, v15, v3

    if-lez v5, :cond_4

    .line 133
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v9, v3, -0x1

    :cond_4
    div-double v6, v6, v17

    mul-double v6, v6, v13

    add-double/2addr v11, v6

    int-to-double v3, v10

    cmpg-double v5, v11, v3

    if-gez v5, :cond_5

    .line 138
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v10, v3, -0x1

    .line 142
    :cond_5
    invoke-virtual {v0, v1, v2, v9, v10}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->solveInverseCumulativeProbability(DII)I

    move-result v1

    return v1

    :cond_6
    const/4 v8, 0x1

    .line 102
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3
.end method

.method public logProbability(I)D
    .locals 2

    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->probability(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->reSeed(J)V

    return-void
.end method

.method public sample()I
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->inverseCumulativeProbability(D)I

    move-result v0

    return v0
.end method

.method public sample(I)[I
    .locals 3

    if-lez p1, :cond_1

    .line 207
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->sample()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 204
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method protected solveInverseCumulativeProbability(DII)I
    .locals 4

    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-ge v0, p4, :cond_3

    add-int v0, p3, p4

    .line 159
    div-int/lit8 v0, v0, 0x2

    if-lt v0, p3, :cond_0

    if-le v0, p4, :cond_1

    :cond_0
    sub-int v0, p4, p3

    .line 166
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 169
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v1

    cmpl-double v3, v1, p1

    if-ltz v3, :cond_2

    move p4, v0

    goto :goto_0

    :cond_2
    move p3, v0

    goto :goto_0

    :cond_3
    return p4
.end method
