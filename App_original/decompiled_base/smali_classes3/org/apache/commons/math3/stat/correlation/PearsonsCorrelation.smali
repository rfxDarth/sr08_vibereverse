.class public Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;
.super Ljava/lang/Object;
.source "PearsonsCorrelation.java"


# instance fields
.field private final correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final nObs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 100
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p2, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/correlation/Covariance;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getN()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 117
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 114
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COVARIANCE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>([[D)V
    .locals 1

    .line 83
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method private checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 5

    .line 324
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 325
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_ROWS_AND_COLUMNS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 228
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 229
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 230
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v1, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 233
    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide v5

    .line 234
    invoke-interface {v1, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 235
    invoke-interface {v1, v4, v3, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 237
    invoke-interface {v1, v3, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 257
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public correlation([D[D)D
    .locals 7

    .line 275
    new-instance v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;-><init>()V

    .line 276
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    .line 278
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 282
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_0

    .line 283
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getR()D

    move-result-wide p1

    return-wide p1

    .line 279
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object v1, v3, p1

    invoke-direct {p2, v0, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    .line 277
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11

    .line 301
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 302
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v1, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 304
    invoke-interface {p1, v3, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 305
    invoke-interface {v1, v3, v3, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_0

    .line 307
    invoke-interface {p1, v3, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-interface {p1, v6, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double v9, v9, v4

    div-double/2addr v7, v9

    .line 309
    invoke-interface {v1, v3, v6, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 310
    invoke-interface {v1, v6, v3, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getCorrelationPValues()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 15

    .line 196
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    int-to-double v3, v1

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 197
    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 198
    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    if-ne v5, v6, :cond_0

    .line 202
    aget-object v7, v3, v5

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    goto :goto_2

    .line 204
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v7, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    .line 205
    iget v9, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    sub-int/2addr v9, v2

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    mul-double v13, v7, v7

    sub-double/2addr v11, v13

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    .line 206
    aget-object v9, v3, v5

    neg-double v7, v7

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v10

    aput-wide v7, v9, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    return-object v0
.end method

.method public getCorrelationStandardErrors()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    .line 165
    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_0

    .line 168
    iget-object v6, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    .line 169
    aget-object v8, v2, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v6

    sub-double/2addr v9, v6

    iget v6, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    sub-int/2addr v6, v1

    int-to-double v6, v6

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    aput-wide v6, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    return-object v0
.end method
