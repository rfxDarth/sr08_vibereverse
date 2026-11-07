.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "EmbeddedRungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final exp:D

.field private final fsal:Z

.field private maxGrowth:D

.field private minReduction:D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private safety:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p13

    .line 117
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 119
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 120
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 121
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 122
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    move-object/from16 p1, p6

    .line 123
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    div-double/2addr p3, p1

    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide p1, 0x3fc999999999999aL    # 0.2

    .line 129
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p7

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    .line 155
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 157
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 158
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 159
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 160
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    .line 161
    iput-object p6, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    div-double/2addr p3, p1

    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 166
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide p1, 0x3fc999999999999aL    # 0.2

    .line 167
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method


# virtual methods
.method protected abstract estimateError([[D[D[DD)D
.end method

.method public getMaxGrowth()D
    .locals 2

    .line 360
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .line 346
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-wide v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()D
    .locals 2

    .line 181
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 197
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 198
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v7

    .line 203
    invoke-virtual {v7}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [D

    .line 204
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    array-length v13, v2

    add-int/lit8 v14, v13, 0x1

    .line 205
    array-length v2, v8

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v11

    aput v14, v3, v12

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [[D

    .line 206
    invoke-virtual {v7}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 207
    array-length v4, v8

    new-array v15, v4, [D

    .line 210
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 211
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v6

    move/from16 v29, v1

    move-object v1, v0

    move-object v0, v4

    move/from16 v4, v29

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v9, v2

    move-object/from16 v16, v3

    move v6, v4

    .line 213
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object v4, v1

    .line 219
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v3, v7

    move-object v7, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initIntegration(D[DD)V

    .line 222
    iput-boolean v12, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    .line 225
    :goto_1
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    move-wide/from16 v29, v17

    move-wide/from16 v17, v1

    move-wide/from16 v1, v29

    move/from16 v19, v4

    :goto_2
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v1, v20

    if-ltz v4, :cond_f

    if-nez v19, :cond_1

    .line 231
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-nez v1, :cond_2

    .line 233
    :cond_1
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    aget-object v4, v16, v12

    invoke-virtual {v0, v1, v2, v8, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    :cond_2
    if-eqz v19, :cond_6

    .line 237
    iget v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->mainSetDimension:I

    move-object v2, v3

    new-array v3, v1, [D

    .line 238
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_3

    const/16 v22, 0x1

    const/16 v23, 0x0

    .line 240
    iget-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalAbsoluteTolerance:D

    move-object v5, v2

    move-object/from16 v17, v3

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalRelativeTolerance:D

    aget-wide v18, v8, v4

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    mul-double v2, v2, v18

    add-double/2addr v11, v2

    aput-wide v11, v17, v4

    add-int/lit8 v4, v4, 0x1

    move-object v2, v5

    move-object/from16 v3, v17

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    move-object v5, v2

    move-object/from16 v17, v3

    const/16 v22, 0x1

    const/16 v23, 0x0

    goto :goto_5

    :cond_4
    move-object v5, v2

    move-object/from16 v17, v3

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_5

    .line 244
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v11, v3, v2

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecRelativeTolerance:[D

    aget-wide v18, v3, v2

    aget-wide v3, v8, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    mul-double v18, v18, v3

    add-double v11, v11, v18

    aput-wide v11, v17, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 247
    :cond_5
    :goto_5
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    move-object v3, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object v1, v7

    aget-object v7, v16, v23

    move-object v11, v1

    move v1, v6

    move-object v6, v8

    move-object v8, v9

    aget-object v9, v16, v22

    move-object v12, v11

    move-object v11, v3

    move-object/from16 v3, v17

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v2

    move-wide v3, v2

    move-object v2, v6

    move v6, v1

    const/16 v19, 0x0

    goto :goto_6

    :cond_6
    move-object v11, v3

    move-object v12, v7

    move-object v2, v8

    move-object v8, v9

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-wide/from16 v3, v17

    .line 252
    :goto_6
    iput-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    if-eqz v6, :cond_7

    move-object v5, v2

    .line 254
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double v1, v17, v1

    cmpl-double v7, v1, p2

    if-ltz v7, :cond_8

    .line 255
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v1, p2, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    goto :goto_7

    :cond_7
    move-object v5, v2

    .line 258
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double v1, v17, v1

    cmpg-double v7, v1, p2

    if-gtz v7, :cond_8

    .line 259
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v1, p2, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    :cond_8
    :goto_7
    const/4 v1, 0x1

    :goto_8
    if-ge v1, v14, :cond_b

    const/4 v2, 0x0

    .line 266
    :goto_9
    array-length v7, v11

    if-ge v2, v7, :cond_a

    .line 267
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v9, v1, -0x1

    aget-object v7, v7, v9

    aget-wide v17, v7, v23

    aget-object v7, v16, v23

    aget-wide v24, v7, v2

    mul-double v17, v17, v24

    const/4 v7, 0x1

    :goto_a
    if-ge v7, v1, :cond_9

    move/from16 v24, v1

    .line 269
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    aget-object v1, v1, v9

    aget-wide v25, v1, v7

    aget-object v1, v16, v7

    aget-wide v27, v1, v2

    mul-double v25, v25, v27

    add-double v17, v17, v25

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v24

    goto :goto_a

    :cond_9
    move/from16 v24, v1

    .line 271
    aget-wide v25, v5, v2

    move v7, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v1, v1, v17

    add-double v25, v25, v1

    aput-wide v25, v8, v7

    add-int/lit8 v2, v7, 0x1

    move/from16 v1, v24

    goto :goto_9

    :cond_a
    move/from16 v24, v1

    .line 274
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    add-int/lit8 v9, v24, -0x1

    aget-wide v17, v7, v9

    move-wide/from16 v25, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v17, v17, v1

    add-double v1, v25, v17

    aget-object v7, v16, v24

    invoke-virtual {v0, v1, v2, v8, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    add-int/lit8 v1, v24, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    .line 279
    :goto_b
    array-length v2, v11

    if-ge v1, v2, :cond_d

    .line 280
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v17, v2, v23

    aget-object v2, v16, v23

    aget-wide v24, v2, v1

    mul-double v17, v17, v24

    const/4 v2, 0x1

    :goto_c
    if-ge v2, v14, :cond_c

    .line 282
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v24, v7, v2

    aget-object v7, v16, v2

    aget-wide v26, v7, v1

    mul-double v24, v24, v26

    add-double v17, v17, v24

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 284
    :cond_c
    aget-wide v24, v5, v1

    move v7, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v1, v1, v17

    add-double v24, v24, v1

    aput-wide v24, v8, v7

    add-int/lit8 v1, v7, 0x1

    goto :goto_b

    :cond_d
    move-wide/from16 v17, v3

    move-object v2, v5

    .line 288
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    move-object v3, v8

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->estimateError([[D[D[DD)D

    move-result-wide v4

    move-object v3, v2

    cmpl-double v1, v4, v20

    if-ltz v1, :cond_e

    .line 291
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    move v7, v13

    move v9, v14

    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move/from16 v20, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-wide/from16 v17, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    invoke-static {v4, v5, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v17

    invoke-static {v13, v14, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 294
    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v9, v9, v1

    const/4 v13, 0x0

    invoke-virtual {v0, v9, v10, v6, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v17

    move-wide v1, v4

    move v13, v7

    move-object v9, v8

    move-object v7, v12

    move/from16 v14, v20

    goto :goto_d

    :cond_e
    move-wide v1, v4

    move-object v9, v8

    move-object v7, v12

    :goto_d
    const/4 v12, 0x0

    move-object v8, v3

    move-object v3, v11

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_f
    move-object v11, v3

    move-object v12, v7

    move-object v3, v8

    move-object v8, v9

    move v7, v13

    move/from16 v20, v14

    const/4 v13, 0x0

    const/16 v22, 0x1

    .line 300
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v4, v9

    invoke-virtual {v12, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 301
    array-length v4, v11

    invoke-static {v8, v13, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    aget-object v4, v16, v7

    array-length v5, v11

    invoke-static {v4, v13, v15, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v4, p2

    move-wide v9, v1

    move-object v2, v3

    move-object v1, v12

    move-object v3, v15

    .line 303
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v14

    iput-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    .line 304
    array-length v4, v2

    invoke-static {v2, v13, v8, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-nez v4, :cond_14

    .line 309
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 311
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-eqz v4, :cond_10

    .line 313
    aget-object v4, v16, v13

    array-length v5, v11

    invoke-static {v3, v13, v4, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :cond_10
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move-wide/from16 v17, v14

    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move v15, v7

    move-object v12, v8

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    mul-double v13, v13, v7

    move-wide/from16 v7, v17

    invoke-static {v7, v8, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    .line 319
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v7, v7, v4

    .line 320
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double/2addr v4, v7

    if-eqz v6, :cond_11

    cmpl-double v9, v4, p2

    if-ltz v9, :cond_12

    goto :goto_e

    :cond_11
    cmpg-double v9, v4, p2

    if-gtz v9, :cond_12

    :goto_e
    const/4 v4, 0x1

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    .line 322
    :goto_f
    invoke-virtual {v0, v7, v8, v6, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v4

    .line 324
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double/2addr v7, v4

    if-eqz v6, :cond_13

    cmpl-double v9, v7, p2

    if-ltz v9, :cond_15

    goto :goto_10

    :cond_13
    cmpg-double v9, v7, p2

    if-gtz v9, :cond_15

    .line 327
    :goto_10
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v4, p2, v4

    goto :goto_11

    :cond_14
    move v15, v7

    move-object v12, v8

    move-wide/from16 v4, v17

    .line 332
    :cond_15
    :goto_11
    iget-boolean v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-eqz v7, :cond_16

    .line 335
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v10, p1

    invoke-virtual {v10, v3, v4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 336
    invoke-virtual {v10, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 338
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->resetInternalState()V

    return-void

    :cond_16
    move-object/from16 v10, p1

    move-object v7, v1

    move-object v8, v2

    move-wide v1, v4

    move-object v9, v12

    move v13, v15

    move/from16 v4, v19

    move/from16 v14, v20

    const/4 v12, 0x0

    move-object v15, v3

    move-object v3, v11

    const/4 v11, 0x1

    goto/16 :goto_1
.end method

.method public setMaxGrowth(D)V
    .locals 0

    .line 367
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-void
.end method

.method public setMinReduction(D)V
    .locals 0

    .line 353
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-void
.end method

.method public setSafety(D)V
    .locals 0

    .line 188
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-void
.end method
