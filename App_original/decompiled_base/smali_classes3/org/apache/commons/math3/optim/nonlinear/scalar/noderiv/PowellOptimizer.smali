.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "PowellOptimizer.java"


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 63
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 146
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 163
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 117
    sget-wide v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double p9, p1, v0

    if-ltz p9, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p9, p3, v0

    if-lez p9, :cond_0

    .line 123
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    .line 124
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    .line 127
    new-instance p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    move-wide p3, p5

    move-wide p5, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    move-object p2, p0

    invoke-direct/range {p1 .. p8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    move-object p5, p2

    iput-object p1, p5, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    return-void

    :cond_0
    move-object p5, p0

    .line 121
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    :cond_1
    move-object p5, p0

    .line 118
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 9

    .line 275
    array-length v0, p1

    .line 276
    new-array v1, v0, [D

    .line 277
    new-array v2, v0, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 279
    aget-wide v5, p2, v4

    mul-double v5, v5, p3

    aput-wide v5, v2, v4

    .line 280
    aget-wide v7, p1, v4

    add-double/2addr v7, v5

    aput-wide v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 285
    new-array p1, p1, [[D

    aput-object v1, p1, v3

    const/4 p2, 0x1

    aput-object v2, p1, p2

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 31

    move-object/from16 v0, p0

    .line 169
    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->checkParameters()V

    .line 171
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    .line 172
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 173
    array-length v3, v2

    const/4 v4, 0x2

    .line 175
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v3, v4, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    .line 177
    aget-object v8, v4, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v7

    .line 184
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v8

    .line 185
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 187
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->incrementIterationCount()V

    move-wide v14, v8

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    :goto_2
    if-ge v13, v3, :cond_2

    .line 196
    aget-object v19, v4, v13

    const/16 v20, 0x1

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v5

    const/16 v19, 0x0

    .line 200
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v6

    .line 201
    invoke-virtual {v6}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v21

    const-wide/16 v23, 0x0

    .line 202
    invoke-virtual {v6}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v11

    .line 203
    invoke-direct {v0, v2, v5, v11, v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    .line 204
    aget-object v2, v2, v19

    sub-double v14, v14, v21

    cmpl-double v5, v14, v16

    if-lez v5, :cond_1

    move/from16 v18, v13

    move-wide/from16 v16, v14

    :cond_1
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v14, v21

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x1

    const-wide/16 v23, 0x0

    sub-double v5, v8, v14

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v21, v5, v11

    move-wide/from16 v25, v11

    .line 213
    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v27

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    add-double v27, v27, v29

    mul-double v11, v11, v27

    move-object v13, v4

    move-wide/from16 v27, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    add-double/2addr v11, v4

    cmpg-double v4, v21, v11

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 217
    :goto_3
    new-instance v5, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v5, v10, v8, v9}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 218
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v6, v2, v14, v15}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 220
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getIterations()I

    move-result v4

    invoke-interface {v7, v4, v5, v6}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :cond_4
    if-eqz v4, :cond_7

    .line 223
    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v1, v2, :cond_5

    cmpg-double v1, v14, v8

    if-gez v1, :cond_6

    goto :goto_4

    :cond_5
    cmpl-double v1, v14, v8

    if-lez v1, :cond_6

    :goto_4
    return-object v6

    :cond_6
    return-object v5

    .line 230
    :cond_7
    new-array v4, v3, [D

    .line 231
    new-array v5, v3, [D

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_8

    .line 233
    aget-wide v11, v2, v6

    aget-wide v21, v10, v6

    sub-double v11, v11, v21

    aput-wide v11, v4, v6

    .line 234
    aget-wide v11, v2, v6

    mul-double v11, v11, v25

    aget-wide v21, v10, v6

    sub-double v11, v11, v21

    aput-wide v11, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 237
    :cond_8
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, [D

    .line 238
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v5

    cmpl-double v11, v8, v5

    if-lez v11, :cond_9

    add-double v11, v8, v5

    mul-double v21, v14, v25

    sub-double v11, v11, v21

    mul-double v11, v11, v25

    sub-double v21, v27, v16

    mul-double v21, v21, v21

    mul-double v11, v11, v21

    sub-double/2addr v8, v5

    mul-double v16, v16, v8

    mul-double v16, v16, v8

    sub-double v11, v11, v16

    cmpg-double v5, v11, v23

    if-gez v5, :cond_9

    .line 248
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v5, v2, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v5

    .line 249
    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v8

    .line 250
    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v5

    .line 251
    invoke-direct {v0, v2, v4, v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    .line 252
    aget-object v4, v2, v19

    add-int/lit8 v5, v3, -0x1

    .line 255
    aget-object v6, v13, v5

    aput-object v6, v13, v18

    .line 256
    aget-object v2, v2, v20

    aput-object v2, v13, v5

    move-object v2, v4

    goto :goto_6

    :cond_9
    move-wide v8, v14

    :goto_6
    move-object v4, v13

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1
.end method
