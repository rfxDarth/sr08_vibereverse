.class public Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;
.super Lorg/apache/commons/math3/stat/correlation/Covariance;
.source "StorelessCovariance.java"


# instance fields
.field private covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

.field private dimension:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>()V

    .line 70
    iput p1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    add-int/lit8 v0, p1, 0x1

    mul-int p1, p1, v0

    .line 71
    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    .line 72
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->initializeMatrix(Z)V

    return-void
.end method

.method private getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->indexOf(II)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private indexOf(II)I
    .locals 1

    if-ge p2, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    mul-int p1, p1, v0

    .line 99
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    mul-int p2, p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    return p2
.end method

.method private initializeMatrix(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 83
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v2, v3, :cond_0

    .line 84
    new-instance v3, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;-><init>(Z)V

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->setElement(IILorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setElement(IILorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->covMatrix:[Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->indexOf(II)I

    move-result p1

    aput-object p3, v0, p1

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 176
    iget v0, p1, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 182
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v0, v1, :cond_1

    move v1, v0

    .line 183
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v1, v2, :cond_0

    .line 184
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v2

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->append(Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 177
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget p1, p1, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getCovariance(II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->getResult()D

    move-result-wide p1

    return-wide p1
.end method

.method public getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getData()[[D

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getData()[[D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 207
    iget v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    .line 208
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v1, v3, :cond_1

    const/4 v3, 0x0

    .line 209
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ge v3, v4, :cond_0

    .line 210
    aget-object v4, v0, v1

    invoke-direct {p0, v1, v3}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->getResult()D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getN()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .line 228
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public increment([D)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 150
    array-length v0, p1

    .line 151
    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    .line 159
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getElement(II)Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;

    move-result-object v3

    aget-wide v4, p1, v1

    aget-wide v6, p1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->increment(DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 152
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->dimension:I

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method
