.class Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;
.super Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.source "PowellOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineSearch"
.end annotation


# static fields
.field private static final ABS_TOL_UNUSED:D = 4.9E-324

.field private static final REL_TOL_UNUSED:D = 1.0E-15


# instance fields
.field private final bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V
    .locals 6

    .line 316
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    .line 317
    new-instance v5, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;

    invoke-direct {v5, p2, p3, p4, p5}, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;-><init>(DD)V

    const-wide v1, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide/16 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 305
    new-instance p1, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-direct {p1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;-><init>()V

    iput-object p1, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    return-void
.end method


# virtual methods
.method public search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 11

    .line 332
    array-length v0, p1

    .line 333
    new-instance v2, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch$1;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;I[D[D)V

    .line 344
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->this$0:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v3

    .line 345
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)V

    .line 349
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getLo()D

    move-result-wide v5

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getHi()D

    move-result-wide v7

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->bracket:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getMid()D

    move-result-wide v9

    move-object v4, v3

    move-object v3, v2

    const v2, 0x7fffffff

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method
