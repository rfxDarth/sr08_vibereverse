.class public Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.source "LaguerreSolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field private final complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 55
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(D)V

    .line 49
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DD)V

    .line 49
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 85
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DDD)V

    move-object p1, p0

    .line 49
    new-instance p2, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V

    iput-object p2, p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    return-void
.end method


# virtual methods
.method public doSolve()D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getMin()D

    move-result-wide v1

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getMax()D

    move-result-wide v3

    move-wide v5, v3

    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getStartValue()D

    move-result-wide v3

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v9

    move-object/from16 v0, p0

    .line 101
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->verifySequence(DDD)V

    move-wide v11, v5

    .line 104
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 105
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v13, v7, v9

    if-gtz v13, :cond_0

    return-wide v3

    :cond_0
    move-wide v7, v5

    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 111
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

    .line 117
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v1

    return-wide v1

    :cond_2
    move-wide v13, v1

    move-wide/from16 v17, v5

    .line 121
    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    .line 122
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

    .line 128
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

    move-result-wide v1

    return-wide v1

    :cond_4
    move-wide v7, v1

    move-wide v3, v11

    .line 131
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-wide v1, v13

    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0
.end method

.method public laguerre(DDDD)D
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 157
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getCoefficients()[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 159
    new-instance v2, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v5, p1, p3

    mul-double v5, v5, v3

    const-wide/16 v3, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 160
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v9

    .line 161
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v9}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v1

    return-wide v1

    .line 166
    :cond_0
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    const/4 v2, 0x0

    .line 167
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 168
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    aget-object v15, v1, v2

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    invoke-virtual/range {v10 .. v15}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v1

    return-wide v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1
.end method

.method public solveAllComplex([DD)[Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 198
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const v1, 0x7fffffff

    move-object v0, p0

    move-wide v7, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 203
    iget-object p2, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    new-instance p3, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v1, 0x0

    invoke-direct {p3, v7, v8, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public solveComplex([DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 228
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const v1, 0x7fffffff

    move-object v0, p0

    move-wide v7, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 233
    iget-object p2, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->complexSolver:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    new-instance p3, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v1, 0x0

    invoke-direct {p3, v7, v8, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method
