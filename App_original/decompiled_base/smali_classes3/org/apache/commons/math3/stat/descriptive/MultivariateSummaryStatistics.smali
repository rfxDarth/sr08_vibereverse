.class public Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;
.super Ljava/lang/Object;
.source "MultivariateSummaryStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalMultivariateSummary;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f8769bfad0f29deL


# instance fields
.field private covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

.field private geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private k:I

.field private maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private n:J

.field private sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>(IZ)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    .line 116
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    .line 118
    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 119
    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 120
    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 121
    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 122
    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 123
    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 124
    new-array v0, p1, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    aput-object v2, v1, v0

    .line 128
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    aput-object v2, v1, v0

    .line 129
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    aput-object v2, v1, v0

    .line 130
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    aput-object v2, v1, v0

    .line 131
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    aput-object v2, v1, v0

    .line 132
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    aput-object v2, v1, v0

    .line 133
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 335
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    .line 336
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    if-lez p3, :cond_0

    .line 338
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    aget-wide v0, p2, p3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkDimension(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 632
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-ne p1, v0, :cond_0

    return-void

    .line 633
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method private checkEmpty()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 620
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 621
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D
    .locals 5

    .line 186
    array-length v0, p1

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 188
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->checkEmpty()V

    .line 422
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->checkDimension(I)V

    const/4 v0, 0x0

    .line 423
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public addValue([D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 149
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->checkDimension(I)V

    const/4 v0, 0x0

    .line 150
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-ge v0, v1, :cond_0

    .line 151
    aget-wide v1, p1, v0

    .line 152
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v3, v3, v0

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 153
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v3, v3, v0

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 154
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v3, v3, v0

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 155
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v3, v3, v0

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 156
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v3, v3, v0

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 157
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v3, v3, v0

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 158
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v3, v3, v0

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->increment([D)V

    .line 161
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    return-void
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 349
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    const/4 v0, 0x0

    .line 350
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 352
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 353
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 354
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 355
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 356
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 357
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 373
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 376
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;

    .line 377
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->equalsIncludingNaN([D[D)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->getResult()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 169
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    return v0
.end method

.method public getGeoMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getGeometricMean()[D
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMax()[D
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMaxImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getMean()[D
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getMin()[D
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMinImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getN()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->n:J

    return-wide v0
.end method

.method public getStandardDeviation()[D
    .locals 6

    .line 245
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    new-array v0, v0, [D

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 247
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    return-object v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    const-wide/16 v1, 0x0

    .line 249
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    return-object v0

    .line 251
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->covarianceImpl:Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->getResult()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    const/4 v2, 0x0

    .line 252
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->k:I

    if-ge v2, v3, :cond_2

    .line 253
    invoke-interface {v1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSum()[D
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getSumImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 432
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getSumLog()[D
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getSumLogImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getSumSq()[D
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getResults([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)[D

    move-result-object v0

    return-object v0
.end method

.method public getSumsqImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 396
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 397
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 398
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 399
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 400
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 401
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 402
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 403
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 404
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setGeoMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->geoMeanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setMaxImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->maxImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->meanImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setMinImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->minImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setSumImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setSumLogImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumLogImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setSumsqImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->sumSqImpl:[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 310
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultivariateSummaryStatistics:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "n: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v3

    const-string v4, "min: "

    const-string v5, ", "

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v3

    const-string v4, "max: "

    const-string v5, ", "

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v3

    const-string v4, "mean: "

    const-string v5, ", "

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v3

    const-string v4, "geometric mean: "

    const-string v5, ", "

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v3

    const-string v4, "sum of squares: "

    const-string v5, ", "

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v3

    const-string v4, "sum of logarithms: "

    const-string v5, ", "

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getStandardDeviation()[D

    move-result-object v3

    const-string v4, "standard deviation: "

    const-string v5, ", "

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->append(Ljava/lang/StringBuilder;[DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "covariance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
