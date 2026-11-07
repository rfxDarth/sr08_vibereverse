.class public Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;
.super Ljava/lang/Object;
.source "BaseMultivariateMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
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
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    .line 84
    iput p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->starts:I

    .line 85
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

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

.method private sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V

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
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 3

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/PointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/PointValuePair;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .line 142
    iput p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->maxEvaluations:I

    .line 144
    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->starts:I

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/PointValuePair;

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    .line 148
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->starts:I

    if-ge v2, v4, :cond_1

    .line 151
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    iget v6, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    sub-int v6, p1, v6

    if-nez v2, :cond_0

    move-object v7, p4

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v7}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v7

    :goto_1
    invoke-interface {v5, v6, p2, p3, v7}, Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 155
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aput-object v1, v4, v2

    .line 159
    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    invoke-interface {v5}, Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;->getEvaluations()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->totalEvaluations:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V

    .line 164
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    return-object p1

    .line 165
    :cond_2
    throw v3
.end method
