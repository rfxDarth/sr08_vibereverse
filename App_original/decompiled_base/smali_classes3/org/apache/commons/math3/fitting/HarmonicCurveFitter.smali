.class public Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "HarmonicCurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;
    }
.end annotation


# static fields
.field private static final FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;


# instance fields
.field private final initialGuess:[D

.field private final maxIter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    .line 68
    iput p2, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    return-void
.end method

.method public static create()Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 3

    .line 83
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

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

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 111
    new-array v1, v0, [D

    .line 112
    new-array v0, v0, [D

    .line 115
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

    .line 116
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 117
    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    sget-object v3, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->FUNCTION:Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;

    invoke-direct {v2, v3, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    .line 125
    iget-object v3, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter$ParameterGuesser;->guess()[D

    move-result-object v3

    .line 132
    :goto_1
    new-instance p1, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v4, 0x7fffffff

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    iget v4, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

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
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 2

    .line 102
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->initialGuess:[D

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;
    .locals 2

    .line 92
    new-instance v0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iget v1, p0, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;->maxIter:I

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/fitting/HarmonicCurveFitter;-><init>([DI)V

    return-object v0
.end method
