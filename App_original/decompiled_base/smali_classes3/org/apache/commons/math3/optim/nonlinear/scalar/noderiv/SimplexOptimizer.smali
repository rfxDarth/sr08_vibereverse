.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SimplexOptimizer.java"


# instance fields
.field private simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 105
    new-instance v0, Lorg/apache/commons/math3/optim/SimpleValueChecker;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/SimpleValueChecker;-><init>(DD)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 213
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 214
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 9

    .line 128
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->checkParameters()V

    .line 132
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;)V

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$2;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$2;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;Z)V

    .line 151
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getStartPoint()[D

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->build([D)V

    .line 152
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v1

    const/4 v5, 0x0

    .line 158
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->getIterations()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 160
    :goto_2
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getSize()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 161
    aget-object v8, v5, v6

    if-eqz v7, :cond_1

    .line 162
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v7

    invoke-interface {v1, v4, v8, v7}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_3

    :cond_1
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0

    .line 172
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v5

    .line 173
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v6, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->incrementIterationCount()V

    goto :goto_1
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    .line 192
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 197
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-eqz v3, :cond_0

    .line 198
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->simplex:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
