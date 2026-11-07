.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "MullerSolver2.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 59
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 88
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMin()D

    move-result-wide v2

    .line 89
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMax()D

    move-result-wide v4

    .line 91
    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->verifyInterval(DD)V

    .line 93
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getRelativeAccuracy()D

    move-result-wide v6

    .line 94
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getAbsoluteAccuracy()D

    move-result-wide v8

    .line 95
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getFunctionValueAccuracy()D

    move-result-wide v10

    move-wide v12, v6

    .line 102
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v6

    .line 103
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v1, v14, v10

    if-gez v1, :cond_0

    return-wide v2

    .line 107
    :cond_0
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v14

    .line 108
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    cmpg-double v1, v16, v10

    if-gez v1, :cond_1

    return-wide v4

    :cond_1
    mul-double v16, v6, v14

    const-wide/16 v18, 0x0

    cmpl-double v1, v16, v18

    if-gtz v1, :cond_9

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v20, v2, v4

    move-wide/from16 v22, v2

    mul-double v1, v20, v16

    .line 117
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v16

    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v24, v14

    move-wide v14, v6

    move-wide/from16 v6, v24

    move-wide/from16 v24, v4

    move-wide/from16 v28, v20

    move-wide/from16 v26, v22

    :goto_0
    sub-double v30, v1, v24

    sub-double v26, v24, v26

    div-double v26, v30, v26

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v34, v26, v32

    mul-double v36, v34, v6

    sub-double v36, v16, v36

    mul-double v38, v26, v14

    add-double v36, v36, v38

    mul-double v36, v36, v26

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v40, v26, v38

    add-double v40, v40, v32

    mul-double v40, v40, v16

    mul-double v32, v34, v34

    mul-double v32, v32, v6

    sub-double v40, v40, v32

    mul-double v26, v26, v26

    mul-double v26, v26, v14

    add-double v40, v40, v26

    mul-double v34, v34, v16

    mul-double v14, v40, v40

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v36, v36, v26

    mul-double v36, v36, v34

    sub-double v26, v14, v36

    cmpl-double v3, v26, v18

    if-ltz v3, :cond_3

    .line 131
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    add-double v14, v40, v14

    .line 132
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    sub-double v40, v40, v26

    .line 133
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpl-double v3, v26, v32

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move-wide/from16 v14, v40

    goto :goto_1

    :cond_3
    sub-double v14, v14, v26

    .line 136
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    :goto_1
    cmpl-double v3, v14, v18

    if-eqz v3, :cond_5

    mul-double v34, v34, v38

    mul-double v34, v34, v30

    div-double v34, v34, v14

    sub-double v14, v1, v34

    :goto_2
    cmpl-double v3, v14, v24

    if-eqz v3, :cond_4

    cmpl-double v3, v14, v1

    if-nez v3, :cond_6

    :cond_4
    add-double/2addr v14, v8

    goto :goto_2

    .line 147
    :cond_5
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath;->random()D

    move-result-wide v14

    sub-double v26, v4, v22

    mul-double v14, v14, v26

    add-double v14, v22, v14

    move-wide/from16 v28, v20

    .line 150
    :cond_6
    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v26

    .line 153
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    move-wide/from16 v32, v1

    mul-double v0, v12, v30

    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    sub-double v2, v14, v28

    .line 154
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v28, v2, v0

    if-lez v28, :cond_8

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v10

    if-gtz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v28, v1

    move-wide v14, v6

    move-wide/from16 v6, v16

    move-wide/from16 v16, v26

    move-wide/from16 v26, v24

    move-wide/from16 v24, v32

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-wide v14

    :cond_9
    move-wide/from16 v22, v2

    .line 113
    new-instance v1, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-wide v8, v14

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v1
.end method
