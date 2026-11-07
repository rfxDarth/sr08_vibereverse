.class public Lorg/apache/commons/math3/analysis/solvers/BrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BrentSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 47
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method

.method private brent(DDDD)D
    .locals 38

    sub-double v0, p3, p1

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getRelativeAccuracy()D

    move-result-wide v4

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide v12, v10

    move-wide/from16 v14, p7

    move-wide/from16 v16, v0

    move-wide/from16 v18, v16

    move-wide v0, v6

    .line 157
    :goto_0
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpg-double v24, v20, v22

    if-gez v24, :cond_0

    move-wide v6, v0

    move-wide v0, v8

    move-wide v12, v10

    move-wide v10, v14

    goto :goto_1

    :cond_0
    move-wide/from16 v36, v8

    move-wide v8, v6

    move-wide/from16 v6, v36

    move-wide/from16 v36, v14

    move-wide v14, v12

    move-wide/from16 v12, v36

    :goto_1
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v22, v4, v20

    .line 166
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v22, v22, v2

    sub-double v24, v0, v6

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v26

    .line 169
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    cmpg-double v30, v28, v22

    if-lez v30, :cond_c

    move-wide/from16 p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v28

    if-eqz v28, :cond_1

    goto/16 :goto_a

    .line 173
    :cond_1
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    cmpg-double v30, v28, v22

    if-ltz v30, :cond_6

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    cmpg-double v32, v28, v30

    if-gtz v32, :cond_2

    goto :goto_4

    :cond_2
    div-double v28, v12, v14

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v32, v8, p1

    if-nez v32, :cond_3

    mul-double v20, v20, v24

    mul-double v20, v20, v28

    sub-double v30, v30, v28

    goto :goto_2

    :cond_3
    div-double/2addr v14, v10

    div-double v32, v12, v10

    mul-double v20, v20, v24

    mul-double v20, v20, v14

    sub-double v34, v14, v32

    mul-double v20, v20, v34

    sub-double v8, v6, v8

    sub-double v32, v32, v30

    mul-double v8, v8, v32

    sub-double v20, v20, v8

    mul-double v20, v20, v28

    sub-double v14, v14, v30

    mul-double v14, v14, v32

    sub-double v28, v28, v30

    mul-double v30, v14, v28

    :goto_2
    move-wide/from16 v8, v20

    move-wide/from16 v14, v30

    cmpl-double v20, v8, v0

    if-lez v20, :cond_4

    neg-double v14, v14

    goto :goto_3

    :cond_4
    neg-double v8, v8

    :goto_3
    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    mul-double v20, v20, v24

    mul-double v20, v20, v14

    mul-double v28, v22, v14

    .line 203
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    sub-double v20, v20, v28

    cmpl-double v28, v8, v20

    if-gez v28, :cond_6

    mul-double v16, v16, v26

    mul-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    cmpl-double v20, v8, v16

    if-ltz v20, :cond_5

    goto :goto_4

    :cond_5
    div-double/2addr v8, v14

    goto :goto_5

    :cond_6
    :goto_4
    move-wide/from16 v8, v24

    move-wide/from16 v18, v8

    .line 217
    :goto_5
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpl-double v16, v14, v22

    if-lez v16, :cond_7

    add-double v14, v6, v8

    :goto_6
    move-wide/from16 p3, v0

    :goto_7
    move-object/from16 v0, p0

    goto :goto_8

    :cond_7
    cmpl-double v14, v24, v0

    if-lez v14, :cond_8

    add-double v22, v6, v22

    move-wide/from16 p3, v0

    move-wide/from16 v14, v22

    goto :goto_7

    :cond_8
    sub-double v14, v6, v22

    goto :goto_6

    .line 224
    :goto_8
    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v16

    cmpl-double v1, v16, p3

    if-lez v1, :cond_9

    cmpl-double v1, v10, p3

    if-gtz v1, :cond_a

    :cond_9
    cmpg-double v1, v16, p3

    if-gtz v1, :cond_b

    cmpg-double v1, v10, p3

    if-gtz v1, :cond_b

    :cond_a
    sub-double v8, v14, v6

    move-wide/from16 v18, v8

    move-wide/from16 v20, v18

    move-wide v10, v12

    move-wide v8, v6

    goto :goto_9

    :cond_b
    move-wide/from16 v20, v8

    move-wide/from16 v8, p1

    :goto_9
    move-wide v0, v8

    move-wide v8, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    goto/16 :goto_0

    :cond_c
    :goto_a
    move-object/from16 v0, p0

    return-wide v6
.end method


# virtual methods
.method protected doSolve()D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getMin()D

    move-result-wide v1

    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getMax()D

    move-result-wide v3

    move-wide v5, v3

    .line 90
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getStartValue()D

    move-result-wide v3

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getFunctionValueAccuracy()D

    move-result-wide v9

    move-object/from16 v0, p0

    .line 93
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->verifySequence(DDD)V

    move-wide v11, v5

    .line 96
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 97
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v13, v7, v9

    if-gtz v13, :cond_0

    return-wide v3

    :cond_0
    move-wide v7, v5

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 103
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpg-double v15, v13, v9

    if-gtz v15, :cond_1

    return-wide v1

    :cond_1
    mul-double v13, v7, v5

    const-wide/16 v15, 0x0

    cmpg-double v17, v13, v15

    if-gez v17, :cond_2

    .line 109
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->brent(DDDD)D

    move-result-wide v1

    return-wide v1

    :cond_2
    move-wide v13, v1

    move-wide/from16 v17, v5

    .line 113
    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    .line 114
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpg-double v19, v5, v9

    if-gtz v19, :cond_3

    return-wide v11

    :cond_3
    mul-double v5, v7, v1

    cmpg-double v9, v5, v15

    if-gez v9, :cond_4

    move-wide v5, v7

    move-wide v7, v1

    move-wide v1, v3

    move-wide v3, v11

    .line 120
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->brent(DDDD)D

    move-result-wide v1

    return-wide v1

    :cond_4
    move-wide v7, v1

    move-wide v3, v11

    .line 123
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-wide v1, v13

    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0
.end method
