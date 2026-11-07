.class public Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "SimplexOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 118
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>(DD)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 4

    .line 172
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 173
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    if-eqz v3, :cond_0

    .line 174
    check-cast v2, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 10

    .line 183
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    if-eqz v0, :cond_4

    .line 189
    new-instance v0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;)V

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 197
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer$2;-><init>(Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;Z)V

    .line 208
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getStartPoint()[D

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->build([D)V

    .line 209
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 213
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-lez v6, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 217
    :goto_2
    iget-object v9, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v9}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getSize()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 218
    aget-object v9, v5, v7

    if-eqz v8, :cond_1

    .line 219
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v8

    invoke-interface {v1, v6, v9, v8}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0

    .line 229
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v5

    .line 230
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;

    invoke-virtual {v7, v0, v2}, Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;->iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 184
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0

    .line 153
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public setSimplex(Lorg/apache/commons/math3/optimization/direct/AbstractSimplex;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/SimplexOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    return-void
.end method
