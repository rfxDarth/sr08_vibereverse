.class public Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "MultiStartUnivariateOptimizer.java"


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private maxEvalIndex:I

.field private optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

.field private optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field private searchIntervalIndex:I

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    .line 64
    iput v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 85
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    .line 86
    iput p2, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    .line 87
    iput-object p3, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void

    .line 82
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method private sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$1;-><init>(Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 147
    :goto_0
    iget-object v3, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v0, v4, :cond_2

    .line 148
    aget-object v4, v3, v0

    instance-of v6, v4, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v6, :cond_0

    .line 149
    aput-object v5, v3, v0

    .line 150
    iput v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    goto :goto_1

    .line 153
    :cond_0
    instance-of v4, v4, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    if-eqz v4, :cond_1

    .line 154
    aput-object v5, v3, v0

    .line 155
    iput v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 162
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    if-eq v0, v3, :cond_6

    .line 167
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    new-array v0, v0, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    iput-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .line 168
    iput v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    .line 170
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMaxEvaluations()I

    move-result v3

    .line 171
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMin()D

    move-result-wide v7

    .line 172
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getMax()D

    move-result-wide v9

    .line 173
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getStartValue()D

    move-result-wide v13

    move-object v0, v5

    const/4 v4, 0x0

    .line 176
    :goto_2
    iget v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->starts:I

    if-ge v4, v6, :cond_4

    .line 180
    :try_start_0
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v11, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->maxEvalIndex:I

    new-instance v12, Lorg/apache/commons/math3/optim/MaxEval;

    iget v15, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    sub-int v15, v3, v15

    invoke-direct {v12, v15}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v12, v6, v11

    if-nez v4, :cond_3

    move-wide v11, v13

    goto :goto_3

    .line 182
    :cond_3
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v11

    sub-double v15, v9, v7

    mul-double v11, v11, v15

    add-double/2addr v11, v7

    .line 185
    :goto_3
    iget-object v15, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->searchIntervalIndex:I

    move/from16 v16, v6

    new-instance v6, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    aput-object v6, v15, v16

    .line 187
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    iget-object v11, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    iget-object v12, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v11

    aput-object v11, v6, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 190
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    aput-object v5, v6, v4

    .line 194
    :goto_4
    iget v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    iget-object v11, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getEvaluations()I

    move-result v11

    add-int/2addr v6, v11

    iput v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 197
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->sortPairs(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    .line 199
    iget-object v3, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    aget-object v2, v3, v2

    if-eqz v2, :cond_5

    return-object v2

    .line 200
    :cond_5
    throw v0

    .line 163
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0

    .line 160
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 3

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optima:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    .line 136
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method
