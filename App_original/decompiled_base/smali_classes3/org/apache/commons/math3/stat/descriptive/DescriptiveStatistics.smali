.class public Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
.super Ljava/lang/Object;
.source "DescriptiveStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# static fields
.field public static final INFINITE_WINDOW:I = -0x1

.field private static final SET_QUANTILE_METHOD_NAME:Ljava/lang/String; = "setQuantile"

.field private static final serialVersionUID:J = 0x395b9ac8227c57e8L


# instance fields
.field private eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

.field private geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field protected windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 82
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 85
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 88
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 91
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 94
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 97
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 100
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 103
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 109
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 112
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 82
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 85
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 88
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 91
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 94
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 97
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 100
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 103
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 109
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 112
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->setWindowSize(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 82
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 85
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 88
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 91
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 94
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 97
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 100
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 103
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 109
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 112
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 153
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 82
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 85
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 88
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 91
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 94
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 97
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 100
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 103
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Skewness;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 106
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 109
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 112
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    if-eqz p1, :cond_0

    .line 141
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    :cond_0
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 745
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 746
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy()Lorg/apache/commons/math3/util/ResizableDoubleArray;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    .line 749
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    iput v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    .line 752
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 753
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 754
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 755
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 756
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 757
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 758
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 759
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 760
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 761
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 5

    .line 165
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElementRolling(D)D

    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 169
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    :cond_1
    return-void

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    return-void
.end method

.method public apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->compute(Lorg/apache/commons/math3/util/MathArrays$Function;)D

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->clear()V

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .locals 1

    .line 729
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    .line 731
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    return-object v0
.end method

.method public getElement(I)D
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElement(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeometricMean()D
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getGeometricMeanImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getKurtosis()D
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getKurtosisImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMax()D
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMaxImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 561
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMean()D
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMeanImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 497
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMin()D
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getMinImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 582
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getN()J
    .locals 2

    .line 303
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPercentile(D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 427
    const-string v0, "setQuantile"

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    instance-of v2, v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    if-eqz v2, :cond_0

    .line 428
    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 431
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    invoke-virtual {v1, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    .line 443
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 439
    :catch_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-direct {p1, p2, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 435
    :catch_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v0, v2, v3

    invoke-direct {p1, p2, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public declared-synchronized getPercentileImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPopulationVariance()D
    .locals 2

    .line 242
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSkewness()D
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSkewnessImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSortedValues()[D
    .locals 1

    .line 393
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getValues()[D

    move-result-object v0

    .line 394
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    return-object v0
.end method

.method public getStandardDeviation()D
    .locals 5

    .line 252
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getSum()D
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSumImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 709
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSumsq()D
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSumsqImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 688
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getValues()[D
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElements()[D

    move-result-object v0

    return-object v0
.end method

.method public getVariance()D
    .locals 2

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWindowSize()I
    .locals 1

    .line 338
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    return v0
.end method

.method public removeMostRecentValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardMostRecentElements(I)V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 185
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public replaceMostRecentValue(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->substituteMostRecentElement(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public declared-synchronized setGeometricMeanImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 530
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->geometricMeanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setKurtosisImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 551
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->kurtosisImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMaxImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 572
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMeanImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 508
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMinImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 593
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPercentileImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 620
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setQuantile"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->percentileImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 632
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 628
    :catch_1
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "setQuantile"

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 624
    :catch_2
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "setQuantile"

    aput-object p1, v0, v2

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSkewnessImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 656
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->skewnessImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSumImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 720
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSumsqImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 699
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setVarianceImpl(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)V
    .locals 0

    monitor-enter p0

    .line 678
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setWindowSize(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_WINDOW_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 361
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->windowSize:I

    if-eq p1, v0, :cond_2

    .line 366
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 367
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->eDA:Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getNumElements()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardFrontElements(I)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DescriptiveStatistics:\nn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nmax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMax()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nmean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nstd dev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :try_start_0
    const-string v2, "median: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getPercentile(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    const-string v2, "median: unavailable\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :goto_0
    const-string v2, "skewness: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getSkewness()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\nkurtosis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getKurtosis()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
