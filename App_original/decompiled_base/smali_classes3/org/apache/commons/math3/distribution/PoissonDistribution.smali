.class public Lorg/apache/commons/math3/distribution/PoissonDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "PoissonDistribution.java"


# static fields
.field public static final DEFAULT_EPSILON:D = 1.0E-12

.field public static final DEFAULT_MAX_ITERATIONS:I = 0x989680

.field private static final serialVersionUID:J = -0x2e7d5c3e7619058dL


# instance fields
.field private final epsilon:D

.field private final exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

.field private final maxIterations:I

.field private final mean:D

.field private final normal:Lorg/apache/commons/math3/distribution/NormalDistribution;


# direct methods
.method public constructor <init>(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    const v5, 0x989680

    move-object v0, p0

    move-wide v1, p1

    .line 74
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const v5, 0x989680

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 137
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 90
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 150
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-wide/from16 v2, p2

    .line 110
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double v4, v2, v0

    if-lez v4, :cond_0

    .line 115
    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    move-wide/from16 v0, p4

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    move/from16 v0, p6

    .line 117
    iput v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    .line 120
    new-instance v0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    .line 122
    new-instance v8, Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3e112e0be826d695L    # 1.0E-9

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    iput-object v8, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    return-void

    .line 113
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MEAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method private nextPoisson(D)J
    .locals 39

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v1, v3

    if-gez v9, :cond_1

    neg-double v3, v1

    .line 300
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    :goto_0
    long-to-double v9, v5

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double v11, v11, v1

    cmpg-double v13, v9, v11

    if-gez v13, :cond_0

    .line 306
    iget-object v9, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v9}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v9

    mul-double v7, v7, v9

    cmpl-double v9, v7, v3

    if-ltz v9, :cond_0

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    goto :goto_0

    :cond_0
    return-wide v5

    .line 316
    :cond_1
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 318
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    double-to-int v11, v3

    .line 319
    invoke-static {v11}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmpg-double v15, v1, v13

    if-gez v15, :cond_2

    goto :goto_1

    .line 320
    :cond_2
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v5

    :goto_1
    const-wide/high16 v1, 0x4040000000000000L    # 32.0

    mul-double v1, v1, v3

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v13

    add-double/2addr v1, v7

    .line 321
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v17, v1, v15

    mul-double v19, v3, v15

    add-double v21, v19, v1

    mul-double v13, v13, v21

    .line 324
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    const-wide/high16 v23, 0x4020000000000000L    # 8.0

    mul-double v23, v23, v3

    div-double v23, v7, v23

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v25

    mul-double v13, v13, v25

    div-double v25, v21, v1

    move-wide/from16 v27, v7

    neg-double v7, v1

    add-double v29, v1, v27

    mul-double v7, v7, v29

    div-double v7, v7, v21

    .line 325
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v7

    mul-double v7, v7, v25

    add-double v29, v13, v7

    add-double v29, v29, v27

    div-double v13, v13, v29

    div-double v7, v7, v29

    move-wide/from16 p1, v15

    .line 339
    :cond_3
    :goto_2
    iget-object v15, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v15}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v15

    const-wide/16 v29, 0x0

    cmpg-double v31, v15, v13

    if-gtz v31, :cond_6

    .line 341
    iget-object v15, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v15}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v15

    add-double v31, v3, v17

    .line 342
    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    mul-double v31, v31, v15

    const-wide/high16 v33, 0x3fe0000000000000L    # 0.5

    sub-double v31, v31, v33

    cmpl-double v33, v31, v1

    if-gtz v33, :cond_3

    move-wide/from16 v33, v1

    neg-double v1, v3

    cmpg-double v35, v31, v1

    if-gez v35, :cond_4

    :goto_3
    move-wide/from16 v1, v33

    goto :goto_2

    :cond_4
    cmpg-double v1, v31, v29

    if-gez v1, :cond_5

    .line 346
    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    goto :goto_4

    :cond_5
    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v1

    :goto_4
    move-wide/from16 v35, v1

    .line 347
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v1

    neg-double v1, v1

    mul-double v15, v15, v15

    div-double v15, v15, p1

    sub-double/2addr v1, v15

    add-double v1, v1, v23

    goto :goto_5

    :cond_6
    move-wide/from16 v33, v1

    add-double v1, v13, v7

    cmpl-double v31, v15, v1

    if-lez v31, :cond_7

    goto/16 :goto_8

    .line 354
    :cond_7
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v1

    mul-double v1, v1, v25

    add-double v31, v33, v1

    .line 355
    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v1

    .line 356
    iget-object v15, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    move-wide/from16 v35, v1

    invoke-virtual {v15}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v0

    neg-double v0, v0

    add-double v15, v31, v27

    mul-double v15, v15, v33

    div-double v15, v15, v21

    sub-double v1, v0, v15

    :goto_5
    move-wide v15, v1

    move-wide/from16 v1, v35

    cmpg-double v0, v31, v29

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    add-double v29, v1, v27

    mul-double v31, v1, v29

    move-wide/from16 v35, v1

    div-double v1, v31, v19

    move-wide/from16 v31, v3

    neg-double v3, v1

    cmpg-double v37, v15, v3

    if-gez v37, :cond_9

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    mul-double v3, v35, p1

    add-double v3, v3, v27

    const-wide/high16 v37, 0x4018000000000000L    # 6.0

    mul-double v37, v37, v31

    div-double v3, v3, v37

    sub-double v3, v3, v27

    mul-double v3, v3, v1

    mul-double v1, v1, v1

    move-wide/from16 v37, v1

    int-to-double v0, v0

    mul-double v0, v0, v29

    add-double v0, v31, v0

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v29

    div-double v1, v37, v0

    sub-double v0, v3, v1

    cmpg-double v2, v15, v0

    if-gez v2, :cond_a

    :goto_7
    add-double v3, v31, v35

    goto :goto_8

    :cond_a
    cmpl-double v0, v15, v3

    if-lez v0, :cond_c

    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v3, v31

    goto/16 :goto_3

    :cond_c
    mul-double v1, v35, v9

    add-double v3, v35, v31

    double-to-int v0, v3

    .line 374
    invoke-static {v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v29

    sub-double v1, v1, v29

    add-double/2addr v1, v11

    cmpg-double v0, v15, v1

    if-gez v0, :cond_b

    :goto_8
    double-to-long v0, v3

    add-long/2addr v5, v0

    return-wide v5
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 12

    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const v0, 0x7fffffff

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ne p1, v0, :cond_1

    return-wide v1

    :cond_1
    int-to-double v3, p1

    add-double v5, v3, v1

    .line 192
    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    iget v11, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    invoke-static/range {v5 .. v11}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMean()D
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportUpperBound()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logProbability(I)D
    .locals 8

    if-ltz p1, :cond_2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 175
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    neg-double v0, v0

    return-wide v0

    :cond_1
    int-to-double v0, p1

    .line 177
    invoke-static {v0, v1}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->getStirlingError(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/distribution/SaddlePointExpansion;->getDeviancePart(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v6

    sub-double/2addr v2, v0

    return-wide v2

    :cond_2
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public normalApproximateProbability(I)D
    .locals 5

    .line 209
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public probability(I)D
    .locals 4

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->logProbability(I)D

    move-result-wide v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 165
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample()I
    .locals 4

    .line 290
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
