.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "RungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private final step:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 87
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    .line 88
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    .line 89
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    .line 90
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 91
    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 100
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 101
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 102
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    const/4 v9, 0x0

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 105
    :goto_0
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v10

    .line 106
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [D

    .line 107
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v12, v1

    add-int/lit8 v13, v12, 0x1

    .line 108
    new-array v3, v13, [[D

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v13, :cond_1

    .line 110
    array-length v2, v10

    new-array v2, v2, [D

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [D

    .line 113
    array-length v1, v10

    new-array v14, v1, [D

    .line 116
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 117
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v6

    move-object/from16 v24, v1

    move-object v1, v0

    move-object/from16 v0, v24

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v15, v3

    move v6, v4

    .line 119
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 122
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 123
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    neg-double v3, v3

    :goto_2
    iput-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    move-object v4, v1

    move-object v3, v2

    .line 124
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v5, v10

    move-object v10, v3

    move-object v3, v5

    move-object/from16 v16, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->initIntegration(D[DD)V

    move-object v1, v3

    .line 127
    iput-boolean v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    .line 130
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    .line 133
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    aget-object v4, v15, v9

    invoke-virtual {v0, v2, v3, v11, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    const/4 v2, 0x1

    :goto_4
    if-ge v2, v13, :cond_5

    const/4 v3, 0x0

    .line 138
    :goto_5
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 139
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    aget-wide v17, v4, v9

    aget-object v4, v15, v9

    aget-wide v19, v4, v3

    mul-double v17, v17, v19

    const/4 v4, 0x1

    :goto_6
    if-ge v4, v2, :cond_3

    .line 141
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    aget-object v8, v8, v5

    aget-wide v20, v8, v4

    aget-object v8, v15, v4

    aget-wide v22, v8, v3

    mul-double v20, v20, v22

    add-double v17, v17, v20

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 143
    :cond_3
    aget-wide v4, v11, v3

    move-object/from16 v20, v10

    const/4 v8, 0x0

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double v9, v9, v17

    add-double/2addr v4, v9

    aput-wide v4, v20, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v20

    const/4 v9, 0x0

    goto :goto_5

    :cond_4
    move-object/from16 v20, v10

    const/4 v8, 0x0

    .line 146
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v9, v2, -0x1

    aget-wide v9, v5, v9

    move-wide/from16 v17, v9

    const/4 v5, 0x0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double v9, v17, v8

    add-double/2addr v3, v9

    aget-object v8, v15, v2

    move-object/from16 v10, v20

    invoke-virtual {v0, v3, v4, v10, v8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_7
    const/4 v5, 0x0

    .line 151
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 152
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v8, v3, v5

    aget-object v3, v15, v5

    aget-wide v17, v3, v2

    mul-double v8, v8, v17

    const/4 v3, 0x1

    :goto_8
    if-ge v3, v13, :cond_6

    .line 154
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v17, v4, v3

    aget-object v4, v15, v3

    aget-wide v20, v4, v2

    mul-double v17, v17, v20

    add-double v8, v8, v17

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 156
    :cond_6
    aget-wide v3, v11, v2

    move/from16 v17, v6

    iget-wide v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double v5, v5, v8

    add-double/2addr v3, v5

    aput-wide v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v17

    goto :goto_7

    :cond_7
    move/from16 v17, v6

    .line 160
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double/2addr v2, v4

    move-object/from16 v4, v16

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 161
    array-length v2, v1

    const/4 v8, 0x0

    invoke-static {v10, v8, v11, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    aget-object v2, v15, v12

    array-length v3, v1

    invoke-static {v2, v8, v14, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    move-object v1, v4

    move-object v2, v11

    move-object v3, v14

    move-wide/from16 v4, p2

    .line 163
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v8

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 165
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-nez v4, :cond_9

    .line 168
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 171
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double/2addr v4, v8

    if-eqz v17, :cond_8

    cmpl-double v8, v4, p2

    if-ltz v8, :cond_9

    goto :goto_9

    :cond_8
    cmpg-double v8, v4, p2

    if-gtz v8, :cond_9

    .line 174
    :goto_9
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v4, p2, v4

    iput-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 178
    :cond_9
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-eqz v4, :cond_a

    .line 181
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v7, v3, v4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 182
    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 184
    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 185
    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    return-void

    :cond_a
    move-object/from16 v16, v1

    move-object v11, v2

    move-object v14, v3

    move-object v1, v6

    move/from16 v6, v17

    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD)[D
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    .line 218
    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 219
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 220
    new-array v8, v6, [[D

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_0

    .line 222
    array-length v11, v4

    new-array v11, v11, [D

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    sub-double v11, p5, v2

    .line 228
    aget-object v13, v8, v9

    invoke-interface {v1, v2, v3, v5, v13}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    const/4 v13, 0x1

    :goto_1
    if-ge v13, v6, :cond_3

    const/4 v14, 0x0

    .line 233
    :goto_2
    array-length v15, v4

    if-ge v14, v15, :cond_2

    .line 234
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v16, v13, -0x1

    aget-object v15, v15, v16

    aget-wide v17, v15, v9

    aget-object v15, v8, v9

    aget-wide v19, v15, v14

    mul-double v17, v17, v19

    const/4 v15, 0x1

    :goto_3
    if-ge v15, v13, :cond_1

    .line 236
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    aget-object v7, v7, v16

    aget-wide v20, v7, v15

    aget-object v7, v8, v15

    aget-wide v22, v7, v14

    mul-double v20, v20, v22

    add-double v17, v17, v20

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_3

    .line 238
    :cond_1
    aget-wide v15, v5, v14

    mul-double v17, v17, v11

    add-double v15, v15, v17

    aput-wide v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 241
    :cond_2
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v14, v13, -0x1

    aget-wide v14, v7, v14

    mul-double v14, v14, v11

    add-double/2addr v14, v2

    aget-object v7, v8, v13

    invoke-interface {v1, v14, v15, v10, v7}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 246
    :goto_4
    array-length v2, v4

    if-ge v1, v2, :cond_5

    .line 247
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v13, v2, v9

    aget-object v2, v8, v9

    aget-wide v15, v2, v1

    mul-double v13, v13, v15

    const/4 v2, 0x1

    :goto_5
    if-ge v2, v6, :cond_4

    .line 249
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v15, v3, v2

    aget-object v3, v8, v2

    aget-wide v17, v3, v1

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 251
    :cond_4
    aget-wide v2, v5, v1

    mul-double v13, v13, v11

    add-double/2addr v2, v13

    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object v5
.end method
