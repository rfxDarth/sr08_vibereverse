.class public Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;
.super Ljava/lang/Object;
.source "MillerUpdatingRegression.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# instance fields
.field private final d:[D

.field private final epsilon:D

.field private hasIntercept:Z

.field private final lindep:[Z

.field private nobs:J

.field private final nvars:I

.field private final r:[D

.field private final rhs:[D

.field private final rss:[D

.field private rss_set:Z

.field private sserr:D

.field private sumsqy:D

.field private sumy:D

.field private final tol:[D

.field private tol_set:Z

.field private final vorder:[I

.field private final work_sing:[D

.field private final work_tolset:[D

.field private final x_sing:[D


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, -0x1

    .line 89
    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 141
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    const-wide/16 v2, 0x0

    .line 64
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    const/4 v4, 0x0

    .line 66
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 68
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 76
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 78
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    const/4 v5, 0x1

    if-lt p1, v5, :cond_3

    if-eqz p2, :cond_0

    add-int/2addr p1, v5

    .line 106
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    goto :goto_0

    .line 108
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    .line 110
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    .line 111
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 112
    iget p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    .line 113
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    add-int/lit8 p2, p1, -0x1

    mul-int p2, p2, p1

    .line 114
    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    .line 115
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    .line 116
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    .line 117
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    .line 118
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    .line 119
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    .line 120
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    .line 121
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    .line 122
    :goto_1
    iget p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v4, p1, :cond_1

    .line 123
    iget-object p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-double p1, p3, v2

    if-lez p1, :cond_2

    .line 126
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    return-void

    :cond_2
    neg-double p1, p3

    .line 128
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    return-void

    .line 103
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private cov(I)[D
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 493
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ge v5, v1, :cond_2

    .line 498
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_1

    add-double/2addr v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 502
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v8, v1, -0x1

    aget-wide v9, v5, v8

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    long-to-double v11, v11

    sub-double/2addr v11, v3

    div-double/2addr v9, v11

    mul-int v3, v1, v8

    .line 503
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    .line 504
    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->inverse([DI)V

    add-int/lit8 v4, v1, 0x1

    mul-int v4, v4, v1

    .line 505
    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [D

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    .line 506
    invoke-static {v4, v11, v12}, Ljava/util/Arrays;->fill([DD)V

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    .line 513
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_7

    move v8, v2

    move v11, v5

    :goto_2
    if-ge v8, v1, :cond_7

    .line 515
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v12, v12, v8

    if-nez v12, :cond_6

    add-int v12, v5, v8

    sub-int/2addr v12, v2

    if-ne v2, v8, :cond_3

    .line 518
    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v14, v13, v8

    div-double v13, v6, v14

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v12, -0x1

    .line 520
    aget-wide v13, v3, v13

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v16, v15, v8

    div-double v13, v13, v16

    :goto_3
    add-int/lit8 v15, v8, 0x1

    move v6, v15

    :goto_4
    if-ge v6, v1, :cond_5

    .line 523
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_4

    .line 524
    aget-wide v18, v3, v12

    aget-wide v20, v3, v11

    mul-double v18, v18, v20

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v7, v6

    div-double v18, v18, v20

    add-double v13, v13, v18

    :cond_4
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    mul-int v15, v15, v8

    .line 529
    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v2

    mul-double v13, v13, v9

    aput-wide v13, v4, v15

    goto :goto_5

    :cond_6
    sub-int v6, v1, v8

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v11, v6

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_7
    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_8
    return-object v4
.end method

.method private include([DDD)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const/4 v4, 0x0

    .line 239
    iput-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 240
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 241
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    mul-double v7, v2, v2

    invoke-direct {v0, v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move-wide v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v2, p2

    .line 242
    :goto_0
    array-length v8, v1

    if-ge v6, v8, :cond_7

    const-wide/16 v8, 0x0

    cmpl-double v10, v2, v8

    if-nez v10, :cond_0

    return-void

    .line 246
    :cond_0
    aget-wide v10, v1, v6

    cmpl-double v12, v10, v8

    if-nez v12, :cond_1

    .line 249
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    move/from16 v20, v6

    goto/16 :goto_5

    .line 252
    :cond_1
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v13, v12, v6

    mul-double v15, v2, v10

    cmpl-double v12, v13, v8

    if-eqz v12, :cond_3

    mul-double v8, v15, v10

    .line 256
    invoke-direct {v0, v13, v14, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v17

    div-double/2addr v8, v13

    .line 258
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    sget-wide v19, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpl-double v21, v8, v19

    if-lez v21, :cond_2

    mul-double v2, v2, v13

    div-double v2, v2, v17

    :cond_2
    move-wide v8, v2

    goto :goto_1

    :cond_3
    mul-double v17, v15, v10

    .line 265
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v17, v2, v6

    add-int/lit8 v2, v6, 0x1

    .line 266
    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v3, :cond_5

    move/from16 v19, v2

    .line 267
    aget-wide v2, v1, v19

    move/from16 v20, v6

    move/from16 p2, v7

    neg-double v6, v10

    .line 268
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v21, v1, p2

    mul-double v6, v6, v21

    invoke-direct {v0, v2, v3, v6, v7}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v6

    aput-wide v6, p1, v19

    if-eqz v12, :cond_4

    .line 270
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v6, v1, p2

    mul-double v6, v6, v13

    mul-double v2, v2, v15

    invoke-direct {v0, v6, v7, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v2

    div-double v2, v2, v17

    aput-wide v2, v1, p2

    goto :goto_3

    .line 272
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    div-double/2addr v2, v10

    aput-wide v2, v1, p2

    :goto_3
    add-int/lit8 v7, p2, 0x1

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v20

    goto :goto_2

    :cond_5
    move/from16 v20, v6

    move/from16 p2, v7

    neg-double v1, v10

    .line 277
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v6, v3, v20

    mul-double v1, v1, v6

    invoke-direct {v0, v4, v5, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v1

    if-eqz v12, :cond_6

    .line 279
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v6, v3, v20

    mul-double v13, v13, v6

    mul-double v4, v4, v15

    invoke-direct {v0, v13, v14, v4, v5}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v4

    div-double v4, v4, v17

    aput-wide v4, v3, v20

    goto :goto_4

    .line 281
    :cond_6
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    div-double/2addr v4, v10

    aput-wide v4, v3, v20

    :goto_4
    move/from16 v7, p2

    move-wide v4, v1

    move-wide v2, v8

    :goto_5
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 284
    :cond_7
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    mul-double v2, v2, v4

    mul-double v2, v2, v4

    invoke-direct {v0, v6, v7, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    return-void
.end method

.method private inverse([DI)V
    .locals 13

    add-int/lit8 v0, p2, -0x1

    mul-int v1, p2, v0

    .line 548
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 552
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :goto_0
    if-lez v0, :cond_4

    .line 554
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 555
    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v3, v3

    sub-int/2addr v3, v0

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    move v3, p2

    :goto_1
    if-le v3, v0, :cond_3

    const-wide/16 v4, 0x0

    move v6, v0

    move v8, v1

    move v7, v2

    :goto_2
    add-int/lit8 v9, v3, -0x1

    if-ge v6, v9, :cond_1

    sub-int v9, p2, v6

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v8, v9

    .line 562
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v9, v9, v6

    if-nez v9, :cond_0

    .line 563
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v9, v7

    neg-double v9, v10

    aget-wide v11, p1, v8

    mul-double v9, v9, v11

    add-double/2addr v4, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 567
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v7, v6, v7

    sub-double/2addr v4, v7

    aput-wide v4, p1, v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    sub-int v2, p2, v0

    sub-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private regcf(I)[D
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    .line 376
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v3, 0x2

    if-gt p1, v2, :cond_6

    .line 380
    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    if-nez v2, :cond_0

    .line 381
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 383
    :cond_0
    new-array v2, p1, [D

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-le v4, v6, :cond_3

    .line 386
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v7, v6, v4

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v9, v8, v4

    cmpg-double v8, v6, v9

    if-gez v8, :cond_1

    const-wide/16 v5, 0x0

    .line 387
    aput-wide v5, v2, v4

    .line 388
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v5, v7, v4

    const/4 v5, 0x1

    goto :goto_2

    .line 391
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v6, v4

    aput-wide v7, v2, v4

    .line 392
    iget v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v6, v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v1

    mul-int v6, v6, v4

    div-int/2addr v6, v3

    add-int/lit8 v7, v4, 0x1

    :goto_1
    if-ge v7, p1, :cond_2

    .line 394
    aget-wide v8, v2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v11, v10, v6

    neg-double v10, v11

    aget-wide v12, v2, v7

    mul-double v10, v10, v12

    invoke-direct {p0, v8, v9, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v8

    aput-wide v8, v2, v4

    add-int/2addr v6, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    :goto_3
    if-ge v0, p1, :cond_5

    .line 401
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 402
    aput-wide v3, v2, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-object v2

    .line 377
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object v5, v3, v1

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 374
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private reorderRegressors([II)I
    .locals 6

    .line 824
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_0

    goto :goto_2

    :cond_0
    move v0, p2

    move v1, v0

    .line 829
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 830
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v2, v2, v0

    const/4 v4, 0x0

    .line 831
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 832
    aget v5, p1, v4

    if-ne v2, v5, :cond_1

    if-le v0, v1, :cond_1

    .line 833
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vmove(II)V

    add-int/lit8 v1, v1, 0x1

    .line 835
    array-length v2, p1

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_2

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method private singcheck()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 415
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_0

    .line 416
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 418
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_6

    .line 422
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v3, v2, v1

    add-int/lit8 v2, v1, -0x1

    move v6, v2

    const/4 v5, 0x0

    :goto_2
    const-wide/16 v7, 0x0

    if-ge v5, v2, :cond_2

    .line 425
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v9, v6

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    aget-wide v12, v11, v5

    mul-double v9, v9, v12

    cmpg-double v11, v9, v3

    if-gez v11, :cond_1

    .line 426
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v7, v9, v6

    .line 428
    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 433
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aput-boolean v0, v2, v1

    .line 434
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    aget-wide v9, v5, v1

    cmpg-double v5, v9, v3

    if-gez v5, :cond_5

    const/4 v3, 0x1

    .line 435
    aput-boolean v3, v2, v1

    .line 436
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 437
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    invoke-static {v2, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    .line 438
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v2, v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    mul-int v2, v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 439
    :goto_3
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v4, v5, :cond_3

    .line 440
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v9, v6, v2

    aput-wide v9, v5, v4

    .line 441
    aput-wide v7, v6, v2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v3

    goto :goto_3

    .line 443
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v13, v2, v1

    .line 444
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v11, v3, v1

    .line 445
    aput-wide v7, v3, v1

    .line 446
    aput-wide v7, v2, v1

    .line 447
    iget-object v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    goto :goto_4

    :cond_4
    move-object v9, p0

    .line 449
    iget-wide v2, v9, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-object v4, v9, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v5, v4, v1

    iget-object v4, v9, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v4, v1

    mul-double v5, v5, v7

    mul-double v5, v5, v7

    add-double/2addr v2, v5

    iput-wide v2, v9, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    goto :goto_4

    :cond_5
    move-object v9, p0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move-object v9, p0

    return-void
.end method

.method private smartAdd(DD)D
    .locals 6

    .line 295
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 296
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 298
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v0, v0, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    add-double/2addr p1, p3

    :cond_0
    return-wide p1

    .line 304
    :cond_1
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    add-double/2addr p1, p3

    return-wide p1

    :cond_2
    return-wide p3
.end method

.method private ss()V
    .locals 9

    .line 465
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 466
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v4, v3, -0x1

    aput-wide v0, v2, v4

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    :goto_0
    if-lez v3, :cond_0

    .line 468
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v5, v4, v3

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v4, v3

    mul-double v5, v5, v7

    mul-double v5, v5, v7

    add-double/2addr v0, v5

    .line 469
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v5, v3, -0x1

    aput-wide v0, v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 471
    :cond_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    return-void
.end method

.method private tolset()V
    .locals 14

    .line 343
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 344
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v4, :cond_0

    .line 345
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v6, v5, v3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v5, v4, v2

    mul-double v5, v5, v0

    aput-wide v5, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 348
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 350
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v7, v6, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    .line 352
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v9, v5

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v12, v11, v6

    mul-double v9, v9, v12

    add-double/2addr v7, v9

    .line 353
    iget v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x2

    add-int/2addr v5, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 355
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    mul-double v7, v7, v0

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 357
    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    return-void
.end method

.method private vmove(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-ne v1, v2, :cond_0

    goto/16 :goto_a

    .line 706
    :cond_0
    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    if-nez v3, :cond_1

    .line 707
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    :cond_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    sub-int/2addr v2, v1

    move v4, v2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    sub-int v2, v1, v2

    const/4 v1, -0x1

    move v1, v4

    move v4, v2

    const/4 v2, -0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_e

    .line 723
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int v9, v8, v8

    sub-int/2addr v9, v1

    sub-int/2addr v9, v3

    mul-int v9, v9, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v8, v1

    sub-int/2addr v8, v3

    add-int/lit8 v10, v1, 0x1

    .line 727
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v12, v11, v1

    .line 728
    aget-wide v14, v11, v10

    move/from16 p1, v4

    const/4 v11, 0x1

    .line 730
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpl-double v16, v12, v3

    if-gtz v16, :cond_4

    cmpl-double v16, v14, v3

    if-lez v16, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 731
    :cond_4
    :goto_2
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v16, v3, v9

    .line 732
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    mul-double v3, v3, v18

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v18, v5, v10

    const-wide/16 v20, 0x0

    cmpg-double v5, v3, v18

    if-gez v5, :cond_5

    move-wide/from16 v16, v20

    .line 735
    :cond_5
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpg-double v5, v12, v3

    if-ltz v5, :cond_8

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    move-wide/from16 v18, v12

    const/4 v5, 0x1

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpg-double v13, v3, v11

    if-gez v13, :cond_6

    goto :goto_4

    :cond_6
    cmpg-double v3, v14, v11

    if-gez v3, :cond_a

    .line 752
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    mul-double v12, v18, v16

    mul-double v12, v12, v16

    aput-wide v12, v3, v1

    .line 753
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v11, v11, v16

    aput-wide v11, v3, v9

    add-int/lit8 v3, v9, 0x1

    .line 754
    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v4, v9

    sub-int/2addr v4, v1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_7

    .line 755
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v11, v4, v3

    div-double v11, v11, v16

    aput-wide v11, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 757
    :cond_7
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v11, v3, v1

    div-double v11, v11, v16

    aput-wide v11, v3, v1

    goto :goto_6

    :cond_8
    move-wide/from16 v18, v12

    const/4 v5, 0x1

    .line 736
    :goto_4
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v14, v3, v1

    .line 737
    aput-wide v18, v3, v10

    .line 738
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v20, v3, v9

    add-int/lit8 v3, v1, 0x2

    .line 739
    :goto_5
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v4, :cond_9

    add-int/lit8 v9, v9, 0x1

    .line 741
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v11, v4, v9

    .line 742
    aget-wide v16, v4, v8

    aput-wide v16, v4, v9

    .line 743
    aput-wide v11, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 746
    :cond_9
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v16, v3, v1

    .line 747
    aget-wide v11, v3, v10

    aput-wide v11, v3, v1

    .line 748
    aput-wide v16, v3, v10

    :goto_6
    const/4 v7, 0x1

    :cond_a
    if-nez v7, :cond_c

    mul-double v12, v18, v16

    mul-double v3, v12, v16

    add-double/2addr v3, v14

    div-double/2addr v14, v3

    div-double/2addr v12, v3

    mul-double v18, v18, v14

    .line 766
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v3, v11, v1

    .line 767
    aput-wide v18, v11, v10

    .line 768
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v12, v3, v9

    add-int/lit8 v3, v1, 0x2

    .line 769
    :goto_7
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v4, :cond_b

    add-int/2addr v9, v5

    .line 771
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v18, v4, v9

    .line 772
    aget-wide v20, v4, v8

    mul-double v20, v20, v14

    mul-double v22, v12, v18

    add-double v20, v20, v22

    aput-wide v20, v4, v9

    .line 773
    aget-wide v20, v4, v8

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    aput-wide v18, v4, v8

    add-int/2addr v8, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 776
    :cond_b
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v8, v3, v1

    .line 777
    aget-wide v18, v3, v10

    mul-double v14, v14, v18

    mul-double v12, v12, v8

    add-double/2addr v14, v12

    aput-wide v14, v3, v1

    .line 778
    aget-wide v11, v3, v10

    mul-double v16, v16, v11

    sub-double v8, v8, v16

    aput-wide v8, v3, v10

    :cond_c
    :goto_8
    if-lez v1, :cond_d

    move v4, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_d

    .line 784
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v11, v8, v4

    add-int/lit8 v9, v4, -0x1

    .line 785
    aget-wide v13, v8, v9

    aput-wide v13, v8, v4

    .line 786
    aput-wide v11, v8, v9

    .line 787
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 792
    :cond_d
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v4, v3, v1

    .line 793
    aget v8, v3, v10

    aput v8, v3, v1

    .line 794
    aput v4, v3, v10

    .line 795
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v8, v3, v1

    .line 796
    aget-wide v11, v3, v10

    aput-wide v11, v3, v1

    .line 797
    aput-wide v8, v3, v10

    .line 798
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    aget-wide v8, v3, v10

    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v11, v4, v10

    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v13, v4, v10

    mul-double v11, v11, v13

    mul-double v11, v11, v13

    add-double/2addr v8, v11

    aput-wide v8, v3, v1

    add-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, p1

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_a
    return-void
.end method


# virtual methods
.method public addObservation([DD)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    array-length v3, p1

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ne v3, v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    array-length v3, p1

    add-int/2addr v3, v2

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    invoke-direct {p2, p3, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 176
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    goto :goto_1

    :cond_3
    move-wide v5, p2

    .line 178
    array-length p2, p1

    add-int/2addr p2, v2

    new-array p2, p2, [D

    .line 179
    array-length p3, p1

    invoke-static {p1, v1, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 180
    aput-wide v2, p2, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v9, v5

    move-object v5, p0

    move-object v6, p2

    .line 181
    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    move-object v1, v5

    .line 183
    :goto_1
    iget-wide p1, v1, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    iput-wide p1, v1, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    return-void
.end method

.method public addObservations([[D[D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 195
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 205
    aget-object v3, p1, v2

    array-length v3, v3

    add-int/2addr v3, v1

    array-length v4, p1

    if-gt v3, v4, :cond_2

    .line 210
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 211
    aget-object v0, p1, v2

    aget-wide v3, p2, v2

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->addObservation([DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 206
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object p1, p1, v2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-direct {p2, v3, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    .line 202
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 196
    :cond_4
    :goto_1
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    array-length p1, p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    array-length p2, p2

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public clear()V
    .locals 6

    .line 317
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 318
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 319
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 321
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 322
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 323
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 324
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 325
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 v0, 0x0

    .line 326
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v4, :cond_0

    .line 327
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 329
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 330
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 331
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 332
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 333
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 334
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    return-void
.end method

.method public getDiagonalOfHatMatrix([D)D
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 854
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v3, v2, [D

    .line 858
    array-length v4, v1

    if-le v4, v2, :cond_0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1

    .line 862
    :cond_0
    iget-boolean v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 863
    array-length v2, v1

    const/4 v5, 0x1

    add-int/2addr v2, v5

    new-array v2, v2, [D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 864
    aput-wide v6, v2, v4

    .line 865
    array-length v6, v1

    invoke-static {v1, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :cond_1
    const-wide/16 v5, 0x0

    move-wide v7, v5

    const/4 v2, 0x0

    .line 870
    :goto_0
    array-length v9, v1

    if-ge v2, v9, :cond_4

    .line 871
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v10, v9, v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v12, v11, v2

    cmpg-double v11, v9, v12

    if-gez v11, :cond_2

    .line 872
    aput-wide v5, v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v2, -0x1

    .line 875
    aget-wide v10, v1, v2

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_3

    .line 877
    aget-wide v13, v3, v12

    neg-double v13, v13

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v16, v15, v9

    mul-double v13, v13, v16

    invoke-direct {v0, v10, v11, v13, v14}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v10

    .line 878
    iget v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x2

    add-int/2addr v9, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 880
    :cond_3
    aput-wide v10, v3, v2

    mul-double v10, v10, v10

    .line 881
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v12, v9, v2

    div-double/2addr v10, v12

    invoke-direct {v0, v7, v8, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v7
.end method

.method public getN()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    return-wide v0
.end method

.method public getOrderOfRegressors()[I
    .locals 1

    .line 895
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPartialCorrelations(I)[D
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 610
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v2, v1

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    neg-int v4, v1

    add-int/lit8 v5, v1, 0x1

    neg-int v6, v5

    sub-int v7, v2, v1

    .line 616
    new-array v7, v7, [D

    sub-int v8, v2, v1

    add-int/lit8 v8, v8, -0x1

    .line 617
    new-array v8, v8, [D

    sub-int v9, v2, v1

    sub-int v10, v2, v1

    add-int/lit8 v10, v10, -0x1

    mul-int v9, v9, v10

    .line 621
    div-int/lit8 v9, v9, 0x2

    const/4 v10, -0x1

    if-lt v1, v10, :cond_b

    if-lt v1, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 626
    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    array-length v10, v10

    sub-int/2addr v2, v1

    add-int/lit8 v11, v2, 0x1

    mul-int v2, v2, v11

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v10, v2

    .line 627
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v11, v2, v1

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    cmpl-double v2, v11, v13

    if-lez v2, :cond_1

    add-int v2, v1, v4

    .line 628
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, v15, v11

    aput-wide v11, v7, v2

    .line 630
    :cond_1
    :goto_0
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v5, v2, :cond_4

    add-int v2, v10, v5

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    .line 632
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v17, v11, v5

    move v11, v1

    :goto_1
    if-ge v11, v5, :cond_2

    .line 634
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v19, v12, v11

    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v21, v12, v2

    mul-double v19, v19, v21

    mul-double v19, v19, v21

    add-double v17, v17, v19

    .line 635
    iget v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v12, v11

    add-int/lit8 v12, v12, -0x2

    add-int/2addr v2, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    cmpl-double v2, v17, v13

    if-lez v2, :cond_3

    add-int v2, v5, v4

    .line 638
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, v15, v11

    aput-wide v11, v7, v2

    goto :goto_2

    :cond_3
    add-int v2, v5, v4

    .line 640
    aput-wide v13, v7, v2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 643
    :cond_4
    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move v2, v1

    .line 644
    :goto_3
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v5, :cond_5

    .line 645
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v17, v5, v2

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v19, v5, v2

    mul-double v17, v17, v19

    mul-double v17, v17, v19

    add-double v11, v11, v17

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    cmpl-double v2, v11, v13

    if-lez v2, :cond_6

    .line 648
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, v15, v11

    :cond_6
    move v2, v1

    .line 651
    :goto_4
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v5, :cond_a

    .line 653
    invoke-static {v8, v13, v14}, Ljava/util/Arrays;->fill([DD)V

    add-int v5, v10, v2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    move v15, v1

    move-wide/from16 v16, v13

    :goto_5
    if-ge v15, v2, :cond_8

    add-int/lit8 v18, v5, 0x1

    add-int/lit8 v19, v2, 0x1

    move/from16 v13, v19

    .line 657
    :goto_6
    iget v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v13, v14, :cond_7

    add-int v14, v13, v6

    .line 658
    aget-wide v21, v8, v14

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v23, v1, v15

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v25, v1, v5

    mul-double v23, v23, v25

    aget-wide v25, v1, v18

    mul-double v23, v23, v25

    add-double v21, v21, v23

    aput-wide v21, v8, v14

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    goto :goto_6

    .line 661
    :cond_7
    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v21, v1, v15

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v23, v1, v5

    mul-double v21, v21, v23

    iget-object v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v23, v1, v15

    mul-double v21, v21, v23

    add-double v16, v16, v21

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x2

    add-int/2addr v5, v14

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v2, 0x1

    move v13, v1

    .line 665
    :goto_7
    iget v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v13, v14, :cond_9

    add-int v14, v13, v6

    .line 666
    aget-wide v21, v8, v14

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v23, v15, v2

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v25, v15, v5

    mul-double v23, v23, v25

    add-double v21, v21, v23

    aput-wide v21, v8, v14

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v13, -0x1

    sub-int v14, v14, p1

    sub-int v15, v13, p1

    mul-int v14, v14, v15

    .line 668
    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v2

    sub-int v14, v14, p1

    add-int v15, v2, v4

    aget-wide v23, v7, v15

    mul-double v21, v21, v23

    add-int v15, v13, v4

    aget-wide v23, v7, v15

    mul-double v21, v21, v23

    aput-wide v21, v3, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 672
    :cond_9
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v13, v5, v2

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v21, v5, v2

    mul-double v13, v13, v21

    add-double v16, v16, v13

    add-int/2addr v2, v4

    add-int v5, v2, v9

    .line 673
    aget-wide v13, v7, v2

    mul-double v16, v16, v13

    mul-double v16, v16, v11

    aput-wide v16, v3, v5

    move v2, v1

    const-wide/16 v13, 0x0

    move/from16 v1, p1

    goto/16 :goto_4

    :cond_a
    return-object v3

    :cond_b
    :goto_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasIntercept()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    return v0
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 906
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v0

    return-object v0
.end method

.method public regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 920
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v4, v1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v2, v4

    if-lez v9, :cond_b

    .line 925
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-gt v1, v2, :cond_a

    .line 930
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 931
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 933
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v10

    .line 935
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 937
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v2

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 940
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 941
    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    add-int/lit8 v15, v15, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_9

    .line 948
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v4, v4, v3

    if-eq v4, v3, :cond_8

    .line 958
    array-length v3, v10

    new-array v12, v3, [D

    .line 959
    array-length v3, v2

    new-array v3, v3, [D

    .line 961
    array-length v4, v10

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 962
    :goto_2
    iget v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v5, v9, :cond_4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_3

    .line 964
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v11, v11, v9

    if-ne v11, v5, :cond_2

    .line 965
    aget-wide v13, v10, v9

    aput-wide v13, v12, v5

    .line 966
    aput v9, v4, v5

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 975
    :goto_4
    array-length v9, v10

    if-ge v1, v9, :cond_7

    .line 976
    aget v9, v4, v1

    const/4 v11, 0x0

    :goto_5
    if-gt v11, v1, :cond_6

    .line 978
    aget v13, v4, v11

    if-le v9, v13, :cond_5

    add-int/lit8 v14, v9, 0x1

    mul-int v14, v14, v9

    .line 980
    div-int/2addr v14, v6

    add-int/2addr v14, v13

    goto :goto_6

    :cond_5
    add-int/lit8 v14, v13, 0x1

    mul-int v13, v13, v14

    .line 982
    div-int/2addr v13, v6

    add-int v14, v13, v9

    .line 984
    :goto_6
    aget-wide v13, v2, v14

    aput-wide v13, v3, v5

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 987
    :cond_7
    new-instance v11, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v13, v8, [[D

    aput-object v3, v13, v7

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v25, 0x0

    const/4 v14, 0x1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move/from16 v24, v9

    move/from16 v17, v15

    move-wide v15, v1

    invoke-direct/range {v11 .. v25}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v11

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 954
    :cond_9
    new-instance v9, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v11, v8, [[D

    aput-object v2, v11, v7

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v23, 0x0

    const/4 v12, 0x1

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move/from16 v22, v7

    invoke-direct/range {v9 .. v23}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v9

    .line 926
    :cond_a
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v4, v5, v8

    invoke-direct {v2, v3, v5}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 921
    :cond_b
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    aput-object v1, v5, v8

    invoke-direct {v2, v3, v5}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1006
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v2, v3, :cond_11

    .line 1010
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v2, v3

    cmp-long v9, v7, v2

    if-lez v9, :cond_10

    .line 1015
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1017
    :goto_0
    array-length v7, v1

    const/4 v8, -0x1

    if-ge v2, v7, :cond_2

    .line 1018
    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v7, :cond_1

    if-lez v2, :cond_0

    .line 1022
    aget v7, v1, v2

    add-int/lit8 v9, v2, -0x1

    aget v9, v1, v9

    if-ne v7, v9, :cond_0

    .line 1023
    aput v8, v1, v2

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_LARGER_THAN_MAX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v7, v4, v6

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    if-lez v3, :cond_5

    .line 1030
    array-length v2, v1

    sub-int/2addr v2, v3

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1031
    :goto_1
    array-length v9, v1

    if-ge v3, v9, :cond_4

    .line 1032
    aget v9, v1, v3

    if-le v9, v8, :cond_3

    .line 1033
    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 1041
    :cond_5
    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->reorderRegressors([II)I

    .line 1042
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 1043
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 1045
    array-length v2, v1

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v8

    .line 1047
    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 1049
    array-length v2, v1

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v2

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 1052
    :goto_2
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v9, v7

    if-ge v3, v9, :cond_7

    .line 1053
    aget-boolean v7, v7, v3

    if-nez v7, :cond_6

    add-int/lit8 v15, v15, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 1059
    :goto_3
    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v7, :cond_f

    .line 1060
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v7, v7, v3

    aget v9, v1, v3

    if-eq v7, v9, :cond_e

    .line 1070
    array-length v3, v8

    new-array v10, v3, [D

    .line 1071
    array-length v3, v8

    new-array v3, v3, [I

    const/4 v7, 0x0

    .line 1072
    :goto_4
    array-length v9, v1

    if-ge v7, v9, :cond_a

    const/4 v9, 0x0

    .line 1073
    :goto_5
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    array-length v12, v11

    if-ge v9, v12, :cond_9

    .line 1074
    aget v11, v11, v9

    aget v12, v1, v7

    if-ne v11, v12, :cond_8

    .line 1075
    aget-wide v11, v8, v9

    aput-wide v11, v10, v7

    .line 1076
    aput v9, v3, v7

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1080
    :cond_a
    array-length v1, v2

    new-array v1, v1, [D

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1085
    :goto_6
    array-length v11, v8

    if-ge v7, v11, :cond_d

    .line 1086
    aget v11, v3, v7

    const/4 v12, 0x0

    :goto_7
    if-gt v12, v7, :cond_c

    .line 1088
    aget v13, v3, v12

    if-le v11, v13, :cond_b

    add-int/lit8 v14, v11, 0x1

    mul-int v14, v14, v11

    .line 1090
    div-int/2addr v14, v4

    add-int/2addr v14, v13

    goto :goto_8

    :cond_b
    add-int/lit8 v14, v13, 0x1

    mul-int v13, v13, v14

    .line 1092
    div-int/2addr v13, v4

    add-int v14, v13, v11

    .line 1094
    :goto_8
    aget-wide v13, v2, v14

    aput-wide v13, v1, v9

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1097
    :cond_d
    new-instance v9, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v11, v6, [[D

    aput-object v1, v11, v5

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v23, 0x0

    const/4 v12, 0x1

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move/from16 v22, v7

    invoke-direct/range {v9 .. v23}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v9

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1066
    :cond_f
    new-instance v7, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v9, v6, [[D

    aput-object v2, v9, v5

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    move v13, v15

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v21, 0x0

    const/4 v10, 0x1

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move/from16 v20, v5

    invoke-direct/range {v7 .. v21}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v7

    .line 1011
    :cond_10
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v7, v4, v6

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 1007
    :cond_11
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v7, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method
