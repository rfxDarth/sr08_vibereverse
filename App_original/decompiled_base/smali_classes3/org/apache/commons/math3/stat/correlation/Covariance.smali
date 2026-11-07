.class public Lorg/apache/commons/math3/stat/correlation/Covariance;
.super Ljava/lang/Object;
.source "Covariance.java"


# instance fields
.field private final covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 124
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>([[DZ)V

    return-void
.end method

.method public constructor <init>([[DZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Z)V

    return-void
.end method

.method private checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 288
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 289
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    if-lt p1, v1, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_ROWS_AND_COLUMNS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    aput-object p1, v2, v1

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method protected computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method protected computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 171
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    .line 172
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v2, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 175
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v6

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v7

    invoke-virtual {p0, v6, v7, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->covariance([D[DZ)D

    move-result-wide v6

    .line 176
    invoke-interface {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 177
    invoke-interface {v2, v5, v4, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 179
    :cond_0
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v5

    invoke-interface {v2, v4, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected computeCovarianceMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix([[DZ)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method protected computeCovarianceMatrix([[DZ)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/math3/stat/correlation/Covariance;->computeCovarianceMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Z)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public covariance([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/correlation/Covariance;->covariance([D[DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public covariance([D[DZ)D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 242
    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    .line 244
    array-length v3, v0

    .line 245
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v7, 0x2

    if-ne v3, v4, :cond_3

    if-lt v3, v7, :cond_2

    .line 252
    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D)D

    move-result-wide v7

    .line 253
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 255
    aget-wide v13, v0, v5

    sub-double/2addr v13, v7

    .line 256
    aget-wide v15, v1, v5

    sub-double/2addr v15, v9

    mul-double v13, v13, v15

    sub-double/2addr v13, v11

    add-int/lit8 v5, v5, 0x1

    move-wide v15, v7

    const/4 v2, 0x1

    int-to-double v6, v5

    div-double/2addr v13, v6

    add-double/2addr v11, v13

    move-wide v7, v15

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eqz p3, :cond_1

    int-to-double v0, v3

    sub-int/2addr v3, v2

    int-to-double v2, v3

    div-double/2addr v0, v2

    mul-double v11, v11, v0

    :cond_1
    return-wide v11

    :cond_2
    const/4 v2, 0x1

    .line 249
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v4, v6, v2

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    const/4 v2, 0x1

    .line 246
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v1, v6, v2

    invoke-direct {v0, v4, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/apache/commons/math3/stat/correlation/Covariance;->n:I

    return v0
.end method
