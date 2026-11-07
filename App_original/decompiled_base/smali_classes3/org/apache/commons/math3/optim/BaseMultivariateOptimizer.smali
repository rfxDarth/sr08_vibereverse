.class public abstract Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseOptimizer;
.source "BaseMultivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/optim/BaseOptimizer<",
        "TPAIR;>;"
    }
.end annotation


# instance fields
.field private lowerBound:[D

.field private start:[D

.field private upperBound:[D


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private checkParameters()V
    .locals 9

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    if-eqz v0, :cond_5

    .line 129
    array-length v0, v0

    .line 130
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 131
    array-length v1, v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 135
    iget-object v4, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    aget-wide v5, v4, v1

    .line 136
    iget-object v4, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    aget-wide v7, v4, v1

    cmpg-double v4, v5, v7

    if-ltz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 132
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    array-length v2, v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 142
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    if-eqz v1, :cond_5

    .line 143
    array-length v1, v1

    if-ne v1, v0, :cond_4

    :goto_1
    if-ge v2, v0, :cond_5

    .line 147
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    aget-wide v4, v1, v2

    .line 148
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    aget-wide v6, v1, v2

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 144
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    array-length v2, v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_5
    return-void
.end method


# virtual methods
.method public getLowerBound()[D
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getStartPoint()[D
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getUpperBound()[D
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/optim/OptimizationData;",
            ")TPAIR;"
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 87
    instance-of v3, v2, Lorg/apache/commons/math3/optim/InitialGuess;

    if-eqz v3, :cond_0

    .line 88
    check-cast v2, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/InitialGuess;->getInitialGuess()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->start:[D

    goto :goto_1

    .line 91
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/SimpleBounds;

    if-eqz v3, :cond_1

    .line 92
    check-cast v2, Lorg/apache/commons/math3/optim/SimpleBounds;

    .line 93
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/SimpleBounds;->getLower()[D

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->lowerBound:[D

    .line 94
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/SimpleBounds;->getUpper()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->upperBound:[D

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->checkParameters()V

    return-void
.end method
