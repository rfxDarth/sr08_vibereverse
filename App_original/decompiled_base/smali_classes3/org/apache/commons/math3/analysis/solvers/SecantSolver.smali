.class public Lorg/apache/commons/math3/analysis/solvers/SecantSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SecantSolver.java"


# static fields
.field protected static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 50
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method


# virtual methods
.method protected final doSolve()D
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 79
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getMin()D

    move-result-wide v1

    .line 80
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getMax()D

    move-result-wide v3

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 82
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-nez v11, :cond_0

    return-wide v1

    :cond_0
    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    return-wide v3

    .line 95
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->verifyBracketing(DD)V

    .line 98
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getFunctionValueAccuracy()D

    move-result-wide v11

    .line 99
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getAbsoluteAccuracy()D

    move-result-wide v13

    .line 100
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->getRelativeAccuracy()D

    move-result-wide v15

    move-wide/from16 v21, v3

    move-wide v3, v1

    move-wide/from16 v1, v21

    move-wide/from16 v21, v7

    move-wide v7, v5

    move-wide/from16 v5, v21

    :goto_0
    sub-double v3, v1, v3

    mul-double v3, v3, v5

    sub-double v7, v5, v7

    div-double/2addr v3, v7

    sub-double v3, v1, v3

    .line 106
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/SecantSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    cmpl-double v17, v7, v9

    if-nez v17, :cond_2

    goto :goto_1

    .line 124
    :cond_2
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    cmpg-double v19, v17, v11

    if-gtz v19, :cond_3

    goto :goto_1

    :cond_3
    sub-double v17, v3, v1

    .line 130
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v19

    mul-double v9, v15, v19

    invoke-static {v9, v10, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    cmpg-double v19, v17, v9

    if-gez v19, :cond_4

    :goto_1
    return-wide v3

    :cond_4
    move-wide v9, v3

    move-wide v3, v1

    move-wide v1, v9

    move-wide v9, v7

    move-wide v7, v5

    move-wide v5, v9

    const-wide/16 v9, 0x0

    goto :goto_0
.end method
