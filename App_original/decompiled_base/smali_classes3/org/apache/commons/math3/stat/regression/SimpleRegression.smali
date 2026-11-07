.class public Lorg/apache/commons/math3/stat/regression/SimpleRegression;
.super Ljava/lang/Object;
.source "SimpleRegression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# static fields
.field private static final serialVersionUID:J = -0x29b2ccc654c84227L


# instance fields
.field private final hasIntercept:Z

.field private n:J

.field private sumX:D

.field private sumXX:D

.field private sumXY:D

.field private sumY:D

.field private sumYY:D

.field private xbar:D

.field private ybar:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 73
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 76
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 79
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 82
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    const-wide/16 v2, 0x0

    .line 85
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 88
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 91
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 116
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    return-void
.end method

.method private getIntercept(D)D
    .locals 4

    .line 744
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    .line 745
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double p1, p1, v2

    sub-double/2addr v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double p1, p1

    div-double/2addr v0, p1

    return-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getRegressionSumSquares(D)D
    .locals 2

    mul-double p1, p1, p1

    .line 757
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double p1, p1, v0

    return-wide p1
.end method


# virtual methods
.method public addData(DD)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 133
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 134
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 135
    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto :goto_0

    .line 137
    :cond_0
    iget-boolean v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v7, :cond_1

    long-to-double v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    long-to-double v11, v5

    long-to-double v13, v5

    add-double/2addr v13, v9

    div-double/2addr v11, v13

    .line 140
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v13, v1, v9

    .line 141
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v15, v3, v1

    move-wide/from16 v17, v1

    .line 142
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v19, v13, v13

    mul-double v19, v19, v11

    add-double v1, v1, v19

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 143
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v19, v15, v15

    mul-double v19, v19, v11

    add-double v1, v1, v19

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 144
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v19, v13, v15

    mul-double v19, v19, v11

    add-double v1, v1, v19

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    div-double/2addr v13, v7

    add-double/2addr v9, v13

    .line 145
    iput-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double/2addr v15, v7

    add-double v1, v17, v15

    .line 146
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 149
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v1, :cond_2

    .line 150
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v7, p1, p1

    add-double/2addr v1, v7

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 151
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v7, v3, v3

    add-double/2addr v1, v7

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 152
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v7, p1, v3

    add-double/2addr v1, v7

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 154
    :cond_2
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double v1, v1, p1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 155
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const-wide/16 v1, 0x1

    add-long/2addr v5, v1

    .line 156
    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-void
.end method

.method public addData([[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 260
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 261
    aget-object v2, p1, v1

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    .line 265
    aget-wide v5, v2, v0

    aget-wide v3, v2, v4

    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object p1, p1, v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object v1, v5, v4

    invoke-direct {v2, v3, v5}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    return-void
.end method

.method public addObservation([DD)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 279
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    return-void

    .line 280
    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-eqz p1, :cond_2

    array-length p1, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object v2, v3, v1

    invoke-direct {p2, p3, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2
.end method

.method public addObservations([[D[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 296
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 303
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 304
    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    array-length v5, v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    const/4 v0, 0x0

    .line 313
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 314
    aget-object v1, p1, v0

    aget-wide v3, v1, v2

    aget-wide v5, p2, v0

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 309
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 297
    :cond_6
    :goto_2
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    array-length p1, p1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_4

    :cond_8
    array-length p2, p2

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public append(Lorg/apache/commons/math3/stat/regression/SimpleRegression;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 174
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 175
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 176
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 177
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 178
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 179
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iput-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    move-wide/from16 v16, v2

    goto :goto_0

    .line 181
    :cond_0
    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v4, :cond_1

    .line 182
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v6, v4

    add-long v8, v4, v2

    long-to-double v8, v8

    div-double/2addr v6, v8

    mul-long v8, v2, v4

    long-to-double v8, v8

    add-long/2addr v4, v2

    long-to-double v4, v4

    div-double/2addr v8, v4

    .line 184
    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double/2addr v4, v10

    .line 185
    iget-wide v12, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double/2addr v12, v14

    move-wide/from16 v16, v2

    .line 186
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v20, v4, v4

    mul-double v20, v20, v8

    add-double v2, v2, v20

    add-double v2, v18, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 187
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v20, v12, v12

    mul-double v20, v20, v8

    add-double v2, v2, v20

    add-double v2, v18, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 188
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v20, v4, v12

    mul-double v20, v20, v8

    add-double v2, v2, v20

    add-double v2, v18, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v4, v4, v6

    add-double/2addr v10, v4

    .line 189
    iput-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double v12, v12, v6

    add-double/2addr v14, v12

    .line 190
    iput-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v2

    .line 192
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 193
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 194
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 197
    :goto_0
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 198
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v4, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 199
    iget-wide v1, v1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long v1, v16, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-void
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 341
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 342
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 343
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 344
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 345
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    const-wide/16 v0, 0x0

    .line 346
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-void
.end method

.method public getIntercept()D
    .locals 2

    .line 403
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInterceptStdErr()D
    .locals 8

    .line 607
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 610
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double v2, v2, v2

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v2, v6

    add-double/2addr v4, v2

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMeanSquareError()D
    .locals 6

    .line 546
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 549
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x2

    :goto_0
    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x1

    goto :goto_0
.end method

.method public getN()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-wide v0
.end method

.method public getR()D
    .locals 7

    .line 567
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    .line 568
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRSquare()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    neg-double v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getRSquare()D
    .locals 4

    .line 590
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getTotalSumSquares()D

    move-result-wide v0

    .line 591
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v2

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getRegressionSumSquares()D
    .locals 2

    .line 532
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRegressionSumSquares(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSignificance()D
    .locals 5

    .line 724
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 728
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v3, 0x2

    sub-long/2addr v1, v3

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 729
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method public getSlope()D
    .locals 7

    .line 433
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    return-wide v4

    .line 436
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    return-wide v4

    .line 439
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSlopeConfidenceInterval()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 652
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeConfidenceInterval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSlopeConfidenceInterval(D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 688
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-lez v4, :cond_1

    .line 696
    new-instance v2, Lorg/apache/commons/math3/distribution/TDistribution;

    iget-wide v3, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v5, 0x2

    sub-long/2addr v3, v5

    long-to-double v3, v3

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 697
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v5

    sub-double/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;->inverseCumulativeProbability(D)D

    move-result-wide p1

    mul-double v3, v3, p1

    return-wide v3

    .line 692
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getSlopeStdErr()D
    .locals 4

    .line 626
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumOfCrossProducts()D
    .locals 2

    .line 512
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    return-wide v0
.end method

.method public getSumSquaredErrors()D
    .locals 6

    .line 472
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v2, v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSumSquares()D
    .locals 5

    .line 486
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 489
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    return-wide v0
.end method

.method public getXSumSquares()D
    .locals 5

    .line 500
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 503
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    return-wide v0
.end method

.method public hasIntercept()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    return v0
.end method

.method public predict(D)D
    .locals 4

    .line 376
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    .line 377
    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v2, :cond_0

    .line 378
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v2

    mul-double v0, v0, p1

    add-double/2addr v2, v0

    return-wide v2

    :cond_0
    mul-double v0, v0, p1

    return-wide v0
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 773
    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 774
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v8, 0x3

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    .line 777
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    sget-wide v8, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const/4 v1, 0x3

    const/4 v12, 0x2

    cmpl-double v13, v6, v8

    if-lez v13, :cond_0

    .line 778
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v6

    new-array v14, v12, [D

    aput-wide v2, v14, v4

    aput-wide v6, v14, v5

    .line 779
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v2

    .line 780
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double v8, v8, v8

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/16 v17, 0x2

    long-to-double v12, v10

    div-double/2addr v8, v12

    add-double v22, v6, v8

    .line 781
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double v8, v6, v6

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v8, v12

    long-to-double v10, v10

    div-double v10, v15, v10

    add-double/2addr v8, v10

    mul-double v8, v8, v2

    neg-double v6, v6

    mul-double v6, v6, v2

    div-double/2addr v6, v12

    div-double/2addr v2, v12

    new-array v1, v1, [D

    aput-wide v8, v1, v4

    aput-wide v6, v1, v5

    aput-wide v2, v1, v17

    .line 785
    new-instance v13, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v15, v5, [[D

    aput-object v1, v15, v4

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v24

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x2

    move-wide/from16 v17, v1

    move-wide/from16 v20, v3

    invoke-direct/range {v13 .. v27}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v13

    :cond_0
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const/16 v17, 0x2

    .line 789
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v8

    div-double/2addr v6, v10

    const/4 v10, 0x2

    new-array v11, v10, [D

    aput-wide v6, v11, v4

    aput-wide v2, v11, v5

    .line 791
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    long-to-double v8, v8

    sub-double/2addr v8, v15

    div-double/2addr v6, v8

    new-array v1, v1, [D

    aput-wide v6, v1, v4

    aput-wide v2, v1, v5

    aput-wide v2, v1, v10

    .line 795
    new-instance v17, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v2, v5, [[D

    aput-object v1, v2, v4

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v28

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x1

    move-object/from16 v19, v2

    move-wide/from16 v21, v3

    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v31}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v17

    .line 775
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 800
    :cond_2
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v8, 0x2

    cmp-long v1, v6, v8

    if-ltz v1, :cond_4

    .line 803
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    .line 804
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v1

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v1, v6

    new-array v3, v5, [D

    aput-wide v1, v3, v4

    .line 805
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    div-double/2addr v1, v6

    new-array v7, v5, [D

    aput-wide v1, v7, v4

    .line 806
    new-instance v6, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v8, v5, [[D

    aput-object v3, v8, v4

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-wide v15, v1

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v6

    .line 811
    :cond_3
    new-array v8, v5, [D

    aput-wide v2, v8, v4

    .line 812
    new-instance v7, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v9, v5, [[D

    new-array v1, v5, [D

    aput-wide v2, v1, v4

    aput-object v1, v9, v4

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x1

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v7 .. v21}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v7

    .line 801
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 885
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_e

    .line 828
    array-length v4, v1

    if-eqz v4, :cond_e

    .line 831
    array-length v4, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gt v4, v5, :cond_c

    array-length v4, v1

    if-le v4, v6, :cond_0

    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 837
    :cond_0
    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v4, :cond_a

    .line 838
    array-length v4, v1

    if-ne v4, v5, :cond_4

    .line 839
    aget v4, v1, v2

    if-eq v4, v6, :cond_3

    if-nez v4, :cond_2

    .line 844
    aget v4, v1, v6

    if-ne v4, v6, :cond_1

    .line 847
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v1

    return-object v1

    .line 845
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v3, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 842
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v3, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 840
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_INCREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 849
    :cond_4
    aget v4, v1, v2

    if-eq v4, v6, :cond_6

    if-nez v4, :cond_5

    goto :goto_0

    .line 850
    :cond_5
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v3, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 852
    :cond_6
    :goto_0
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double v9, v7, v7

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v13, v11

    div-double/2addr v9, v13

    .line 853
    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double v24, v13, v9

    const-wide/16 v15, 0x1

    if-nez v4, :cond_7

    sub-long v3, v11, v15

    mul-long v3, v3, v11

    long-to-double v3, v3

    div-double/2addr v13, v3

    .line 856
    new-array v1, v6, [D

    aput-wide v13, v1, v2

    .line 857
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    new-array v5, v6, [D

    aput-wide v3, v5, v2

    .line 858
    new-instance v26, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v3, v6, [[D

    aput-object v1, v3, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double v35, v24, v9

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v29, 0x1

    const/16 v32, 0x1

    move-wide/from16 v30, v1

    move-object/from16 v28, v3

    move-object/from16 v27, v5

    move-wide/from16 v33, v6

    move-wide/from16 v37, v8

    invoke-direct/range {v26 .. v40}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v26

    :cond_7
    if-ne v4, v6, :cond_9

    .line 864
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double v13, v9, v9

    move-wide/from16 v18, v3

    const/16 v17, 0x0

    long-to-double v2, v11

    div-double/2addr v13, v2

    add-double v3, v18, v13

    .line 865
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v9, v9, v7

    long-to-double v7, v11

    div-double/2addr v9, v7

    add-double/2addr v1, v9

    mul-double v7, v1, v1

    div-double/2addr v7, v3

    sub-double v7, v24, v7

    const-wide/16 v9, 0x0

    .line 866
    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v26

    .line 867
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    sub-long/2addr v7, v15

    long-to-double v7, v7

    div-double v7, v26, v7

    .line 868
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_8

    div-double/2addr v7, v3

    .line 869
    new-array v5, v6, [D

    aput-wide v7, v5, v17

    div-double/2addr v1, v3

    .line 870
    new-array v3, v6, [D

    aput-wide v1, v3, v17

    .line 871
    new-instance v15, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v1, v6, [[D

    aput-object v5, v1, v17

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x1

    move-object/from16 v17, v1

    move-object/from16 v16, v3

    move-wide/from16 v19, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v15 .. v29}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v15

    .line 876
    :cond_8
    new-array v1, v6, [D

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    aput-wide v2, v1, v17

    .line 877
    new-instance v16, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v4, v6, [[D

    new-array v5, v6, [D

    aput-wide v2, v5, v17

    aput-object v5, v4, v17

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x1

    const-wide/high16 v23, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v25, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v27, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v17, v1

    move-wide/from16 v20, v2

    move-object/from16 v18, v4

    invoke-direct/range {v16 .. v30}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v16

    :cond_9
    const/4 v1, 0x0

    return-object v1

    :cond_a
    const/16 v17, 0x0

    .line 884
    aget v2, v1, v17

    if-nez v2, :cond_b

    .line 887
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v1

    return-object v1

    .line 885
    :cond_b
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v1, v1, v17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1, v3, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    :cond_c
    :goto_1
    const/16 v17, 0x0

    .line 832
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZE_EXCEEDS_MAX_VARIABLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v1, v1

    if-le v1, v6, :cond_d

    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v1, :cond_d

    const/4 v5, 0x1

    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v17

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    :cond_e
    const/16 v17, 0x0

    .line 829
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ZERO_LENGTH_OR_NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public removeData(DD)V
    .locals 20

    move-object/from16 v0, p0

    .line 216
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 217
    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_0

    long-to-double v6, v1

    sub-double/2addr v6, v4

    long-to-double v8, v1

    long-to-double v10, v1

    sub-double/2addr v10, v4

    div-double/2addr v8, v10

    .line 220
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v10, p1, v3

    .line 221
    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v14, p3, v12

    move-wide/from16 v16, v3

    .line 222
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v18, v10, v10

    mul-double v18, v18, v8

    sub-double v3, v3, v18

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 223
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v18, v14, v14

    mul-double v18, v18, v8

    sub-double v3, v3, v18

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 224
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v18, v10, v14

    mul-double v18, v18, v8

    sub-double v3, v3, v18

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    div-double/2addr v10, v6

    sub-double v3, v16, v10

    .line 225
    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double/2addr v14, v6

    sub-double/2addr v12, v14

    .line 226
    iput-wide v12, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto :goto_0

    :cond_0
    long-to-double v6, v1

    sub-double/2addr v6, v4

    .line 229
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v8, p1, p1

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 230
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v8, p3, p3

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 231
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v8, p1, p3

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 232
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v8, p1, v6

    sub-double/2addr v3, v8

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 233
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v5, p3, v6

    sub-double/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 235
    :goto_0
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    sub-double v3, v3, p1

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 236
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    sub-double v3, v3, p3

    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 237
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    :cond_1
    return-void
.end method

.method public removeData([[D)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 332
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 333
    aget-object v2, p1, v1

    aget-wide v3, v2, v0

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->removeData(DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
