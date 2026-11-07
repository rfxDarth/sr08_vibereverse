.class public abstract Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseOptimizer;
.source "UnivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseOptimizer<",
        "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field private goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

.field private max:D

.field private min:D

.field private start:D


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 1

    .line 149
    invoke-super {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementEvaluationCount()V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-object v0
.end method

.method public getMax()D
    .locals 2

    .line 135
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .line 129
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->min:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    .line 123
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->start:D

    return-wide v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5

    .line 96
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 101
    instance-of v3, v2, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    if-eqz v3, :cond_0

    .line 102
    check-cast v2, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    .line 103
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getMin()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->min:D

    .line 104
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getMax()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->max:D

    .line 105
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getStartValue()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->start:D

    goto :goto_1

    .line 108
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    if-eqz v3, :cond_1

    .line 109
    check-cast v2, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    goto :goto_1

    .line 112
    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-eqz v3, :cond_2

    .line 113
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->goal:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
