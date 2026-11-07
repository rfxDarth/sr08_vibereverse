.class public Lorg/apache/commons/math3/stat/regression/RegressionResults;
.super Ljava/lang/Object;
.source "RegressionResults.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADJRSQ_IDX:I = 0x4

.field private static final MSE_IDX:I = 0x3

.field private static final RSQ_IDX:I = 0x2

.field private static final SSE_IDX:I = 0x0

.field private static final SST_IDX:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final containsConstant:Z

.field private final globalFitInfo:[D

.field private final isSymmetricVCD:Z

.field private final nobs:J

.field private final parameters:[D

.field private final rank:I

.field private final varCovData:[[D


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 68
    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    const-wide/16 v1, -0x1

    .line 70
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    .line 72
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 73
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    return-void
.end method

.method public constructor <init>([D[[DZJIDDDZZ)V
    .locals 12

    move-wide/from16 v0, p4

    move/from16 v2, p6

    move/from16 v3, p13

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    if-eqz p14, :cond_0

    .line 101
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 102
    array-length p1, p2

    new-array p1, p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    const/4 p1, 0x0

    .line 103
    :goto_0
    array-length v5, p2

    if-ge p1, v5, :cond_1

    .line 104
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v6, p2, p1

    invoke-static {v6}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v6

    aput-object v6, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 108
    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    .line 110
    :cond_1
    iput-boolean p3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 111
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    .line 112
    iput v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    .line 113
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    const/4 p1, 0x5

    .line 114
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 115
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    const/4 p2, 0x1

    if-lez v2, :cond_3

    if-eqz v3, :cond_2

    mul-double v5, p7, p7

    long-to-double v7, v0

    div-double/2addr v5, v7

    sub-double v5, p9, v5

    goto :goto_1

    :cond_2
    move-wide/from16 v5, p9

    .line 118
    :goto_1
    aput-wide v5, p1, p2

    .line 122
    :cond_3
    aput-wide p11, p1, v4

    int-to-long v4, v2

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double v6, p11, v4

    const/4 v2, 0x3

    .line 123
    aput-wide v6, p1, v2

    .line 125
    aget-wide v6, p1, p2

    div-double v8, p11, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    const/4 p2, 0x2

    aput-wide v8, p1, p2

    const/4 p2, 0x4

    if-nez v3, :cond_4

    sub-double v2, v10, v8

    long-to-double v0, v0

    div-double/2addr v0, v4

    mul-double v2, v2, v0

    sub-double/2addr v10, v2

    .line 130
    aput-wide v10, p1, p2

    return-void

    :cond_4
    long-to-double v0, v0

    sub-double/2addr v0, v10

    mul-double v0, v0, p11

    mul-double v6, v6, v4

    div-double/2addr v0, v6

    sub-double/2addr v10, v0

    .line 134
    aput-wide v10, p1, p2

    return-void
.end method

.method private getVcvElement(II)D
    .locals 3

    .line 401
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    if-ne p1, p2, :cond_0

    .line 405
    aget-object p2, v0, p1

    aget-wide p1, p2, p1

    return-wide p1

    .line 406
    :cond_0
    aget-object v1, v0, p2

    array-length v2, v1

    if-lt p1, v2, :cond_1

    .line 407
    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0

    .line 409
    :cond_1
    aget-wide p1, v1, p1

    return-wide p1

    :cond_2
    const/4 v1, 0x0

    if-le p1, p2, :cond_3

    .line 413
    aget-object v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    aget-wide p1, v0, v1

    return-wide p1

    .line 415
    :cond_3
    aget-object v0, v0, v1

    add-int/lit8 v1, p2, 0x1

    mul-int v1, v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    aget-wide p1, v0, v1

    return-wide p1

    .line 419
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0
.end method


# virtual methods
.method public getAdjustedRSquared()D
    .locals 3

    .line 380
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getCovarianceOfParameters(II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_2

    .line 244
    array-length v2, v0

    if-ge p1, v2, :cond_2

    if-ltz p2, :cond_1

    .line 247
    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 250
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide p1

    return-wide p1

    .line 248
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 245
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public getErrorSumSquares()D
    .locals 3

    .line 330
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getMeanSquareError()D
    .locals 3

    .line 344
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x3

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getN()J
    .locals 2

    .line 274
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    return-wide v0
.end method

.method public getNumberOfParameters()I
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 265
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getParameterEstimate(I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    if-ltz p1, :cond_1

    .line 154
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 157
    aget-wide v1, v0, p1

    return-wide v1

    .line 155
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getParameterEstimates()[D
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    return-object v0
.end method

.method public getRSquared()D
    .locals 3

    .line 362
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getRegressionSumSquares()D
    .locals 5

    .line 308
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    sub-double/2addr v1, v3

    return-wide v1
.end method

.method public getStdErrorOfEstimate(I)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-ltz p1, :cond_2

    .line 191
    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 194
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v3

    .line 195
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v5, 0x1

    cmpl-double p1, v3, v5

    if-lez p1, :cond_1

    .line 196
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1

    .line 192
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getStdErrorOfEstimates()[D
    .locals 7

    .line 213
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 217
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 218
    invoke-direct {p0, v1, v1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v2

    .line 219
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x1

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 220
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 223
    aput-wide v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTotalSumSquares()D
    .locals 3

    .line 288
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public hasIntercept()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    return v0
.end method
