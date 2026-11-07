.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "MullerSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 59
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;-><init>(D)V

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

.method private solve(DDDD)D
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 133
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getRelativeAccuracy()D

    move-result-wide v1

    .line 134
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getAbsoluteAccuracy()D

    move-result-wide v3

    .line 135
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getFunctionValueAccuracy()D

    move-result-wide v5

    add-double v7, p1, p3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v9

    .line 147
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v11

    move-wide/from16 v15, p5

    move-wide/from16 v17, p7

    move-wide/from16 v19, v7

    move-wide/from16 v21, v11

    const-wide/high16 v23, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v7, p1

    move-wide/from16 v11, p3

    :goto_0
    sub-double v25, v21, v15

    sub-double v27, v19, v7

    div-double v25, v25, v27

    sub-double v29, v17, v21

    sub-double v31, v11, v19

    div-double v29, v29, v31

    sub-double v29, v29, v25

    sub-double v33, v11, v7

    div-double v29, v29, v33

    mul-double v35, v27, v29

    add-double v25, v25, v35

    mul-double v35, v25, v25

    const-wide/high16 v37, 0x4010000000000000L    # 4.0

    mul-double v37, v37, v21

    mul-double v37, v37, v29

    sub-double v35, v35, v37

    const-wide/high16 v29, -0x4000000000000000L    # -2.0

    mul-double v29, v29, v21

    .line 160
    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v37

    add-double v37, v25, v37

    div-double v37, v29, v37

    add-double v37, v19, v37

    .line 161
    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v35

    sub-double v25, v25, v35

    div-double v29, v29, v25

    add-double v29, v19, v29

    move-object/from16 p1, v0

    move-wide/from16 p2, v7

    move-wide/from16 p6, v11

    move-wide/from16 p4, v37

    .line 164
    invoke-virtual/range {p1 .. p7}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->isSequence(DDD)Z

    move-result v0

    move-wide/from16 v25, v9

    move-object/from16 v9, p1

    if-eqz v0, :cond_0

    move-wide/from16 v13, v37

    goto :goto_1

    :cond_0
    move-wide/from16 v13, v29

    .line 165
    :goto_1
    invoke-virtual {v9, v13, v14}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v29

    .line 168
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v37

    move-wide/from16 v39, v1

    mul-double v0, v39, v37

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    sub-double v23, v13, v23

    .line 169
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    cmpg-double v2, v23, v0

    if-lez v2, :cond_b

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v5

    if-gtz v2, :cond_1

    goto/16 :goto_8

    :cond_1
    const-wide v0, 0x3fee666666666666L    # 0.95

    cmpg-double v2, v13, v19

    if-gez v2, :cond_2

    mul-double v23, v33, v0

    cmpl-double v10, v27, v23

    if-gtz v10, :cond_4

    :cond_2
    cmpl-double v10, v13, v19

    if-lez v10, :cond_3

    mul-double v33, v33, v0

    cmpl-double v0, v31, v33

    if-gtz v0, :cond_4

    :cond_3
    if-nez v10, :cond_6

    :cond_4
    add-double v0, v7, v11

    mul-double v0, v0, v25

    .line 191
    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v13

    .line 192
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v19

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v21

    add-double v19, v19, v21

    const-wide/16 v21, 0x0

    cmpl-double v2, v19, v21

    if-nez v2, :cond_5

    move-wide v11, v0

    move-wide/from16 v17, v13

    goto :goto_2

    :cond_5
    move-wide v7, v0

    move-wide v15, v13

    :goto_2
    add-double v0, v7, v11

    mul-double v0, v0, v25

    .line 198
    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v13

    move-wide/from16 v19, v0

    move-wide/from16 v21, v13

    const-wide/high16 v23, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_7

    :cond_6
    if-gez v2, :cond_7

    goto :goto_3

    :cond_7
    move-wide/from16 v7, v19

    :goto_3
    if-gez v2, :cond_8

    goto :goto_4

    :cond_8
    move-wide/from16 v15, v21

    :goto_4
    cmpl-double v0, v13, v19

    if-lez v0, :cond_9

    goto :goto_5

    :cond_9
    move-wide/from16 v11, v19

    :goto_5
    if-lez v0, :cond_a

    goto :goto_6

    :cond_a
    move-wide/from16 v17, v21

    :goto_6
    move-wide/from16 v19, v13

    move-wide/from16 v23, v19

    move-wide/from16 v21, v29

    :goto_7
    move-object v0, v9

    move-wide/from16 v9, v25

    move-wide/from16 v1, v39

    goto/16 :goto_0

    :cond_b
    :goto_8
    return-wide v13
.end method


# virtual methods
.method protected doSolve()D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getMin()D

    move-result-wide v1

    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getMax()D

    move-result-wide v3

    move-wide v5, v3

    .line 90
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getStartValue()D

    move-result-wide v3

    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getFunctionValueAccuracy()D

    move-result-wide v7

    move-object/from16 v0, p0

    .line 94
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->verifySequence(DDD)V

    move-wide v9, v5

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 98
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpg-double v13, v11, v7

    if-gez v13, :cond_0

    return-wide v1

    .line 101
    :cond_0
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v11

    .line 102
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpg-double v15, v13, v7

    if-gez v15, :cond_1

    return-wide v9

    :cond_1
    move-wide v13, v7

    .line 105
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 106
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v17, v15, v13

    if-gez v17, :cond_2

    return-wide v3

    .line 110
    :cond_2
    invoke-virtual {v0, v1, v2, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->verifyBracketing(DD)V

    .line 112
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->isBracketing(DD)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 113
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->solve(DDDD)D

    move-result-wide v1

    return-wide v1

    :cond_3
    move-wide v1, v3

    move-wide v5, v7

    move-wide v3, v9

    move-wide v7, v11

    .line 115
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->solve(DDDD)D

    move-result-wide v1

    return-wide v1
.end method
