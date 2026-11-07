.class public abstract Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BaseSecantSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field private allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field private final method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;


# direct methods
.method protected constructor <init>(DDDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 0

    .line 101
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    move-object p1, p0

    .line 102
    sget-object p2, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p2, p1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 103
    iput-object p7, p1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-void
.end method

.method protected constructor <init>(DDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 85
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 86
    iput-object p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-void
.end method

.method protected constructor <init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 70
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 71
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-void
.end method


# virtual methods
.method protected final doSolve()D
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 138
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getMin()D

    move-result-wide v1

    .line 139
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getMax()D

    move-result-wide v3

    .line 140
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 141
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-nez v11, :cond_0

    return-wide v1

    :cond_0
    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    return-wide v3

    .line 154
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->verifyBracketing(DD)V

    .line 157
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getFunctionValueAccuracy()D

    move-result-wide v11

    .line 158
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getAbsoluteAccuracy()D

    move-result-wide v13

    .line 159
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getRelativeAccuracy()D

    move-result-wide v15

    const/16 v17, 0x0

    :goto_0
    sub-double v18, v3, v1

    mul-double v18, v18, v7

    sub-double v20, v7, v5

    div-double v18, v18, v20

    move-wide/from16 v20, v9

    sub-double v9, v3, v18

    .line 169
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    cmpl-double v22, v18, v20

    if-nez v22, :cond_2

    goto/16 :goto_4

    :cond_2
    mul-double v23, v7, v18

    move-wide/from16 v25, v1

    const/4 v1, 0x1

    cmpg-double v27, v23, v20

    if-gez v27, :cond_3

    xor-int/lit8 v5, v17, 0x1

    move-wide v1, v3

    move/from16 v17, v5

    move-wide v5, v7

    goto :goto_2

    .line 186
    :cond_3
    sget-object v23, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ordinal()I

    move-result v2

    aget v2, v23, v2

    if-eq v2, v1, :cond_7

    const/4 v1, 0x2

    if-eq v2, v1, :cond_6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_5

    cmpl-double v1, v9, v3

    if-eqz v1, :cond_4

    goto :goto_1

    .line 197
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v1

    .line 202
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    :cond_6
    add-double v1, v7, v18

    div-double/2addr v7, v1

    mul-double v5, v5, v7

    goto :goto_1

    :cond_7
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v1

    :goto_1
    move-wide/from16 v1, v25

    .line 212
    :goto_2
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const/4 v7, 0x5

    const/4 v8, 0x4

    cmpg-double v25, v3, v11

    if-gtz v25, :cond_c

    .line 213
    sget-object v3, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    if-eq v3, v8, :cond_9

    if-ne v3, v7, :cond_8

    if-ltz v22, :cond_c

    goto :goto_4

    .line 237
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    :cond_9
    cmpg-double v3, v18, v20

    if-gtz v3, :cond_c

    goto :goto_4

    :cond_a
    if-nez v17, :cond_c

    goto :goto_4

    :cond_b
    if-eqz v17, :cond_c

    goto :goto_4

    :cond_c
    sub-double v3, v9, v1

    .line 243
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    mul-double v7, v15, v25

    invoke-static {v7, v8, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    cmpg-double v25, v3, v7

    if-gez v25, :cond_13

    .line 245
    sget-object v3, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    const/4 v4, 0x4

    if-eq v3, v4, :cond_e

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    if-ltz v22, :cond_11

    goto :goto_4

    .line 257
    :cond_d
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    :cond_e
    cmpg-double v3, v18, v20

    if-gtz v3, :cond_11

    goto :goto_4

    :cond_f
    if-eqz v17, :cond_12

    goto :goto_3

    :cond_10
    if-eqz v17, :cond_11

    goto :goto_4

    :cond_11
    :goto_3
    return-wide v1

    :cond_12
    :goto_4
    return-wide v9

    :cond_13
    move-wide v3, v9

    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    goto/16 :goto_0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 10

    .line 125
    sget-object v9, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0

    .line 117
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 118
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 14

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p5, p3

    mul-double v2, v2, v0

    add-double v11, p3, v2

    move-object v4, p0

    move v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v13, p7

    .line 110
    invoke-virtual/range {v4 .. v13}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v0

    return-wide v0
.end method
