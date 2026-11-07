.class public abstract Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.super Ljava/lang/Object;
.source "AbstractEvaluation.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;


# instance fields
.field private final observationSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->observationSize:I

    return-void
.end method


# virtual methods
.method public getCost()D
    .locals 2

    .line 84
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 85
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v1, v0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getRMS()D
    .locals 4

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getCost()D

    move-result-wide v0

    mul-double v0, v0, v0

    .line 79
    iget v2, p0, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->observationSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSigma(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p2

    .line 69
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 71
    invoke-interface {p1, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
