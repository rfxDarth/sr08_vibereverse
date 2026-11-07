.class public Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "PolynomialCurveFitter.java"


# static fields
.field private static final FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;


# instance fields
.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    .line 58
    iput p2, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    return-void
.end method

.method public static create(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 2

    .line 74
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [D

    const v1, 0x7fffffff

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

    return-object v0
.end method


# virtual methods
.method protected getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 102
    new-array v1, v0, [D

    .line 103
    new-array v0, v0, [D

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 107
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 108
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    sget-object v3, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v2, v3, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 115
    iget-object p1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    if-eqz p1, :cond_1

    .line 121
    new-instance p1, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    iget v3, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p1

    return-object p1

    .line 116
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 2

    .line 93
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;
    .locals 2

    .line 83
    new-instance v0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iget v1, p0, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->maxIter:I

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;-><init>([DI)V

    return-object v0
.end method
