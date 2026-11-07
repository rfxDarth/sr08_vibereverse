.class Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;
.super Ljava/lang/Object;
.source "StorelessBivariateCovariance.java"


# instance fields
.field private biasCorrected:Z

.field private covarianceNumerator:D

.field private meanX:D

.field private meanY:D

.field private n:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    .line 73
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 74
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    .line 75
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->biasCorrected:Z

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 102
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 103
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 104
    iget-wide v6, v1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    sub-double/2addr v6, v8

    .line 105
    iget-wide v10, v1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    sub-double/2addr v10, v12

    .line 106
    iget-wide v14, v1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    mul-double v16, v6, v14

    div-double v16, v16, v4

    add-double v8, v8, v16

    iput-wide v8, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    mul-double v8, v10, v14

    div-double/2addr v8, v4

    add-double/2addr v12, v8

    .line 107
    iput-wide v12, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    .line 108
    iget-wide v8, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    iget-wide v12, v1, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    mul-double v2, v2, v14

    div-double/2addr v2, v4

    mul-double v2, v2, v6

    mul-double v2, v2, v10

    add-double/2addr v12, v2

    add-double/2addr v8, v12

    iput-wide v8, v0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    return-void
.end method

.method public getN()D
    .locals 2

    .line 117
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    return-wide v0
.end method

.method public getResult()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 128
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 132
    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->biasCorrected:Z

    if-eqz v2, :cond_0

    .line 133
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    :goto_0
    div-double/2addr v2, v0

    return-wide v2

    .line 135
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public increment(DD)V
    .locals 10

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->n:D

    .line 86
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    sub-double/2addr p1, v4

    .line 87
    iget-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    sub-double/2addr p3, v6

    div-double v8, p1, v0

    add-double/2addr v4, v8

    .line 88
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanX:D

    div-double v4, p3, v0

    add-double/2addr v6, v4

    .line 89
    iput-wide v6, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->meanY:D

    .line 90
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    mul-double v2, v2, p1

    mul-double v2, v2, p3

    add-double/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessBivariateCovariance;->covarianceNumerator:D

    return-void
.end method
