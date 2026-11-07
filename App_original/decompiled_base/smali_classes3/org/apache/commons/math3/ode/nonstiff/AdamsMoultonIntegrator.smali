.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsMoultonIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    add-int/lit8 v3, p1, 0x1

    .line 182
    const-string v1, "Adams-Moulton"

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

    add-int/lit8 v3, p1, 0x1

    .line 204
    const-string v1, "Adams-Moulton"

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
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v6, p1

    .line 215
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 216
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 217
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    const/4 v8, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 220
    :goto_0
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v3

    .line 221
    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [D

    .line 222
    array-length v0, v10

    new-array v11, v0, [D

    .line 223
    array-length v0, v10

    new-array v12, v0, [D

    .line 224
    array-length v0, v10

    new-array v13, v0, [D

    .line 228
    new-instance v14, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v14}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 229
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v14, v10, v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 233
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->initIntegration(D[DD)V

    move-object v15, v3

    .line 236
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 237
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    const/16 v21, 0x1

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v17, v4

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object v7, v15

    move-wide v15, v1

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 238
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v14, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 240
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    .line 241
    invoke-virtual {v14, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 243
    iput-boolean v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    const/4 v4, 0x0

    :goto_1
    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    move/from16 v22, v9

    move-wide v8, v15

    :goto_2
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v8, v15

    if-ltz v5, :cond_4

    .line 249
    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    .line 252
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double/2addr v4, v8

    .line 253
    invoke-virtual {v14, v4, v5}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 254
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v8

    .line 255
    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v9

    .line 256
    invoke-virtual {v14}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v10

    invoke-virtual {v9, v10, v12}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 258
    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v8

    array-length v9, v8

    move-wide/from16 v18, v15

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v10, v9, :cond_1

    move-wide/from16 v23, v1

    aget-object v1, v8, v10

    .line 259
    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, v23

    goto :goto_3

    :cond_1
    move-wide/from16 v23, v1

    .line 264
    invoke-virtual {v0, v4, v5, v12, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    const/4 v10, 0x0

    .line 267
    :goto_4
    array-length v1, v7

    if-ge v10, v1, :cond_2

    .line 268
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v4, v11, v10

    mul-double v1, v1, v4

    aput-wide v1, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 270
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v4

    .line 271
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    invoke-virtual {v0, v1, v13, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 274
    new-instance v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;

    invoke-direct {v1, v0, v3, v13, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v8

    cmpl-double v1, v8, v18

    if-ltz v1, :cond_3

    .line 278
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v1

    move-wide v15, v1

    .line 279
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double v1, v1, v15

    move/from16 v5, v22

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v2, v5, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 280
    invoke-virtual {v14, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_5

    :cond_3
    move/from16 v5, v22

    move-wide/from16 v1, v23

    :goto_5
    move/from16 v22, v5

    goto/16 :goto_2

    :cond_4
    move-wide/from16 v23, v1

    move/from16 v5, v22

    .line 285
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-wide v15, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double/2addr v1, v15

    .line 286
    invoke-virtual {v0, v1, v2, v12, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    .line 289
    array-length v15, v7

    new-array v15, v15, [D

    move-wide/from16 v18, v1

    const/4 v10, 0x0

    .line 290
    :goto_6
    array-length v1, v7

    if-ge v10, v1, :cond_5

    .line 291
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v25, v11, v10

    mul-double v1, v1, v25

    aput-wide v1, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 293
    :cond_5
    invoke-virtual {v0, v13, v15, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 296
    array-length v1, v3

    const/4 v10, 0x0

    invoke-static {v12, v10, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    move-wide/from16 v27, v18

    move-object/from16 v19, v15

    move-wide/from16 v15, v27

    move-wide/from16 v17, v1

    move-object/from16 v20, v4

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    move-object/from16 v16, v11

    move-wide/from16 v10, v27

    move-object v4, v3

    move-object v1, v14

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    .line 298
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 299
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 300
    invoke-virtual {v1, v10, v11}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    move-object v2, v4

    move v10, v5

    move-object/from16 v25, v12

    move-object/from16 v3, v16

    move-wide/from16 v4, p2

    .line 301
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v11

    move-object/from16 v26, v3

    move-object v3, v2

    iput-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    .line 302
    iput-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    .line 303
    iput-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 305
    iget-boolean v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-nez v2, :cond_b

    .line 308
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 310
    iget-boolean v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetOccurred:Z

    if-eqz v2, :cond_6

    move-object v4, v1

    .line 313
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object v11, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 314
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v17, v4

    move-object/from16 v19, v12

    move-object v4, v14

    move-object/from16 v20, v15

    move-wide v15, v1

    move-object v14, v11

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    goto :goto_7

    :cond_6
    move-object v4, v14

    move-object v14, v1

    .line 319
    :goto_7
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v1

    .line 320
    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double v8, v8, v1

    .line 321
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double/2addr v1, v8

    if-eqz v10, :cond_7

    cmpl-double v5, v1, p2

    if-ltz v5, :cond_8

    goto :goto_8

    :cond_7
    cmpg-double v5, v1, p2

    if-gtz v5, :cond_8

    :goto_8
    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 323
    :goto_9
    invoke-virtual {v0, v8, v9, v10, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 325
    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double/2addr v8, v1

    if-eqz v10, :cond_9

    cmpl-double v5, v8, p2

    if-ltz v5, :cond_a

    goto :goto_a

    :cond_9
    cmpg-double v5, v8, p2

    if-gtz v5, :cond_a

    .line 328
    :goto_a
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    sub-double v1, p2, v1

    .line 331
    :cond_a
    invoke-virtual {v14, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_b

    :cond_b
    move-object v4, v14

    move-object v14, v1

    move-wide/from16 v1, v23

    .line 334
    :goto_b
    iget-boolean v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-eqz v5, :cond_c

    .line 337
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v6, v1, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 338
    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 340
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetInternalState()V

    return-void

    :cond_c
    move v9, v10

    move-object/from16 v12, v25

    move-object/from16 v11, v26

    const/4 v8, 0x0

    goto/16 :goto_1
.end method
