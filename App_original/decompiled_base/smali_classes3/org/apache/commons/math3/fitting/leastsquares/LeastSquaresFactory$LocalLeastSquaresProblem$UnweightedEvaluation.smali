.class Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;
.super Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.source "LeastSquaresFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnweightedEvaluation"
.end annotation


# instance fields
.field private final jacobian:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final point:Lorg/apache/commons/math3/linear/RealVector;

.field private final residuals:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 1

    .line 365
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;-><init>(I)V

    .line 366
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;->jacobian:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 367
    iput-object p4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;->point:Lorg/apache/commons/math3/linear/RealVector;

    .line 368
    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;->residuals:Lorg/apache/commons/math3/linear/RealVector;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method


# virtual methods
.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;->jacobian:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;->point:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;->residuals:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method
