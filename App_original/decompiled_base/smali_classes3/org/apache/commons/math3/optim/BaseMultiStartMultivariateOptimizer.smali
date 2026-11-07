.class public abstract Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.source "BaseMultiStartMultivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
        "TPAIR;>;"
    }
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private initialGuessIndex:I

.field private maxEvalIndex:I

.field private optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

.field private final optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
            "TPAIR;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
            "TPAIR;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    .line 59
    iput v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 88
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    .line 89
    iput p2, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->starts:I

    .line 90
    iput-object p3, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    return-void

    .line 85
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected doOptimize()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAIR;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v3, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v0, v4, :cond_2

    .line 147
    aget-object v4, v3, v0

    instance-of v4, v4, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v4, :cond_0

    .line 148
    aput-object v5, v3, v0

    .line 149
    iput v0, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    .line 151
    :cond_0
    aget-object v4, v3, v0

    instance-of v4, v4, Lorg/apache/commons/math3/optim/InitialGuess;

    if-eqz v4, :cond_1

    .line 152
    aput-object v5, v3, v0

    .line 153
    iput v0, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    iget v0, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    .line 160
    iget v0, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    if-eq v0, v3, :cond_c

    .line 165
    iput v2, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    .line 166
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->clear()V

    .line 168
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v3

    .line 169
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getLowerBound()[D

    move-result-object v4

    .line 170
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getUpperBound()[D

    move-result-object v6

    .line 171
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getStartPoint()[D

    move-result-object v7

    move-object v0, v5

    const/4 v8, 0x0

    .line 174
    :goto_1
    iget v9, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->starts:I

    if-ge v8, v9, :cond_a

    .line 178
    :try_start_0
    iget-object v9, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v10, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    new-instance v11, Lorg/apache/commons/math3/optim/MaxEval;

    iget v12, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    sub-int v12, v3, v12

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v11, v9, v10

    if-nez v8, :cond_3

    move-object v9, v7

    goto :goto_4

    :cond_3
    move-object v9, v5

    const/4 v10, 0x0

    :goto_2
    if-nez v9, :cond_9

    add-int/lit8 v9, v10, 0x1

    .line 186
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 189
    iget-object v10, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v10}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v10

    const/4 v11, 0x0

    :goto_3
    if-eqz v10, :cond_7

    .line 190
    array-length v12, v10

    if-ge v11, v12, :cond_7

    if-eqz v4, :cond_4

    .line 191
    aget-wide v12, v10, v11

    aget-wide v14, v4, v11

    cmpg-double v16, v12, v14

    if-ltz v16, :cond_5

    :cond_4
    if-eqz v6, :cond_6

    aget-wide v12, v10, v11

    aget-wide v14, v6, v11

    cmpl-double v16, v12, v14

    if-lez v16, :cond_6

    :cond_5
    move-object v10, v5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v17, v10

    move v10, v9

    move-object/from16 v9, v17

    goto :goto_2

    .line 187
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 198
    :cond_9
    :goto_4
    iget-object v10, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v11, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    new-instance v12, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-direct {v12, v9}, Lorg/apache/commons/math3/optim/InitialGuess;-><init>([D)V

    aput-object v12, v10, v11

    .line 200
    iget-object v9, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    iget-object v10, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v9

    .line 201
    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->store(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 207
    :goto_5
    iget v9, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    iget-object v10, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    invoke-virtual {v10}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getEvaluations()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v1, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 210
    :cond_a
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getOptima()[Ljava/lang/Object;

    move-result-object v3

    .line 211
    array-length v4, v3

    if-eqz v4, :cond_b

    .line 217
    aget-object v0, v3, v2

    return-object v0

    .line 213
    :cond_b
    throw v0

    .line 161
    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0

    .line 158
    :cond_d
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    return v0
.end method

.method public abstract getOptima()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TPAIR;"
        }
    .end annotation
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

    .line 133
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    .line 135
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract store(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPAIR;)V"
        }
    .end annotation
.end method
