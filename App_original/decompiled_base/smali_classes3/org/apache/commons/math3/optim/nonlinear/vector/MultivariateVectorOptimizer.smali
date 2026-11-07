.class public abstract Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.source "MultivariateVectorOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
        "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private model:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

.field private target:[D

.field private weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->target:[D

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->target:[D

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method protected computeObjectiveValue([D)[D
    .locals 1

    .line 62
    invoke-super {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->incrementEvaluationCount()V

    .line 63
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->model:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p1

    return-object p1
.end method

.method public getTarget()[D
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->target:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getTargetSize()I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->target:[D

    array-length v0, v0

    return v0
.end method

.method public getWeight()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 88
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    .line 132
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 136
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 137
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    if-eqz v3, :cond_0

    .line 138
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->model:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    goto :goto_1

    .line 141
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;

    if-eqz v3, :cond_1

    .line 142
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;->getTarget()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->target:[D

    goto :goto_1

    .line 145
    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    if-eqz v3, :cond_2

    .line 146
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->weightMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->checkParameters()V

    return-void
.end method
