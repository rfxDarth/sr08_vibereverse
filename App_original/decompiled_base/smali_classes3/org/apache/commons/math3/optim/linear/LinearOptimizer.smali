.class public abstract Lorg/apache/commons/math3/optim/linear/LinearOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "LinearOptimizer.java"


# instance fields
.field private function:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

.field private linearConstraints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private nonNegative:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method protected getConstraints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->linearConstraints:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getFunction()Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->function:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    return-object v0
.end method

.method protected isRestrictedToNonNegative()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->nonNegative:Z

    return v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    .line 113
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 118
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    if-eqz v3, :cond_0

    .line 119
    check-cast v2, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->function:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    goto :goto_1

    .line 122
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;

    if-eqz v3, :cond_1

    .line 123
    check-cast v2, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->getConstraints()Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->linearConstraints:Ljava/util/Collection;

    goto :goto_1

    .line 126
    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;

    if-eqz v3, :cond_2

    .line 127
    check-cast v2, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;->isRestrictedToNonNegative()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->nonNegative:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
