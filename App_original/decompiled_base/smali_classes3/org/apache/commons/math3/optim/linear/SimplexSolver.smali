.class public Lorg/apache/commons/math3/optim/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optim/linear/LinearOptimizer;
.source "SimplexSolver.java"


# static fields
.field static final DEFAULT_CUT_OFF:D = 1.0E-10

.field private static final DEFAULT_EPSILON:D = 1.0E-6

.field static final DEFAULT_ULPS:I = 0xa


# instance fields
.field private final cutOff:D

.field private final epsilon:D

.field private final maxUlps:I

.field private pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field private solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object v0, p0

    .line 101
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 6

    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    .line 110
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 120
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DID)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;-><init>()V

    .line 131
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    .line 132
    iput p3, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    .line 133
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    .line 134
    sget-object p1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    return-void
.end method

.method private getPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 7

    .line 199
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    const/4 v4, 0x0

    .line 200
    invoke-virtual {p1, v4, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    cmpg-double v6, v4, v1

    if-gez v6, :cond_1

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    sget-object v3, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isValidPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    move-object v3, v1

    move-wide v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private getPivotRow(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 12

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_2

    .line 252
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v4}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    .line 253
    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    .line 257
    iget-wide v10, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v8

    if-lez v8, :cond_1

    div-double/2addr v4, v6

    .line 258
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 261
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_0

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-gez v6, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    return-object v1

    .line 274
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x0

    if-le p2, v5, :cond_9

    .line 278
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result p2

    if-lez p2, :cond_6

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 280
    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 281
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v5

    add-int/2addr v5, v4

    .line 282
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6, v5}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 283
    iget v10, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 297
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result p2

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 299
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicVariable(I)I

    move-result v3

    if-ge v3, p2, :cond_7

    move-object v1, v2

    move p2, v3

    goto :goto_3

    :cond_8
    return-object v1

    .line 307
    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method private isValidPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z
    .locals 8

    .line 229
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 230
    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 233
    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->incrementIterationCount()V

    .line 323
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getPivotRow(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->performRowOperations(II)V

    return-void

    .line 326
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;

    invoke-direct {p1}, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;-><init>()V

    throw p1
.end method

.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 370
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->setTableau(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 373
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getFunction()Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getConstraints()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isRestrictedToNonNegative()Z

    move-result v6

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    iget v9, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;ZDI)V

    .line 381
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 382
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->dropPhase1Objective()V

    .line 385
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->setTableau(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 389
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isRestrictedToNonNegative()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/PointValuePair;->getPoint()[D

    move-result-object v1

    const/4 v2, 0x0

    .line 400
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 401
    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v3

    if-ltz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw v0

    :cond_4
    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 155
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    .line 173
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    .line 178
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 179
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v3, :cond_0

    .line 180
    check-cast v2, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    goto :goto_1

    .line 183
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-eqz v3, :cond_1

    .line 184
    check-cast v2, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    return-void

    .line 356
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {p1}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw p1
.end method
