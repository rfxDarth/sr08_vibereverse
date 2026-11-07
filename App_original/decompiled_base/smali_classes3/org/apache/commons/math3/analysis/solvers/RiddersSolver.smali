.class public Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "RiddersSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 43
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 71
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getMin()D

    move-result-wide v1

    .line 72
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getMax()D

    move-result-wide v3

    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 79
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-nez v11, :cond_0

    return-wide v1

    :cond_0
    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    return-wide v3

    .line 88
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->verifyBracketing(DD)V

    .line 90
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getAbsoluteAccuracy()D

    move-result-wide v11

    .line 91
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getFunctionValueAccuracy()D

    move-result-wide v13

    .line 92
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getRelativeAccuracy()D

    move-result-wide v15

    const-wide/high16 v17, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    add-double v21, v1, v3

    move-wide/from16 v23, v9

    mul-double v9, v21, v19

    .line 98
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v19

    .line 99
    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v21

    cmpg-double v25, v21, v13

    if-gtz v25, :cond_2

    return-wide v9

    :cond_2
    mul-double v21, v5, v7

    mul-double v25, v19, v19

    div-double v21, v21, v25

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    sub-double v25, v25, v21

    .line 103
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v27

    mul-double v21, v21, v27

    sub-double v27, v9, v1

    mul-double v21, v21, v27

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v25

    div-double v21, v21, v25

    move-wide/from16 v25, v1

    sub-double v1, v9, v21

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v27

    .line 109
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    move-wide/from16 v31, v1

    mul-double v0, v15, v29

    invoke-static {v0, v1, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    sub-double v17, v31, v17

    .line 110
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    cmpg-double v2, v17, v0

    if-gtz v2, :cond_3

    goto :goto_1

    .line 113
    :cond_3
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v13

    if-gtz v2, :cond_4

    :goto_1
    return-wide v31

    :cond_4
    cmpl-double v0, v21, v23

    if-lez v0, :cond_6

    .line 120
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v0

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    cmpl-double v2, v0, v23

    if-nez v2, :cond_5

    move-wide/from16 v1, v25

    goto :goto_3

    :cond_5
    move-wide v3, v9

    move-wide/from16 v7, v19

    goto :goto_2

    .line 130
    :cond_6
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v0

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v5

    add-double/2addr v0, v5

    cmpl-double v2, v0, v23

    if-nez v2, :cond_7

    :goto_2
    move-wide/from16 v5, v27

    move-wide/from16 v1, v31

    goto :goto_4

    :cond_7
    move-wide v1, v9

    move-wide/from16 v5, v19

    :goto_3
    move-wide/from16 v7, v27

    move-wide/from16 v3, v31

    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v9, v23

    move-wide/from16 v17, v31

    goto/16 :goto_0
.end method
