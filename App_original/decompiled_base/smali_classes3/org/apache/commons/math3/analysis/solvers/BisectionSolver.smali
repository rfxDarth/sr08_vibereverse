.class public Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BisectionSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 38
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getMin()D

    move-result-wide v0

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getMax()D

    move-result-wide v2

    .line 67
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->verifyInterval(DD)V

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->getAbsoluteAccuracy()D

    move-result-wide v4

    .line 74
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v6

    .line 75
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->computeObjectiveValue(D)D

    move-result-wide v8

    .line 76
    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/analysis/solvers/BisectionSolver;->computeObjectiveValue(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    const-wide/16 v8, 0x0

    cmpl-double v12, v10, v8

    if-lez v12, :cond_1

    move-wide v0, v6

    goto :goto_0

    :cond_1
    move-wide v2, v6

    :goto_0
    sub-double v6, v2, v0

    .line 86
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_0

    .line 87
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->midpoint(DD)D

    move-result-wide v0

    return-wide v0
.end method
