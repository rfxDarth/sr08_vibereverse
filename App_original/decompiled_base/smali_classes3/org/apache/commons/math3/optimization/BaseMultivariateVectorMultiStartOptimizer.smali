.class public Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateVectorMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
            "TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    .line 84
    iput p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    .line 85
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    return-void

    .line 80
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private sortPairs([D[D)V
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;[D[D)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .line 143
    iput p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->maxEvaluations:I

    .line 145
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    const/4 v1, 0x0

    .line 146
    iput v1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    const/4 v2, 0x0

    move-object v0, v2

    const/4 v3, 0x0

    .line 149
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->starts:I

    if-ge v3, v4, :cond_1

    .line 153
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    iget v6, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    sub-int v6, p1, v6

    if-nez v3, :cond_0

    move-object/from16 v10, p5

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v7}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v7

    move-object v10, v7

    move-object v8, p3

    move-object v9, p4

    move-object v7, p2

    :goto_1
    invoke-interface/range {v5 .. v10}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 159
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aput-object v2, v4, v3

    goto :goto_2

    .line 156
    :catch_1
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aput-object v2, v4, v3

    .line 163
    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {v5}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->getEvaluations()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->totalEvaluations:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->sortPairs([D[D)V

    .line 168
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    return-object p1

    .line 169
    :cond_2
    throw v0
.end method
