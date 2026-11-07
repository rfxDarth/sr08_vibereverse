.class public Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;
.super Ljava/lang/Object;
.source "GaussNewtonOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    }
.end annotation


# static fields
.field private static final SINGULARITY_THRESHOLD:D = 1.0E-11


# instance fields
.field private final decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 175
    sget-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->QR:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->computeNormalMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static computeNormalMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            ")",
            "Lorg/apache/commons/math3/util/Pair<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 270
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 272
    invoke-static {v1, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 273
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    .line 278
    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v9

    invoke-interface {p0, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    invoke-virtual {v3, v6, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_2

    move v7, v6

    :goto_3
    if-ge v7, v1, :cond_1

    .line 286
    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-interface {p0, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-interface {p0, v5, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v12

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    invoke-interface {v2, v6, v7, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_4
    if-ge p0, v1, :cond_5

    const/4 p1, 0x0

    :goto_5
    if-ge p1, p0, :cond_4

    .line 294
    invoke-interface {v2, p1, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {v2, p0, p1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 297
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public getDecomposition()Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-object v0
.end method

.method public optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 9

    .line 210
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v0

    .line 211
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v1

    .line 212
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 220
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    const/4 v4, 0x0

    .line 225
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 230
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 231
    invoke-interface {p1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v5

    .line 232
    invoke-interface {v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    .line 233
    invoke-interface {v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v8

    invoke-interface {v2, v8, v4, v5}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    new-instance p1, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v1

    invoke-direct {p1, v5, v0, v1}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object p1

    .line 246
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-virtual {v4, v7, v6}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    move-object v4, v5

    goto :goto_0

    .line 217
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GaussNewtonOptimizer{decomposition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecomposition(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;
    .locals 1

    .line 204
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)V

    return-object v0
.end method
