.class public Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "BrentOptimizer.java"


# static fields
.field private static final GOLDEN_SECTION:D

.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 48
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 52
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 110
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 83
    sget-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double p5, p1, v0

    if-ltz p5, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p5, p3, v0

    if-lez p5, :cond_0

    .line 90
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    .line 91
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    return-void

    .line 87
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 84
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method private best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 310
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double p3, v0, v2

    if-gtz p3, :cond_3

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpl-double p3, v0, v2

    if-ltz p3, :cond_3

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    return-object p2
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 51

    move-object/from16 v0, p0

    .line 116
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 117
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMin()D

    move-result-wide v4

    .line 118
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getStartValue()D

    move-result-wide v6

    .line 119
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMax()D

    move-result-wide v8

    .line 122
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v2

    cmpg-double v10, v4, v8

    if-gez v10, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v49, v8

    move-wide v8, v4

    move-wide/from16 v4, v49

    .line 140
    :goto_1
    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v10

    if-nez v1, :cond_2

    neg-double v10, v10

    .line 148
    :cond_2
    new-instance v12, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    if-eqz v1, :cond_3

    move-wide v13, v10

    goto :goto_2

    :cond_3
    neg-double v13, v10

    :goto_2
    invoke-direct {v12, v6, v7, v13, v14}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    const/4 v15, 0x0

    move-wide/from16 v17, v10

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-object v13, v12

    move-object v14, v15

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move-wide v10, v6

    move-wide v15, v8

    move-wide v8, v10

    :goto_3
    add-double v29, v4, v15

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    mul-double v29, v29, v31

    move-wide/from16 v33, v4

    .line 156
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    mul-double v4, v4, v35

    move-wide/from16 v35, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    add-double v4, v35, v4

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    mul-double v37, v4, v35

    sub-double v39, v6, v29

    .line 160
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    sub-double v41, v15, v33

    mul-double v41, v41, v31

    sub-double v41, v37, v41

    cmpg-double v43, v39, v41

    if-gtz v43, :cond_4

    .line 278
    invoke-direct {v0, v14, v13, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v2

    invoke-direct {v0, v12, v2, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v1

    return-object v1

    .line 167
    :cond_4
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    cmpl-double v14, v39, v4

    if-lez v14, :cond_b

    sub-double v39, v6, v8

    sub-double v41, v17, v19

    mul-double v41, v41, v39

    sub-double v43, v6, v10

    sub-double v45, v17, v21

    mul-double v45, v45, v43

    mul-double v43, v43, v45

    mul-double v39, v39, v41

    move-wide/from16 v47, v15

    sub-double v14, v43, v39

    sub-double v45, v45, v41

    move-wide/from16 v39, v10

    mul-double v10, v45, v35

    cmpl-double v16, v10, v23

    if-lez v16, :cond_5

    neg-double v14, v14

    goto :goto_4

    :cond_5
    neg-double v10, v10

    :goto_4
    sub-double v35, v33, v6

    mul-double v41, v10, v35

    cmpl-double v16, v14, v41

    if-lez v16, :cond_9

    sub-double v41, v47, v6

    mul-double v41, v41, v10

    cmpg-double v16, v14, v41

    if-gez v16, :cond_9

    .line 182
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    mul-double v31, v31, v10

    mul-double v31, v31, v25

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    cmpg-double v16, v41, v25

    if-gez v16, :cond_9

    div-double/2addr v14, v10

    add-double v10, v6, v14

    sub-double v25, v10, v33

    cmpg-double v16, v25, v37

    if-ltz v16, :cond_7

    sub-double v10, v47, v10

    cmpg-double v16, v10, v37

    if-gez v16, :cond_6

    goto :goto_5

    :cond_6
    move-wide/from16 v25, v27

    move-wide/from16 v27, v14

    goto :goto_7

    :cond_7
    :goto_5
    cmpg-double v10, v6, v29

    if-gtz v10, :cond_8

    move-wide/from16 v25, v27

    move-wide/from16 v27, v4

    goto :goto_7

    :cond_8
    neg-double v10, v4

    move-wide/from16 v25, v27

    move-wide/from16 v27, v10

    goto :goto_7

    :cond_9
    cmpg-double v10, v6, v29

    if-gez v10, :cond_a

    sub-double v35, v47, v6

    .line 204
    :cond_a
    sget-wide v10, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v10, v10, v35

    move-wide/from16 v27, v10

    move-wide/from16 v25, v35

    goto :goto_7

    :cond_b
    move-wide/from16 v39, v10

    move-wide/from16 v47, v15

    cmpg-double v10, v6, v29

    if-gez v10, :cond_c

    sub-double v15, v47, v6

    goto :goto_6

    :cond_c
    sub-double v15, v33, v6

    .line 213
    :goto_6
    sget-wide v10, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v10, v10, v15

    move-wide/from16 v27, v10

    move-wide/from16 v25, v15

    .line 217
    :goto_7
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpg-double v14, v10, v4

    if-gez v14, :cond_e

    cmpl-double v10, v27, v23

    if-ltz v10, :cond_d

    add-double/2addr v4, v6

    goto :goto_8

    :cond_d
    sub-double v4, v6, v4

    goto :goto_8

    :cond_e
    add-double v4, v6, v27

    .line 227
    :goto_8
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v10

    if-nez v1, :cond_f

    neg-double v10, v10

    .line 234
    :cond_f
    new-instance v14, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-wide v15, v6

    if-eqz v1, :cond_10

    move-wide v6, v10

    goto :goto_9

    :cond_10
    neg-double v6, v10

    :goto_9
    invoke-direct {v14, v4, v5, v6, v7}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 235
    invoke-direct {v0, v13, v14, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v6

    invoke-direct {v0, v12, v6, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v12

    if-eqz v2, :cond_11

    .line 241
    invoke-interface {v2, v3, v13, v14}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    return-object v12

    :cond_11
    cmpg-double v6, v10, v17

    if-gtz v6, :cond_13

    cmpg-double v6, v4, v15

    if-gez v6, :cond_12

    move-wide/from16 v47, v15

    goto :goto_a

    :cond_12
    move-wide/from16 v33, v15

    :goto_a
    move-wide v6, v4

    move-wide/from16 v19, v21

    move-wide/from16 v4, v33

    move-wide/from16 v21, v17

    move-wide/from16 v17, v10

    move-wide v10, v8

    move-wide v8, v15

    move v15, v1

    goto :goto_f

    :cond_13
    cmpg-double v6, v4, v15

    if-gez v6, :cond_14

    move-wide/from16 v33, v4

    goto :goto_b

    :cond_14
    move-wide/from16 v47, v4

    :goto_b
    cmpg-double v6, v10, v21

    if-lez v6, :cond_19

    move-wide v6, v15

    .line 264
    invoke-static {v8, v9, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_d

    :cond_15
    cmpg-double v15, v10, v19

    if-lez v15, :cond_17

    move v15, v1

    move-wide/from16 v0, v39

    .line 270
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v16

    if-nez v16, :cond_18

    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v16

    if-eqz v16, :cond_16

    goto :goto_c

    :cond_16
    move-wide v10, v0

    goto :goto_e

    :cond_17
    move v15, v1

    :cond_18
    :goto_c
    move-wide/from16 v19, v10

    move-wide v10, v4

    goto :goto_e

    :cond_19
    move-wide v6, v15

    :goto_d
    move v15, v1

    move-wide/from16 v19, v21

    move-wide/from16 v21, v10

    move-wide v10, v8

    move-wide v8, v4

    :goto_e
    move-wide/from16 v4, v33

    :goto_f
    add-int/lit8 v3, v3, 0x1

    move-object v0, v14

    move-object v14, v13

    move-object v13, v0

    move-object/from16 v0, p0

    move v1, v15

    move-wide/from16 v15, v47

    goto/16 :goto_3
.end method
