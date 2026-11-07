.class Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;
.super Ljava/lang/Object;
.source "LaguerreSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComplexSolver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V

    return-void
.end method


# virtual methods
.method public isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z
    .locals 7

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->isSequence(DDD)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getRelativeAccuracy()D

    move-result-wide p3

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v0

    mul-double p3, p3, v0

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p3

    .line 253
    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double p1, v0, p3

    if-lez p1, :cond_1

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide p3

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v0

    cmpg-double p1, p3, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return p2
.end method

.method public solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_6

    .line 329
    array-length v2, v1

    add-int/lit8 v3, v2, -0x1

    if-eqz v3, :cond_5

    .line 334
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getAbsoluteAccuracy()D

    move-result-wide v4

    .line 335
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getRelativeAccuracy()D

    move-result-wide v6

    .line 336
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v8

    .line 338
    new-instance v10, Lorg/apache/commons/math3/complex/Complex;

    int-to-double v11, v3

    const-wide/16 v13, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 339
    new-instance v11, Lorg/apache/commons/math3/complex/Complex;

    add-int/lit8 v2, v2, -0x2

    move-wide v15, v6

    int-to-double v6, v2

    invoke-direct {v11, v6, v7, v13, v14}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 342
    new-instance v6, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v13, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v6, v13, v14, v13, v14}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object v7, v6

    move-object/from16 v6, p2

    .line 347
    :goto_0
    aget-object v12, v1, v3

    .line 348
    sget-object v17, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    .line 349
    sget-object v18, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    move/from16 v19, v2

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    :goto_1
    if-ltz v19, :cond_0

    .line 351
    invoke-virtual {v6, v14}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v14

    .line 352
    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    .line 353
    aget-object v1, p1, v19

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v12

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 355
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    move/from16 v20, v2

    move/from16 v19, v3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-wide/from16 v21, v8

    const-wide/16 v8, 0x0

    invoke-direct {v1, v2, v3, v8, v9}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v14, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 358
    invoke-virtual {v6}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v2

    mul-double v2, v2, v15

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 360
    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v7

    cmpg-double v9, v7, v2

    if-gtz v9, :cond_1

    goto :goto_2

    .line 363
    :cond_1
    invoke-virtual {v12}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v2

    cmpg-double v7, v2, v21

    if-gtz v7, :cond_2

    :goto_2
    return-object v6

    .line 368
    :cond_2
    invoke-virtual {v13, v12}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    .line 369
    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v3

    .line 370
    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 371
    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->sqrt()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 374
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v3

    .line 375
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 376
    invoke-virtual {v3}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v12

    cmpl-double v2, v7, v12

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v1

    .line 379
    :goto_3
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v8, 0x0

    invoke-direct {v1, v8, v9, v8, v9}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/complex/Complex;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v1, v4, v5, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 381
    new-instance v2, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v2, v12, v13, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object v7, v2

    goto :goto_4

    :cond_4
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 385
    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    move-object v7, v6

    :goto_4
    move-object v6, v1

    .line 387
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->incrementEvaluationCount()V

    move-object/from16 v1, p1

    move-wide v13, v12

    move/from16 v3, v19

    move/from16 v2, v20

    move-wide/from16 v8, v21

    goto/16 :goto_0

    .line 331
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 326
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v1
.end method

.method public solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 279
    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    if-eqz v1, :cond_3

    .line 284
    new-array v0, v0, [Lorg/apache/commons/math3/complex/Complex;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v1, :cond_0

    .line 286
    aget-object v4, p1, v3

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_0
    new-array p1, v1, [Lorg/apache/commons/math3/complex/Complex;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    sub-int v4, v1, v3

    add-int/lit8 v5, v4, 0x1

    .line 292
    new-array v6, v5, [Lorg/apache/commons/math3/complex/Complex;

    .line 293
    invoke-static {v0, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-virtual {p0, v6, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    aput-object v5, p1, v3

    .line 296
    aget-object v5, v0, v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_1

    .line 299
    aget-object v6, v0, v4

    .line 300
    aput-object v5, v0, v4

    .line 301
    aget-object v7, p1, v3

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    .line 281
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1

    .line 277
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method
