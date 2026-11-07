.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;
.super Ljava/lang/Object;
.source "LineSearch.java"


# static fields
.field private static final ABS_TOL_UNUSED:D = 4.9E-324

.field private static final REL_TOL_UNUSED:D = 1.0E-15


# instance fields
.field private final bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

.field private final initialBracketingRange:D

.field private final lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field private final mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V
    .locals 7

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    .line 94
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    .line 95
    new-instance v1, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;

    new-instance v6, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;

    invoke-direct {v6, p2, p3, p4, p5}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;-><init>(DD)V

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    .line 99
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->initialBracketingRange:D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    return-object p0
.end method


# virtual methods
.method public search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 11

    .line 114
    array-length v0, p1

    .line 115
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;I[D[D)V

    .line 126
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->mainOptimizer:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v3

    .line 127
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->initialBracketingRange:D

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;DD)V

    .line 131
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->lineOptimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    const/4 p2, 0x4

    new-array p2, p2, [Lorg/apache/commons/math3/optim/OptimizationData;

    new-instance v0, Lorg/apache/commons/math3/optim/MaxEval;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;-><init>(Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    aput-object v3, p2, v0

    new-instance v4, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getLo()D

    move-result-wide v5

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getHi()D

    move-result-wide v7

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->bracket:Lorg/apache/commons/math3/optim/univariate/BracketFinder;

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->getMid()D

    move-result-wide v9

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    const/4 v0, 0x3

    aput-object v4, p2, v0

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method
