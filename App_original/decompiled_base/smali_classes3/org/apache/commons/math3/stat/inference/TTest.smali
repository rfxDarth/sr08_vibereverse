.class public Lorg/apache/commons/math3/stat/inference/TTest;
.super Ljava/lang/Object;
.source "TTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1174
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 1175
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1172
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private checkSampleData([D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1153
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    .line 1154
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v2, p1, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1151
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private checkSignificanceLevel(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-lez v4, :cond_0

    cmpl-double v4, p1, v0

    if-gtz v4, :cond_0

    return-void

    .line 1134
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v4, v5, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4
.end method


# virtual methods
.method protected df(DDDD)D
    .locals 6

    div-double v0, p1, p5

    div-double v2, p3, p7

    add-double/2addr v0, v2

    mul-double v0, v0, v0

    mul-double p1, p1, p1

    mul-double v2, p5, p5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p5, v4

    mul-double v2, v2, p5

    div-double/2addr p1, v2

    mul-double p3, p3, p3

    mul-double p5, p7, p7

    sub-double/2addr p7, v4

    mul-double p5, p5, p7

    div-double/2addr p3, p5

    add-double/2addr p1, p3

    div-double/2addr v0, p1

    return-wide v0
.end method

.method protected homoscedasticT(DDDDDD)D
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, p9, v0

    mul-double v2, v2, p5

    sub-double p5, p11, v0

    mul-double p5, p5, p7

    add-double/2addr v2, p5

    add-double p5, p9, p11

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr p5, v4

    div-double/2addr v2, p5

    sub-double/2addr p1, p3

    div-double p3, v0, p9

    div-double v0, v0, p11

    add-double/2addr p3, v0

    mul-double v2, v2, p3

    .line 1042
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public homoscedasticT(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 411
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 412
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public homoscedasticT([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 277
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 279
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method protected homoscedasticTTest(DDDDDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1117
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    add-double/2addr p9, p11

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    sub-double/2addr p9, p3

    .line 1119
    new-instance p5, Lorg/apache/commons/math3/distribution/TDistribution;

    invoke-direct {p5, p9, p10}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    neg-double p1, p1

    .line 1120
    invoke-virtual {p5, p1, p2}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    mul-double p1, p1, p3

    return-wide p1
.end method

.method public homoscedasticTTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 900
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 901
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 902
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public homoscedasticTTest([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 677
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 678
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 680
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public homoscedasticTTest([D[DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 808
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 809
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest([D[D)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pairedT([D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 86
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 87
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    .line 88
    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length p1, p1

    int-to-double v7, p1

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public pairedTTest([D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 134
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    .line 135
    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length p1, p1

    int-to-double v7, p1

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public pairedTTest([D[DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 182
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 183
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedTTest([D[D)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected t(DDDD)D
    .locals 0

    sub-double/2addr p1, p3

    div-double/2addr p5, p7

    .line 1004
    invoke-static {p5, p6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method protected t(DDDDDD)D
    .locals 0

    sub-double/2addr p1, p3

    div-double/2addr p5, p9

    div-double/2addr p7, p11

    add-double/2addr p5, p7

    .line 1023
    invoke-static {p5, p6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public t(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 233
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 234
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t(D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 206
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 208
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length p3, p3

    int-to-double v7, p3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 362
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 363
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 364
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 317
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 318
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 320
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method protected tTest(DDDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1060
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    .line 1061
    new-instance p3, Lorg/apache/commons/math3/distribution/TDistribution;

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p7, p4

    invoke-direct {p3, p7, p8}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    neg-double p1, p1

    .line 1062
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double p1, p1, p3

    return-wide p1
.end method

.method protected tTest(DDDDDD)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1088
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    move-object p1, p0

    move-wide p2, p5

    move-wide p4, p7

    move-wide p6, p9

    move-wide p8, p11

    .line 1089
    invoke-virtual/range {p1 .. p9}, Lorg/apache/commons/math3/stat/inference/TTest;->df(DDDD)D

    move-result-wide p2

    .line 1090
    new-instance p1, Lorg/apache/commons/math3/distribution/TDistribution;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    neg-double p2, v0

    .line 1091
    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double p1, p1, p3

    return-wide p1
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 535
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 536
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 449
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 451
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length p3, p3

    int-to-double v7, p3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 853
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 854
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 855
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 631
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 633
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 584
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 585
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p1

    cmpg-double p3, p1, p4

    if-gez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tTest(D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 497
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 498
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(D[D)D

    move-result-wide p1

    cmpg-double p3, p1, p4

    if-gez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 971
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 972
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tTest([D[DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 745
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 746
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest([D[D)D

    move-result-wide p1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
