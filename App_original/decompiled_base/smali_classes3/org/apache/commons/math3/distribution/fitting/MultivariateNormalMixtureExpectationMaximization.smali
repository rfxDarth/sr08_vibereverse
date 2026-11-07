.class public Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;
.super Ljava/lang/Object;
.source "MultivariateNormalMixtureExpectationMaximization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ITERATIONS:I = 0x3e8

.field private static final DEFAULT_THRESHOLD:D = 1.0E-5


# instance fields
.field private final data:[[D

.field private fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

.field private logLikelihood:D


# direct methods
.method public constructor <init>([[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 91
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 95
    array-length v0, p1

    const/4 v2, 0x0

    aget-object v3, p1, v2

    array-length v3, v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v1

    aput v0, v5, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    const/4 v0, 0x0

    .line 97
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 98
    aget-object v3, p1, v0

    array-length v5, v3

    aget-object v6, p1, v2

    array-length v6, v6

    if-ne v5, v6, :cond_1

    .line 103
    array-length v5, v3

    if-lt v5, v4, :cond_0

    .line 107
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    array-length v6, v3

    invoke-static {v3, v6}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v3

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object p1, p1, v0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, p1, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 100
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v0, p1, v0

    array-length v0, v0

    aget-object p1, p1, v2

    array-length p1, p1

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    return-void

    .line 92
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public static estimate([[DI)Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 307
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_6

    const/4 v2, 0x1

    if-lt v1, v3, :cond_5

    .line 313
    array-length v4, v0

    if-gt v1, v4, :cond_4

    .line 317
    array-length v4, v0

    const/4 v5, 0x0

    .line 318
    aget-object v6, v0, v5

    array-length v6, v6

    .line 321
    new-array v7, v4, [Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    .line 323
    new-instance v9, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;

    aget-object v10, v0, v8

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;-><init>([D)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    int-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v8, v10, v8

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v1, :cond_3

    mul-int v13, v12, v4

    .line 337
    div-int/2addr v13, v1

    add-int/lit8 v12, v12, 0x1

    mul-int v14, v12, v4

    .line 340
    div-int/2addr v14, v1

    sub-int v15, v14, v13

    const/16 v16, 0x0

    .line 346
    new-array v5, v3, [I

    aput v6, v5, v2

    aput v15, v5, v16

    const/16 v17, 0x2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 349
    new-array v5, v6, [D

    const/16 v18, 0x0

    :goto_2
    if-ge v13, v14, :cond_2

    move-wide/from16 v19, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_1

    .line 354
    aget-object v11, v7, v13

    invoke-virtual {v11}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization$DataRow;->getRow()[D

    move-result-object v11

    aget-wide v21, v11, v10

    .line 355
    aget-wide v23, v5, v10

    add-double v23, v23, v21

    aput-wide v23, v5, v10

    .line 356
    aget-object v11, v3, v18

    aput-wide v21, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v18, v18, 0x1

    move-wide/from16 v10, v19

    goto :goto_2

    :cond_2
    move-wide/from16 v19, v10

    int-to-double v10, v15

    div-double v10, v19, v10

    .line 360
    invoke-static {v10, v11, v5}, Lorg/apache/commons/math3/util/MathArrays;->scaleInPlace(D[D)V

    .line 363
    new-instance v10, Lorg/apache/commons/math3/stat/correlation/Covariance;

    invoke-direct {v10, v3}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>([[D)V

    invoke-virtual {v10}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    .line 365
    new-instance v10, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-direct {v10, v5, v3}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>([D[[D)V

    .line 368
    new-instance v3, Lorg/apache/commons/math3/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v5, v10}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v19

    const/4 v3, 0x2

    const/4 v5, 0x0

    goto :goto_1

    .line 371
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v1

    .line 314
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v3

    :cond_5
    const/16 v17, 0x2

    .line 311
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 308
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const/16 v0, 0x3e8

    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 282
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V

    return-void
.end method

.method public fit(Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;ID)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    if-lt v1, v2, :cond_e

    const-wide/16 v3, 0x1

    cmpg-double v5, p3, v3

    if-ltz v5, :cond_d

    .line 147
    iget-object v3, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    array-length v4, v3

    const/4 v5, 0x0

    .line 151
    aget-object v3, v3, v5

    array-length v3, v3

    .line 152
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 154
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    invoke-virtual {v7}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v7

    array-length v7, v7

    if-ne v7, v3, :cond_c

    const-wide/high16 v7, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 164
    iput-wide v7, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 167
    new-instance v7, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    iput-object v7, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    :goto_0
    add-int/lit8 v12, v9, 0x1

    if-gt v9, v1, :cond_a

    .line 169
    iget-wide v13, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    sub-double v13, v10, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpl-double v9, v13, p3

    if-lez v9, :cond_a

    .line 171
    iget-wide v10, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 175
    iget-object v9, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual {v9}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v9

    .line 179
    new-array v13, v6, [D

    .line 181
    new-array v14, v6, [Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v6, :cond_0

    .line 184
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    aput-wide v16, v13, v15

    .line 185
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;

    aput-object v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x2

    .line 192
    new-array v15, v9, [I

    aput v6, v15, v2

    aput v4, v15, v5

    const/16 v16, 0x1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 195
    new-array v15, v6, [D

    const/16 v17, 0x0

    .line 198
    new-array v5, v9, [I

    aput v3, v5, v16

    aput v6, v5, v17

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 201
    iget-object v8, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    iget-object v9, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->density([D)D

    move-result-wide v8

    .line 202
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v20

    add-double v18, v18, v20

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_2

    .line 205
    aget-object v20, v2, v7

    aget-wide v21, v13, v1

    move/from16 v23, v1

    aget-object v1, v14, v23

    move-object/from16 v24, v2

    iget-object v2, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->density([D)D

    move-result-wide v1

    mul-double v21, v21, v1

    div-double v21, v21, v8

    aput-wide v21, v20, v23

    .line 206
    aget-wide v1, v15, v23

    aget-object v20, v24, v7

    aget-wide v21, v20, v23

    add-double v1, v1, v21

    aput-wide v1, v15, v23

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_1

    .line 209
    aget-object v2, v5, v23

    aget-wide v20, v2, v1

    aget-object v22, v24, v7

    aget-wide v25, v22, v23

    move/from16 v22, v1

    iget-object v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v1, v1, v7

    aget-wide v27, v1, v22

    mul-double v25, v25, v27

    add-double v20, v20, v25

    aput-wide v20, v2, v22

    add-int/lit8 v1, v22, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v1, v23, 0x1

    move-object/from16 v2, v24

    goto :goto_3

    :cond_2
    move-object/from16 v24, v2

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p2

    const/4 v9, 0x2

    goto :goto_2

    :cond_3
    move-object/from16 v24, v2

    int-to-double v1, v4

    div-double v7, v18, v1

    .line 214
    iput-wide v7, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    .line 218
    new-array v7, v6, [D

    const/4 v8, 0x2

    .line 219
    new-array v9, v8, [I

    aput v3, v9, v16

    aput v6, v9, v17

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_5

    .line 222
    aget-wide v13, v15, v9

    div-double/2addr v13, v1

    aput-wide v13, v7, v9

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v3, :cond_4

    .line 224
    aget-object v14, v8, v9

    aget-object v18, v5, v9

    aget-wide v19, v18, v13

    aget-wide v21, v15, v9

    div-double v19, v19, v21

    aput-wide v19, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 229
    :cond_5
    new-array v1, v6, [Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v6, :cond_6

    .line 231
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, v3, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_8

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v6, :cond_7

    .line 235
    new-instance v9, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v13, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->data:[[D

    aget-object v13, v13, v2

    aget-object v14, v8, v5

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/MathArrays;->ebeSubtract([D[D)[D

    move-result-object v13

    invoke-direct {v9, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([D)V

    .line 237
    invoke-interface {v9}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v13

    invoke-interface {v9, v13}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    aget-object v13, v24, v2

    move-object v14, v1

    move/from16 v18, v2

    aget-wide v1, v13, v5

    invoke-interface {v9, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 239
    aget-object v2, v14, v5

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    aput-object v1, v14, v5

    add-int/lit8 v5, v5, 0x1

    move-object v1, v14

    move/from16 v2, v18

    goto :goto_9

    :cond_7
    move-object v14, v1

    move/from16 v18, v2

    add-int/lit8 v2, v18, 0x1

    goto :goto_8

    :cond_8
    move-object v14, v1

    const/4 v1, 0x3

    .line 244
    new-array v1, v1, [I

    const/4 v2, 0x2

    aput v3, v1, v2

    aput v3, v1, v16

    aput v6, v1, v17

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v6, :cond_9

    .line 246
    aget-object v5, v14, v2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aget-wide v20, v15, v2

    move-wide/from16 v22, v10

    div-double v9, v18, v20

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    aput-object v5, v14, v2

    .line 247
    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v5

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v10, v22

    goto :goto_a

    :cond_9
    move-wide/from16 v22, v10

    .line 251
    new-instance v2, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-direct {v2, v7, v8, v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>([D[[D[[[D)V

    iput-object v2, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    move/from16 v1, p2

    move v9, v12

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 256
    :cond_a
    iget-wide v1, v0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    sub-double/2addr v10, v1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpl-double v3, v1, p3

    if-gtz v3, :cond_b

    return-void

    .line 258
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v1

    .line 158
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v1, v7, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 144
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 140
    :cond_e
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method public getFittedModel()Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;
    .locals 2

    .line 389
    new-instance v0, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->fittedModel:Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateNormalDistribution;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getLogLikelihood()D
    .locals 2

    .line 380
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/fitting/MultivariateNormalMixtureExpectationMaximization;->logLikelihood:D

    return-wide v0
.end method
