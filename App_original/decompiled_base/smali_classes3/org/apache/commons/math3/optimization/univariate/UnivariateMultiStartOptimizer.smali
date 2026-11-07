.class public Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;
.super Ljava/lang/Object;
.source "UnivariateMultiStartOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private maxEvaluations:I

.field private optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

.field private final optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
            "TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 85
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    .line 86
    iput p2, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    .line 87
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void

    .line 82
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 79
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$1;-><init>(Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V

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
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {v0}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    return v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->maxEvaluations:I

    return v0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p6, p4

    mul-double v2, v2, v0

    add-double v12, p4, v2

    move-object v4, p0

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    .line 145
    invoke-virtual/range {v4 .. v13}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DDD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 154
    iget v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    const/4 v2, 0x0

    .line 155
    iput v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    const/4 v3, 0x0

    move-object v0, v3

    const/4 v4, 0x0

    .line 158
    :goto_0
    iget v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->starts:I

    if-ge v4, v5, :cond_1

    if-nez v4, :cond_0

    move-wide/from16 v15, p8

    goto :goto_1

    .line 161
    :cond_0
    :try_start_0
    iget-object v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v5

    sub-double v7, p6, p4

    mul-double v5, v5, v7

    add-double v5, p4, v5

    move-wide v15, v5

    .line 162
    :goto_1
    iget-object v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    iget-object v7, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    iget v6, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    sub-int v8, p1, v6

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    invoke-interface/range {v7 .. v16}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 165
    iget-object v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    aput-object v3, v5, v4

    .line 169
    :goto_2
    iget v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    iget-object v6, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimizer:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {v6}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->getEvaluations()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->totalEvaluations:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v10, p3

    .line 172
    invoke-direct {v1, v10}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->sortPairs(Lorg/apache/commons/math3/optimization/GoalType;)V

    .line 174
    iget-object v3, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optima:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    aget-object v2, v3, v2

    if-eqz v2, :cond_2

    return-object v2

    .line 175
    :cond_2
    throw v0
.end method
