.class Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;
.super Ljava/lang/Object;
.source "OptimumImpl.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;


# instance fields
.field private final evaluations:I

.field private final iterations:I

.field private final value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    .line 48
    iput p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->evaluations:I

    .line 49
    iput p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->iterations:I

    return-void
.end method


# virtual methods
.method public getCost()D
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCost()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getEvaluations()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->evaluations:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->iterations:I

    return v0
.end method

.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public getRMS()D
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getRMS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public getSigma(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;->value:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getSigma(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method
