.class public Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "PowellOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 60
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 141
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

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

    .line 159
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 114
    sget-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double p9, p1, v0

    if-ltz p9, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p9, p3, v0

    if-lez p9, :cond_0

    .line 120
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    .line 121
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    .line 124
    new-instance p1, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    move-object p2, p0

    move-wide p3, p5

    move-wide p5, p7

    invoke-direct/range {p1 .. p6}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V

    move-object p5, p2

    iput-object p1, p5, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    return-void

    :cond_0
    move-object p5, p0

    .line 118
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    :cond_1
    move-object p5, p0

    .line 115
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 9

    .line 270
    array-length v0, p1

    .line 271
    new-array v1, v0, [D

    .line 272
    new-array v2, v0, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 274
    aget-wide v5, p2, v4

    mul-double v5, v5, p3

    aput-wide v5, v2, v4

    .line 275
    aget-wide v7, p1, v4

    add-double/2addr v7, v5

    aput-wide v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 280
    new-array p1, p1, [[D

    aput-object v1, p1, v3

    const/4 p2, 0x1

    aput-object v2, p1, p2

    return-object p1
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 33

    move-object/from16 v0, p0

    .line 165
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 167
    array-length v3, v2

    const/4 v4, 0x2

    .line 169
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

    .line 171
    aget-object v8, v4, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    .line 178
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v8

    .line 179
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    const/4 v11, 0x0

    :goto_1
    add-int/2addr v11, v5

    move-wide v5, v8

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    :goto_2
    if-ge v14, v3, :cond_2

    .line 191
    aget-object v20, v4, v14

    const-wide/16 v21, 0x0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v12

    .line 195
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    invoke-virtual {v13, v2, v12}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v13

    .line 196
    invoke-virtual {v13}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v23

    move/from16 v20, v14

    .line 197
    invoke-virtual {v13}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v13

    .line 198
    invoke-direct {v0, v2, v12, v13, v14}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    .line 199
    aget-object v2, v2, v16

    sub-double v5, v5, v23

    cmpl-double v12, v5, v17

    if-lez v12, :cond_1

    move-wide/from16 v17, v5

    move/from16 v19, v20

    :cond_1
    add-int/lit8 v14, v20, 0x1

    move-wide/from16 v5, v23

    goto :goto_2

    :cond_2
    const-wide/16 v21, 0x0

    sub-double v12, v8, v5

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v25, v12, v23

    move-wide/from16 v27, v12

    .line 208
    iget-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    add-double v29, v29, v31

    mul-double v12, v12, v29

    move-wide/from16 v29, v12

    iget-wide v12, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    add-double v12, v29, v12

    cmpg-double v14, v25, v12

    if-gtz v14, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 212
    :goto_3
    new-instance v13, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v13, v10, v8, v9}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 213
    new-instance v14, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v14, v2, v5, v6}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-nez v12, :cond_4

    if-eqz v7, :cond_4

    .line 215
    invoke-interface {v7, v11, v13, v14}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    :cond_4
    if-eqz v12, :cond_7

    .line 218
    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v1, v2, :cond_5

    cmpg-double v1, v5, v8

    if-gez v1, :cond_6

    goto :goto_4

    :cond_5
    cmpl-double v1, v5, v8

    if-lez v1, :cond_6

    :goto_4
    return-object v14

    :cond_6
    return-object v13

    .line 225
    :cond_7
    new-array v12, v3, [D

    .line 226
    new-array v13, v3, [D

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v3, :cond_8

    .line 228
    aget-wide v25, v2, v14

    aget-wide v29, v10, v14

    sub-double v25, v25, v29

    aput-wide v25, v12, v14

    .line 229
    aget-wide v25, v2, v14

    mul-double v25, v25, v23

    aget-wide v29, v10, v14

    sub-double v25, v25, v29

    aput-wide v25, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 232
    :cond_8
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 233
    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v13

    cmpl-double v20, v8, v13

    if-lez v20, :cond_9

    add-double v25, v8, v13

    mul-double v29, v5, v23

    sub-double v25, v25, v29

    mul-double v25, v25, v23

    sub-double v23, v27, v17

    mul-double v23, v23, v23

    mul-double v25, v25, v23

    sub-double/2addr v8, v13

    mul-double v17, v17, v8

    mul-double v17, v17, v8

    sub-double v25, v25, v17

    cmpg-double v8, v25, v21

    if-gez v8, :cond_9

    .line 243
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    invoke-virtual {v5, v2, v12}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v8

    .line 245
    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v5

    .line 246
    invoke-direct {v0, v2, v12, v5, v6}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    .line 247
    aget-object v5, v2, v16

    add-int/lit8 v6, v3, -0x1

    .line 250
    aget-object v12, v4, v6

    aput-object v12, v4, v19

    .line 251
    aget-object v2, v2, v15

    aput-object v2, v4, v6

    move-object v2, v5

    goto :goto_6

    :cond_9
    move-wide v8, v5

    :goto_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1
.end method
