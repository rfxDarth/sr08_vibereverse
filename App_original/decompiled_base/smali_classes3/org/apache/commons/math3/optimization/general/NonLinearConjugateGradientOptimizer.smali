.class public Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.source "NonLinearConjugateGradientOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;,
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private initialStep:D

.field private point:[D

.field private final preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private final updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    new-instance v1, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optimization/general/Preconditioner;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 124
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    .line 125
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 126
    iput-object p4, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 127
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    return-object p0
.end method

.method private findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 13

    .line 251
    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    move-wide/from16 v2, p4

    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    add-double v4, p2, v2

    .line 255
    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    mul-double v8, v0, v6

    const-wide/16 v10, 0x0

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_0

    return-wide v4

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v6, v0, v6

    .line 253
    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double v2, v2, v4

    goto :goto_0

    .line 260
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 26

    move-object/from16 v0, p0

    .line 151
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v6

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getStartPoint()[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    .line 153
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v7

    .line 154
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v8, v1

    .line 155
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v1

    .line 156
    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v7, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_0

    .line 158
    aget-wide v3, v1, v2

    neg-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v2

    .line 164
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    const-wide/16 v10, 0x0

    move-wide v12, v10

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_1

    .line 168
    aget-wide v14, v1, v4

    aget-wide v16, v3, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getMaxEvaluations()I

    move-result v1

    const/4 v4, 0x0

    move v15, v1

    move-wide/from16 v23, v12

    const/4 v1, 0x0

    move-object v12, v2

    move-object v13, v3

    :goto_2
    add-int/lit8 v14, v1, 0x1

    .line 177
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 179
    new-instance v3, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-direct {v3, v5, v1, v2}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-eqz v4, :cond_2

    .line 180
    invoke-interface {v6, v14, v4, v3}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v3

    .line 186
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;

    invoke-direct {v1, v0, v13}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;-><init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V

    move-object v4, v3

    const-wide/16 v2, 0x0

    move-object/from16 v16, v4

    .line 187
    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    move-object/from16 v25, v16

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v19

    move-object/from16 v16, v1

    move v1, v14

    .line 191
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const-wide/16 v17, 0x0

    const-wide v21, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-interface/range {v14 .. v22}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v2

    .line 192
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v4

    sub-int/2addr v15, v4

    const/4 v4, 0x0

    .line 195
    :goto_3
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v14, v5

    if-ge v4, v14, :cond_3

    .line 196
    aget-wide v16, v5, v4

    aget-wide v18, v13, v4

    mul-double v18, v18, v2

    add-double v16, v16, v18

    aput-wide v16, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 199
    :cond_3
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v2

    .line 200
    sget-object v3, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v7, v3, :cond_4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_4

    .line 202
    aget-wide v4, v2, v3

    neg-double v4, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 208
    :cond_4
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v3

    move-wide v4, v10

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v8, :cond_5

    .line 211
    aget-wide v16, v2, v14

    aget-wide v18, v3, v14

    mul-double v16, v16, v18

    add-double v4, v4, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 215
    :cond_5
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    sget-object v9, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    if-ne v14, v9, :cond_6

    div-double v17, v4, v23

    goto :goto_7

    :cond_6
    move-wide/from16 v17, v10

    const/4 v9, 0x0

    .line 219
    :goto_6
    array-length v14, v2

    if-ge v9, v14, :cond_7

    .line 220
    aget-wide v19, v2, v9

    aget-wide v21, v12, v9

    mul-double v19, v19, v21

    add-double v17, v17, v19

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    sub-double v17, v4, v17

    div-double v17, v17, v23

    .line 227
    :goto_7
    rem-int v14, v1, v8

    if-eqz v14, :cond_9

    cmpg-double v2, v17, v10

    if-gez v2, :cond_8

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v8, :cond_a

    .line 234
    aget-wide v19, v3, v2

    aget-wide v21, v13, v2

    mul-double v21, v21, v17

    add-double v19, v19, v21

    aput-wide v19, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 230
    :cond_9
    :goto_9
    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    move-object v13, v2

    :cond_a
    move-object v12, v3

    move-wide/from16 v23, v4

    move-object/from16 v4, v25

    goto/16 :goto_2
.end method

.method public setInitialStep(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 142
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    return-void

    .line 144
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    return-void
.end method
