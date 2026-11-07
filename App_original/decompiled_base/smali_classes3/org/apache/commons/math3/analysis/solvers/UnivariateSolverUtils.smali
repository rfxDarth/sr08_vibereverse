.class public Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;
.super Ljava/lang/Object;
.source "UnivariateSolverUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const v11, 0x7fffffff

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    .line 203
    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D

    move-result-object p0

    return-object p0
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p11

    if-eqz v0, :cond_7

    const-wide/16 v9, 0x0

    cmpg-double v1, p7, v9

    if-lez v1, :cond_6

    if-lez v7, :cond_5

    move-wide/from16 v3, p1

    move-wide/from16 v1, p3

    move-wide/from16 v5, p5

    .line 308
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifySequence(DDD)V

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v14, p1

    move-wide/from16 v16, v14

    move-wide v11, v3

    move-wide/from16 v18, v9

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v7, :cond_4

    cmpl-double v20, v14, v1

    if-gtz v20, :cond_0

    cmpl-double v20, v16, v5

    if-lez v20, :cond_4

    :cond_0
    mul-double v18, v18, p9

    add-double v18, v18, p7

    move-wide/from16 v20, v9

    sub-double v9, p1, v18

    .line 327
    invoke-static {v9, v10, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    add-double v1, p1, v18

    .line 328
    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 329
    invoke-interface {v0, v9, v10}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v22

    .line 330
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v24

    const/16 v26, 0x0

    const/4 v8, 0x2

    const/16 v27, 0x1

    if-nez v13, :cond_1

    mul-double v3, v22, v24

    cmpg-double v11, v3, v20

    if-gtz v11, :cond_3

    .line 337
    new-array v0, v8, [D

    aput-wide v9, v0, v26

    aput-wide v1, v0, v27

    return-object v0

    :cond_1
    mul-double v3, v3, v22

    cmpg-double v28, v3, v20

    if-gtz v28, :cond_2

    .line 344
    new-array v0, v8, [D

    aput-wide v9, v0, v26

    aput-wide v14, v0, v27

    return-object v0

    :cond_2
    mul-double v11, v11, v24

    cmpg-double v3, v11, v20

    if-gtz v3, :cond_3

    .line 347
    new-array v0, v8, [D

    aput-wide v16, v0, v26

    aput-wide v1, v0, v27

    return-object v0

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v16, v1

    move-wide v14, v9

    move-wide/from16 v9, v20

    move-wide/from16 v3, v22

    move-wide/from16 v11, v24

    move-wide/from16 v1, p3

    goto :goto_0

    .line 354
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-object/from16 p0, v0

    move-wide/from16 p5, v3

    move-wide/from16 p7, v11

    move-wide/from16 p1, v14

    move-wide/from16 p3, v16

    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0

    .line 306
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_MAX_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 303
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_7
    const/16 v26, 0x0

    .line 300
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDI)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v11, p7

    .line 230
    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D

    move-result-object p0

    return-object p0
.end method

.method public static forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
            "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
            ">;DDD",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v2, p1

    move-wide/from16 v0, p5

    move-wide/from16 v3, p7

    .line 107
    sget-object v5, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v9, p9

    if-ne v9, v5, :cond_0

    return-wide p3

    .line 113
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v5

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v7

    mul-double v7, v7, p3

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    sub-double v7, p3, v5

    .line 115
    invoke-static {v0, v1, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    .line 116
    invoke-interface {v2, v7, v8}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v10

    add-double v12, p3, v5

    .line 117
    invoke-static {v3, v4, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v12

    .line 118
    invoke-interface {v2, v12, v13}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v14

    add-int/lit8 v16, p0, -0x2

    move-wide/from16 v19, v7

    move-wide/from16 v23, v10

    move-wide/from16 v21, v12

    move-wide/from16 v25, v14

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v16, :cond_9

    const-wide/16 v10, 0x0

    cmpl-double v12, v23, v10

    if-ltz v12, :cond_2

    cmpg-double v13, v25, v10

    if-lez v13, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object/from16 v0, p2

    move-wide/from16 v7, p3

    move/from16 v1, v16

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    goto :goto_3

    :cond_2
    :goto_2
    cmpg-double v13, v23, v10

    if-gtz v13, :cond_3

    cmpl-double v14, v25, v10

    if-ltz v14, :cond_3

    goto :goto_1

    .line 124
    :goto_3
    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v0

    return-wide v0

    :cond_3
    cmpg-double v9, v23, v25

    if-gez v9, :cond_4

    if-ltz v12, :cond_6

    :goto_4
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_5

    :cond_4
    cmpl-double v9, v23, v25

    if-lez v9, :cond_5

    if-gtz v13, :cond_6

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    sub-double v9, v19, v5

    .line 152
    invoke-static {v0, v1, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    .line 153
    invoke-interface {v2, v9, v10}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v11

    add-int/lit8 v16, v16, -0x1

    move-wide/from16 v19, v9

    move-wide/from16 v23, v11

    :cond_7
    if-eqz v8, :cond_8

    add-double v7, v21, v5

    .line 159
    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    .line 160
    invoke-interface {v2, v7, v8}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v9

    add-int/lit8 v16, v16, -0x1

    move-wide/from16 v21, v7

    move-wide/from16 v25, v9

    :cond_8
    move-object/from16 v9, p9

    goto :goto_0

    .line 166
    :cond_9
    new-instance v17, Lorg/apache/commons/math3/exception/NoBracketingException;

    sget-object v18, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FAILED_BRACKETING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    sub-int v2, p0, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object v5, v3, v8

    const/4 v2, 0x2

    aput-object v6, v3, v2

    const/4 v2, 0x3

    aput-object v0, v3, v2

    const/4 v0, 0x4

    aput-object v1, v3, v0

    move-object/from16 v27, v3

    invoke-direct/range {v17 .. v27}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;DDDD[Ljava/lang/Object;)V

    throw v17
.end method

.method public static isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 388
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    .line 389
    invoke-interface {p0, p3, p4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p3

    const-wide/16 v1, 0x0

    cmpl-double p0, p1, v1

    if-ltz p0, :cond_0

    cmpg-double p0, p3, v1

    if-lez p0, :cond_1

    :cond_0
    cmpg-double p0, p1, v1

    if-gtz p0, :cond_2

    cmpl-double p0, p3, v1

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    .line 386
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static isSequence(DDD)Z
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    cmpg-double p0, p2, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static midpoint(DD)D
    .locals 0

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 56
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    const v1, 0x7fffffff

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 57
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide p0

    return-wide p0

    .line 54
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    move-wide v0, p5

    move-wide p5, p3

    move-wide p3, p1

    move-object p2, p0

    .line 81
    new-instance p0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>(D)V

    const p1, 0x7fffffff

    .line 82
    invoke-interface/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide p0

    return-wide p0

    .line 79
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static verifyBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 459
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 460
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NoBracketingException;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    invoke-interface {p0, p3, p4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v8

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v1

    .line 457
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static verifyInterval(DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    cmpl-double v0, p0, p2

    if-gez v0, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public static verifySequence(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 436
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 437
    invoke-static {p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    return-void
.end method
