.class public abstract Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.super Ljava/lang/Object;
.source "AbstractMultipleLinearRegression.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/MultipleLinearRegression;


# instance fields
.field private noIntercept:Z

.field private xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private yVector:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    return-void
.end method


# virtual methods
.method protected abstract calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method protected abstract calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method protected calculateErrorVariance()D
    .locals 4

    .line 364
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 3

    .line 380
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method protected calculateYVariance()D
    .locals 2

    .line 349
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateErrorVariance()D
    .locals 2

    .line 313
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressandVariance()D
    .locals 2

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateYVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressionParameters()[D
    .locals 1

    .line 265
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public estimateRegressionParametersStandardErrors()[D
    .locals 9

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateRegressionParametersVariance()[[D

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v1

    const/4 v3, 0x0

    .line 291
    aget-object v4, v0, v3

    array-length v4, v4

    .line 292
    new-array v5, v4, [D

    :goto_0
    if-ge v3, v4, :cond_0

    .line 294
    aget-object v6, v0, v3

    aget-wide v7, v6, v3

    mul-double v7, v7, v1

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public estimateRegressionParametersVariance()[[D
    .locals 1

    .line 282
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method public estimateRegressionStandardError()D
    .locals 2

    .line 324
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateErrorVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateResiduals()[D
    .locals 3

    .line 273
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method protected getX()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method protected getY()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public isNoIntercept()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    return v0
.end method

.method public newSampleData([DII)V
    .locals 10

    if-eqz p1, :cond_6

    .line 119
    array-length v0, p1

    add-int/lit8 v1, p3, 0x1

    mul-int v2, p2, v1

    if-ne v0, v2, :cond_5

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p2, p3, :cond_4

    .line 125
    new-array v4, p2, [D

    .line 126
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    .line 127
    :goto_0
    new-array v0, v0, [I

    aput p3, v0, v3

    aput p2, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    add-int/lit8 v5, v3, 0x1

    .line 130
    aget-wide v6, p1, v3

    aput-wide v6, v4, v1

    .line 131
    iget-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-nez v3, :cond_1

    .line 132
    aget-object v6, v0, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v6, v2

    :cond_1
    xor-int/lit8 v3, v3, 0x1

    :goto_2
    if-ge v3, p3, :cond_2

    .line 135
    aget-object v6, v0, v1

    add-int/lit8 v7, v5, 0x1

    aget-wide v8, p1, v5

    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_1

    .line 138
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 139
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    return-void

    .line 123
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object v1, v0, v3

    invoke-direct {p1, p3, v0}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 120
    :cond_5
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p2, p1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 117
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method protected newXSampleData([[D)V
    .locals 9

    if-eqz p1, :cond_4

    .line 188
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 191
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 194
    aget-object v2, p1, v0

    array-length v2, v2

    .line 195
    array-length v3, p1

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v1

    aput v3, v5, v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v4, 0x0

    .line 196
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 197
    aget-object v5, p1, v4

    array-length v6, v5

    if-ne v6, v2, :cond_1

    .line 200
    aget-object v6, v3, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v6, v0

    .line 201
    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v4

    array-length p1, p1

    invoke-direct {v0, p1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 203
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 189
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 186
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method protected newYSampleData([D)V
    .locals 1

    if-eqz p1, :cond_1

    .line 153
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    return-void

    .line 154
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 151
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public setNoIntercept(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    return-void
.end method

.method protected validateCovarianceData([[D[[D)V
    .locals 2

    .line 253
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 256
    array-length p1, p2

    if-lez p1, :cond_1

    array-length p1, p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    array-length v1, p2

    aget-object p2, p2, v0

    array-length p2, p2

    invoke-direct {p1, v1, p2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected validateSampleData([[D[D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 229
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 232
    array-length p2, p1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 235
    aget-object v0, p1, p2

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p1

    if-gt v0, v2, :cond_0

    return-void

    .line 236
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object p1, p1, p2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, p2

    aput-object p1, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 233
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 230
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 227
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method
