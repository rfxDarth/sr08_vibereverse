.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
.super Ljava/lang/Object;
.source "LeastSquaresBuilder.java"


# instance fields
.field private checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;"
        }
    .end annotation
.end field

.field private maxEvaluations:I

.field private maxIterations:I

.field private model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

.field private start:Lorg/apache/commons/math3/linear/RealVector;

.field private target:Lorg/apache/commons/math3/linear/RealVector;

.field private weight:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 7

    .line 59
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    iget v5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations:I

    iget v6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations:I

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v0

    return-object v0
.end method

.method public checker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->checker:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    return-object p0
.end method

.method public checkerPair(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->evaluationChecker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->checker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 69
    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations:I

    return-object p0
.end method

.method public maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 80
    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations:I

    return-object p0
.end method

.method public model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 116
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    return-object p1
.end method

.method public model(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    return-object p0
.end method

.method public start(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 2

    .line 169
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    return-object p1
.end method

.method public target(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 2

    .line 148
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    return-object p1
.end method

.method public weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method
