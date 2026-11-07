.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsBashforthIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 166
    const-string v1, "Adams-Bashforth"

    move v3, p1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 188
    const-string v1, "Adams-Bashforth"

    move v3, p1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

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

    move-object/from16 v6, p1

    .line 198
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 199
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 200
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 203
    :goto_0
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v3

    .line 204
    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [D

    .line 205
    array-length v0, v10

    new-array v11, v0, [D

    .line 208
    new-instance v12, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v12}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 209
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v12, v10, v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 213
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->initIntegration(D[DD)V

    move-object v13, v3

    .line 216
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    move-object v1, v13

    .line 217
    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v17, v2

    move-wide v15, v4

    move-object/from16 v18, v10

    move-object v10, v1

    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 218
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 219
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    sub-int/2addr v1, v7

    .line 222
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    .line 223
    invoke-virtual {v12, v4, v5}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 226
    iput-boolean v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    :goto_1
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    :goto_2
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v13, v15

    if-ltz v2, :cond_4

    .line 232
    iput-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    const-wide/16 v13, 0x0

    const/4 v2, 0x0

    const/16 v19, 0x1

    .line 236
    :goto_3
    iget v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    if-ge v2, v7, :cond_2

    .line 237
    aget-wide v17, v3, v2

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    .line 238
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    move/from16 v20, v9

    if-nez v7, :cond_1

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalAbsoluteTolerance:D

    move-wide/from16 v21, v8

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalRelativeTolerance:D

    mul-double v7, v7, v17

    add-double v8, v21, v7

    goto :goto_4

    :cond_1
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v8, v7, v2

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecRelativeTolerance:[D

    aget-wide v21, v7, v2

    mul-double v21, v21, v17

    add-double v8, v8, v21

    .line 241
    :goto_4
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v17

    div-double v17, v17, v8

    mul-double v17, v17, v17

    add-double v13, v13, v17

    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v20

    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    move/from16 v20, v9

    .line 244
    iget v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    int-to-double v7, v2

    div-double/2addr v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    cmpl-double v2, v13, v15

    if-ltz v2, :cond_3

    .line 248
    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v4

    .line 249
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double v7, v7, v4

    move/from16 v2, v20

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v2, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v4

    .line 250
    invoke-virtual {v12, v4, v5}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    move v9, v2

    goto :goto_5

    :cond_3
    move/from16 v9, v20

    :goto_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    move v2, v9

    const/4 v9, 0x0

    const/16 v19, 0x1

    .line 256
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v20, v10

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    add-double/2addr v7, v9

    .line 257
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 258
    invoke-virtual {v12, v7, v8}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 259
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v10

    .line 261
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v15

    invoke-virtual {v10, v15, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 263
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v9

    array-length v10, v9

    move/from16 v21, v1

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v10, :cond_5

    move/from16 v22, v2

    aget-object v2, v9, v15

    move-wide/from16 v23, v4

    .line 264
    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v22

    move-wide/from16 v4, v23

    goto :goto_6

    :cond_5
    move/from16 v22, v2

    move-wide/from16 v23, v4

    .line 269
    invoke-virtual {v0, v7, v8, v3, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeDerivatives(D[D[D)V

    move-object/from16 v10, v20

    .line 272
    array-length v1, v10

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 273
    :goto_7
    array-length v4, v10

    if-ge v2, v4, :cond_6

    .line 274
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    aget-wide v15, v11, v2

    mul-double v4, v4, v15

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 276
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v2

    .line 277
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 278
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-wide v15, v13

    move-wide v13, v7

    move-wide v7, v15

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide v15, v4

    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    move-object/from16 v9, v17

    move-object/from16 v15, v18

    .line 281
    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    move-wide/from16 v4, p2

    move-object v2, v3

    move-object v3, v11

    move-object v1, v12

    move-wide/from16 v16, v13

    move/from16 v11, v22

    .line 282
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v12

    move-object/from16 v20, v3

    move-object v3, v2

    iput-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    .line 283
    iput-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    .line 284
    iput-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 285
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object v12, v1

    move-object/from16 v18, v9

    move-wide/from16 v13, v16

    move-object/from16 v17, v2

    move-wide v15, v4

    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 287
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-nez v1, :cond_c

    .line 290
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 292
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetOccurred:Z

    if-eqz v1, :cond_7

    .line 295
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 296
    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide v15, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v12 .. v18}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 300
    :cond_7
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v1

    .line 301
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double v4, v4, v1

    .line 302
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double/2addr v1, v4

    if-eqz v11, :cond_8

    cmpl-double v7, v1, p2

    if-ltz v7, :cond_9

    goto :goto_8

    :cond_8
    cmpg-double v7, v1, p2

    if-gtz v7, :cond_9

    :goto_8
    const/4 v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    .line 304
    :goto_9
    invoke-virtual {v0, v4, v5, v11, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 306
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double/2addr v4, v1

    if-eqz v11, :cond_a

    cmpl-double v7, v4, p2

    if-ltz v7, :cond_b

    goto :goto_a

    :cond_a
    cmpg-double v7, v4, p2

    if-gtz v7, :cond_b

    .line 309
    :goto_a
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    sub-double v1, p2, v1

    .line 312
    :cond_b
    invoke-virtual {v12, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    move-wide v4, v1

    goto :goto_b

    :cond_c
    move-wide/from16 v4, v23

    .line 316
    :goto_b
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-eqz v1, :cond_d

    .line 319
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v6, v1, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 320
    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 322
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetInternalState()V

    return-void

    :cond_d
    move v9, v11

    move-object/from16 v11, v20

    move/from16 v1, v21

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1
.end method
