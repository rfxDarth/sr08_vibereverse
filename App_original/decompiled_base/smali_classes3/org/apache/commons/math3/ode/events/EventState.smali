.class public Lorg/apache/commons/math3/ode/events/EventState;
.super Ljava/lang/Object;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    }
.end annotation


# instance fields
.field private final convergence:D

.field private expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private forward:Z

.field private g0:D

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field private pendingEvent:Z

.field private pendingEventTime:D

.field private previousEventTime:D

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private t0:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 109
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    .line 110
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    .line 111
    iput p6, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    .line 112
    iput-object p7, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 116
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 117
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const/4 p3, 0x1

    .line 118
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const/4 p4, 0x0

    .line 119
    iput-boolean p4, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 120
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 121
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 122
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 123
    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object p0
.end method

.method private getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 7

    .line 203
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    .line 205
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 208
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 209
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 229
    :try_start_0
    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    .line 230
    invoke-interface {v0}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    .line 231
    iget-wide v4, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    sub-double/2addr v2, v4

    .line 232
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    const/4 v8, 0x0

    cmpg-double v9, v4, v6

    if-gez v9, :cond_0

    return v8

    .line 236
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    int-to-double v6, v4

    div-double/2addr v2, v6

    .line 239
    new-instance v11, Lorg/apache/commons/math3/ode/events/EventState$1;

    invoke-direct {v11, v1, v0}, Lorg/apache/commons/math3/ode/events/EventState$1;-><init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    .line 250
    iget-wide v6, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 251
    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    move-wide v14, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_10

    .line 255
    iget-wide v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    add-int/lit8 v7, v6, 0x1

    move-wide/from16 v16, v9

    int-to-double v8, v7

    mul-double v8, v8, v2

    add-double/2addr v12, v8

    .line 256
    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 257
    iget-object v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v8

    invoke-interface {v7, v12, v13, v8}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v7

    .line 260
    iget-boolean v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const-wide/16 v19, 0x0

    cmpl-double v10, v7, v19

    if-ltz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    xor-int/2addr v9, v10

    if-eqz v9, :cond_f

    cmpl-double v9, v7, v16

    if-ltz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 264
    :goto_2
    iput-boolean v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 268
    iget-object v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    instance-of v10, v9, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    if-eqz v10, :cond_4

    .line 270
    check-cast v9, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    .line 272
    iget-boolean v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v10, :cond_3

    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-wide/from16 v25, v14

    move-wide v14, v12

    move-wide/from16 v12, v25

    invoke-interface/range {v9 .. v16}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v9

    goto :goto_3

    :cond_3
    move-wide/from16 v25, v14

    move-wide v14, v12

    move-wide/from16 v12, v25

    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-wide/from16 v25, v14

    move-wide v14, v12

    move-wide/from16 v12, v25

    invoke-interface/range {v9 .. v16}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v9

    move-wide/from16 v25, v14

    move-wide v14, v12

    move-wide/from16 v12, v25

    :goto_3
    move-wide/from16 v22, v2

    move/from16 v24, v4

    goto/16 :goto_6

    :cond_4
    move-wide/from16 v25, v14

    move-wide v14, v12

    move-wide/from16 v12, v25

    .line 276
    iget-boolean v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v10, :cond_5

    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v9

    goto :goto_4

    :cond_5
    iget v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-wide/from16 v25, v14

    move-wide v14, v12

    move-wide/from16 v12, v25

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v9

    move-wide/from16 v25, v14

    move-wide v14, v12

    move-wide/from16 v12, v25

    .line 279
    :goto_4
    iget v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    iget-object v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v0

    sub-int/2addr v5, v0

    move-wide/from16 v16, v12

    move-wide v12, v9

    move-object v10, v11

    .line 280
    new-instance v11, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;

    iget-object v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-wide/from16 v22, v2

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v2

    iget-object v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move/from16 v24, v4

    move v9, v5

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v4

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;-><init>(DD)V

    .line 282
    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_6

    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-wide/from16 v25, v16

    move-wide/from16 v16, v14

    move-wide/from16 v14, v25

    invoke-static/range {v9 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    move-object v11, v10

    move-wide v12, v14

    move-wide/from16 v14, v16

    goto :goto_5

    :cond_6
    move v5, v9

    move-object v0, v10

    move-wide v9, v12

    move-wide/from16 v12, v16

    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-wide v12, v9

    move-object v10, v0

    move v9, v5

    invoke-static/range {v9 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    move-object v11, v10

    move-wide/from16 v12, v16

    :goto_5
    move-wide v9, v2

    .line 289
    :goto_6
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    sub-double v2, v9, v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_c

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double v2, v9, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_c

    .line 297
    :cond_7
    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_8

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    add-double/2addr v12, v2

    goto :goto_7

    :cond_8
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    sub-double/2addr v12, v2

    .line 298
    :goto_7
    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v7

    .line 299
    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    cmpl-double v2, v7, v19

    if-ltz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    xor-int/2addr v0, v2

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v2, v12, v14

    if-ltz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_9
    xor-int/2addr v0, v2

    if-nez v0, :cond_7

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 301
    :cond_c
    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    iget-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double/2addr v2, v9

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_d

    goto :goto_b

    :cond_d
    move-wide v12, v14

    :goto_a
    move-wide v9, v7

    move-wide v14, v12

    goto :goto_c

    .line 303
    :cond_e
    :goto_b
    iput-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    return v0

    :cond_f
    move-wide/from16 v22, v2

    move/from16 v24, v4

    move-wide v14, v12

    move-wide v9, v7

    :goto_c
    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v2, v22

    move/from16 v4, v24

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    .line 321
    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 322
    iput-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;

    move-result-object v0

    throw v0
.end method

.method public getConvergence()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    return-wide v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method public getEventTime()D
    .locals 2

    .line 336
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .line 145
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .line 159
    iget v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 171
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 189
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v6

    add-double/2addr v4, v0

    .line 190
    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 191
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p1

    invoke-interface {v0, v4, v5, p1}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 193
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    return-void
.end method

.method public reset(D[D)Z
    .locals 6

    .line 380
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v2, :cond_1

    .line 385
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    .line 387
    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 388
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 390
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object p2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object p2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-void
.end method

.method public stepAccepted(D[D)V
    .locals 6

    .line 349
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 350
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 352
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    .line 354
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 355
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 356
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    invoke-interface {v2, p1, p2, p3, v0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-void

    .line 358
    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double p3, p1, v2

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 359
    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-void
.end method

.method public stop()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
