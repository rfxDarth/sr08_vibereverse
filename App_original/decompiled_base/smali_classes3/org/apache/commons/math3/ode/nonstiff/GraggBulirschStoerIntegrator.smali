.class public Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "GraggBulirschStoerIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Gragg-Bulirsch-Stoer"


# instance fields
.field private coeff:[[D

.field private costPerStep:[I

.field private costPerTimeUnit:[D

.field private maxChecks:I

.field private maxIter:I

.field private maxOrder:I

.field private mudif:I

.field private optimalStep:[D

.field private orderControl1:D

.field private orderControl2:D

.field private performTest:Z

.field private sequence:[I

.field private stabilityReduction:D

.field private stepControl1:D

.field private stepControl2:D

.field private stepControl3:D

.field private stepControl4:D

.field private useInterpolationError:Z


# direct methods
.method public constructor <init>(DDDD)V
    .locals 11

    .line 172
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    const/4 p4, -0x1

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    const/4 p3, 0x1

    const/4 v0, -0x1

    move-wide/from16 p5, p1

    const/4 p2, 0x1

    const/4 p3, -0x1

    move-object p1, p0

    .line 174
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v2, p0

    .line 175
    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    move-wide/from16 p5, p1

    const/4 p2, -0x1

    move-object p1, p0

    .line 176
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 177
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 11

    .line 194
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    const/4 p4, -0x1

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    const/4 p3, 0x1

    const/4 v0, -0x1

    move-wide/from16 p5, p1

    const/4 p2, 0x1

    const/4 p3, -0x1

    move-object p1, p0

    .line 196
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v2, p0

    .line 197
    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    move-wide/from16 p5, p1

    const/4 p2, -0x1

    move-object p1, p0

    .line 198
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 199
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method

.method private extrapolate(II[[D[D)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    .line 533
    :goto_1
    array-length v3, p4

    if-ge v2, v3, :cond_0

    sub-int v3, p2, v1

    add-int/lit8 v4, v3, -0x1

    .line 535
    aget-object v4, p3, v4

    aget-object v3, p3, v3

    aget-wide v5, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v7, p2, p1

    aget-object v3, v3, v7

    add-int/lit8 v7, v1, -0x1

    aget-wide v7, v3, v7

    aget-wide v9, v4, v2

    sub-double v9, v5, v9

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 541
    :goto_2
    array-length v3, p4

    if-ge v1, v3, :cond_2

    .line 543
    aget-object v3, p3, v2

    aget-wide v4, v3, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v6, p2, p1

    aget-object v3, v3, v6

    add-int/lit8 v6, p2, -0x1

    aget-wide v6, v3, v6

    aget-wide v8, p4, v1

    sub-double v8, v4, v8

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private initializeArrays()V
    .locals 10

    .line 365
    iget v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    div-int/lit8 v0, v0, 0x2

    .line 367
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 369
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    .line 370
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    .line 371
    new-array v1, v0, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    .line 372
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    .line 373
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 378
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v2, v1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 385
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v5, v2, -0x1

    aget v5, v3, v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 390
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    if-lez v2, :cond_4

    new-array v5, v2, [D

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    aput-object v5, v3, v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 392
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v6, v5, v2

    int-to-double v6, v6

    sub-int v8, v2, v3

    sub-int/2addr v8, v4

    aget v5, v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    .line 393
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    aget-object v5, v5, v2

    mul-double v6, v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v8, v6

    aput-wide v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private rescale([D[D[D)V
    .locals 8

    .line 428
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 429
    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_1

    .line 430
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 431
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalAbsoluteTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    mul-double v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    :goto_1
    array-length v0, p3

    if-ge v1, v0, :cond_1

    .line 435
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 436
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v0, v1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v0, v1

    mul-double v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private tryStep(D[DDI[D[[D[D[D[D)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    .line 464
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v5, v2

    int-to-double v6, v5

    div-double v6, p4, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v6

    add-double v10, p1, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 470
    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_0

    .line 471
    aget-wide v14, v1, v13

    aput-wide v14, p11, v13

    .line 472
    aget-wide v14, v1, v13

    aget-object v16, p8, v12

    aget-wide v17, v16, v13

    mul-double v17, v17, v6

    add-double v14, v14, v17

    aput-wide v14, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    .line 474
    aget-object v14, p8, v13

    invoke-virtual {v0, v10, v11, v4, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    const/4 v14, 0x1

    :goto_1
    if-ge v14, v5, :cond_7

    mul-int/lit8 v15, v14, 0x2

    if-ne v15, v5, :cond_1

    .line 481
    array-length v15, v1

    move-object/from16 v13, p9

    const/16 p1, 0x1

    invoke-static {v4, v12, v13, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    move-object/from16 v13, p9

    const/16 p1, 0x1

    :goto_2
    add-double/2addr v10, v6

    const/16 p2, 0x0

    const/4 v15, 0x0

    .line 485
    :goto_3
    array-length v12, v1

    if-ge v15, v12, :cond_2

    .line 486
    aget-wide v16, v4, v15

    .line 487
    aget-wide v18, p11, v15

    aget-object v12, p8, v14

    aget-wide v20, v12, v15

    mul-double v20, v20, v8

    add-double v18, v18, v20

    aput-wide v18, v4, v15

    .line 488
    aput-wide v16, p11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v14, 0x1

    .line 491
    aget-object v15, p8, v12

    invoke-virtual {v0, v10, v11, v4, v15}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 494
    iget-boolean v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-eqz v15, :cond_5

    iget v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    if-gt v14, v15, :cond_5

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-ge v2, v14, :cond_5

    move v15, v5

    const-wide/16 v4, 0x0

    const/4 v14, 0x0

    .line 496
    :goto_4
    array-length v0, v3

    if-ge v14, v0, :cond_3

    .line 497
    aget-object v0, p8, p2

    aget-wide v16, v0, v14

    aget-wide v18, v3, v14

    div-double v16, v16, v18

    mul-double v16, v16, v16

    add-double v4, v4, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v16, 0x0

    .line 501
    :goto_5
    array-length v14, v3

    if-ge v0, v14, :cond_4

    .line 502
    aget-object v14, p8, v12

    aget-wide v18, v14, v0

    aget-object v14, p8, p2

    aget-wide v20, v14, v0

    sub-double v18, v18, v20

    aget-wide v20, v3, v0

    div-double v18, v18, v20

    mul-double v18, v18, v18

    add-double v16, v16, v18

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    .line 505
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v4

    cmpl-double v0, v16, v2

    if-lez v0, :cond_6

    return p2

    :cond_5
    move v15, v5

    :cond_6
    move-object/from16 v0, p0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move v14, v12

    move v5, v15

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_7
    move v15, v5

    const/16 p1, 0x1

    const/16 p2, 0x0

    const/4 v12, 0x0

    .line 513
    :goto_6
    array-length v0, v1

    if-ge v12, v0, :cond_8

    .line 514
    aget-wide v2, p11, v12

    aget-wide v4, p10, v12

    add-double/2addr v2, v4

    aget-object v0, p8, v15

    aget-wide v4, v0, v12

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    aput-wide v2, p10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    return p1
.end method


# virtual methods
.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    .line 354
    invoke-super/range {p0 .. p7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 358
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 0

    .line 340
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    .line 343
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 553
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 554
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 558
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v3

    .line 559
    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [D

    .line 560
    array-length v2, v6

    new-array v7, v2, [D

    .line 561
    array-length v2, v6

    new-array v2, v2, [D

    .line 562
    array-length v4, v6

    new-array v8, v4, [D

    .line 563
    array-length v4, v6

    new-array v9, v4, [D

    .line 565
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v5, v4

    sub-int/2addr v5, v14

    new-array v10, v5, [[D

    .line 566
    array-length v4, v4

    sub-int/2addr v4, v14

    new-array v11, v4, [[D

    const/4 v4, 0x0

    .line 567
    :goto_1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v15, v5

    sub-int/2addr v15, v14

    if-ge v4, v15, :cond_1

    .line 568
    array-length v5, v6

    new-array v5, v5, [D

    aput-object v5, v10, v4

    .line 569
    array-length v5, v6

    new-array v5, v5, [D

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 572
    :cond_1
    array-length v4, v5

    new-array v4, v4, [[[D

    const/4 v5, 0x0

    .line 573
    :goto_2
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/16 v24, 0x1

    array-length v14, v15

    if-ge v5, v14, :cond_3

    .line 575
    aget v14, v15, v5

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [[D

    aput-object v14, v4, v5

    .line 578
    aput-object v7, v14, v13

    const/4 v14, 0x0

    .line 580
    :goto_3
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v15, v15, v5

    if-ge v14, v15, :cond_2

    .line 581
    aget-object v15, v4, v5

    add-int/lit8 v14, v14, 0x1

    array-length v13, v3

    new-array v13, v13, [D

    aput-object v13, v15, v14

    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    if-eq v6, v3, :cond_4

    .line 587
    array-length v5, v3

    const/4 v13, 0x0

    invoke-static {v3, v13, v6, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    :cond_4
    array-length v5, v3

    new-array v5, v5, [D

    .line 591
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v13, v13

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    array-length v15, v3

    move/from16 v21, v1

    new-array v1, v14, [I

    aput v15, v1, v24

    const/16 v25, 0x0

    aput v13, v1, v25

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, [[D

    .line 594
    iget v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    new-array v13, v1, [D

    .line 595
    invoke-direct {v0, v6, v6, v13}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 598
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    const/16 v26, 0x2

    if-nez v1, :cond_5

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    const/16 v25, 0x0

    aget-wide v14, v1, v25

    :goto_4
    move-object/from16 v18, v2

    const-wide v1, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 600
    invoke-static {v1, v2, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v1

    .line 601
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v14, v14

    add-int/lit8 v14, v14, -0x2

    const-wide v15, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v15

    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    sub-double v1, v27, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v14, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v14

    .line 606
    new-instance v15, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v23

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v23}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    move-object v5, v3

    move-object v1, v15

    move-object/from16 v15, v18

    .line 612
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object v3, v1

    .line 621
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object v3, v5

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initIntegration(D[DD)V

    .line 622
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    const-wide/16 v22, 0x0

    const/4 v2, 0x0

    aput-wide v22, v1, v2

    .line 623
    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v29, v1

    move/from16 v19, v14

    move-wide/from16 v4, v22

    const/4 v1, 0x1

    const/4 v14, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    :goto_5
    if-eqz v1, :cond_8

    .line 631
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    if-nez v14, :cond_6

    .line 635
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    :cond_6
    if-eqz v31, :cond_7

    mul-int/lit8 v1, v19, 0x2

    const/16 v24, 0x1

    add-int/lit8 v2, v1, 0x1

    .line 639
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move/from16 v33, v14

    move/from16 v1, v21

    move-object v14, v3

    move-object/from16 v3, v17

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v4

    goto :goto_6

    :cond_7
    move/from16 v33, v14

    move-object v14, v3

    move-object/from16 v3, v17

    :goto_6
    move-object/from16 v17, v9

    const/16 v34, 0x0

    goto :goto_7

    :cond_8
    move/from16 v33, v14

    move-object v14, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v9

    move/from16 v34, v1

    .line 647
    :goto_7
    iput-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    if-eqz v21, :cond_9

    .line 650
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v35, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double v1, v35, v1

    cmpl-double v9, v1, p2

    if-gtz v9, :cond_a

    :cond_9
    if-nez v21, :cond_b

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v35, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double v1, v35, v1

    cmpg-double v9, v1, p2

    if-gez v9, :cond_b

    .line 652
    :cond_a
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    sub-double v1, p2, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    .line 654
    :cond_b
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v35, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double v1, v35, v1

    if-eqz v21, :cond_c

    cmpl-double v9, v1, p2

    if-ltz v9, :cond_d

    goto :goto_8

    :cond_c
    cmpg-double v9, v1, p2

    if-gtz v9, :cond_d

    :goto_8
    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    .line 655
    :goto_9
    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    const/4 v1, -0x1

    move-wide/from16 v37, v29

    const/4 v2, -0x1

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-wide/from16 v29, v4

    :goto_a
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v35, :cond_21

    move-object v9, v7

    move-object v7, v3

    move-object v3, v6

    add-int/lit8 v6, v2, 0x1

    move/from16 v39, v2

    const/16 v40, -0x1

    .line 664
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v41, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-object/from16 v43, v11

    move-object v11, v8

    aget-object v8, v16, v6

    if-nez v6, :cond_e

    const/16 v25, 0x0

    aget-object v44, v20, v25

    goto :goto_b

    :cond_e
    aget-object v44, v10, v39

    :goto_b
    if-nez v6, :cond_f

    move-object/from16 v47, v10

    move-object v10, v15

    goto :goto_c

    :cond_f
    aget-object v45, v43, v39

    move-object/from16 v47, v10

    move-object/from16 v10, v45

    :goto_c
    move-object/from16 v46, v9

    move/from16 v40, v19

    move/from16 v12, v21

    move-object/from16 v9, v44

    move-object/from16 v21, v13

    move-object/from16 v19, v14

    move-object/from16 v13, v43

    const/4 v14, -0x1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->tryStep(D[DDI[D[[D[D[D[D)Z

    move-result v1

    move-object v9, v7

    move-object v8, v11

    move-object v7, v3

    if-nez v1, :cond_10

    .line 670
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double v1, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    move v2, v6

    move-object v6, v7

    move-object v3, v9

    move-object v11, v13

    move-object/from16 v14, v19

    move-object/from16 v13, v21

    move/from16 v19, v40

    :goto_d
    move-object/from16 v7, v46

    move-object/from16 v10, v47

    const/4 v1, -0x1

    const/16 v35, 0x0

    const/16 v36, 0x1

    goto/16 :goto_15

    :cond_10
    const/4 v3, 0x0

    if-lez v6, :cond_20

    .line 681
    invoke-direct {v0, v3, v6, v13, v15}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 682
    invoke-direct {v0, v7, v15, v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    move-wide/from16 v4, v22

    const/4 v1, 0x0

    .line 686
    :goto_e
    iget v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    if-ge v1, v2, :cond_11

    .line 687
    aget-wide v10, v15, v1

    aget-object v2, v13, v3

    aget-wide v41, v2, v1

    sub-double v10, v10, v41

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v10, v9, v1

    div-double/2addr v2, v10

    mul-double v2, v2, v2

    add-double/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_e

    .line 690
    :cond_11
    iget v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_1f

    const/4 v3, 0x1

    if-le v6, v3, :cond_12

    cmpl-double v4, v1, v37

    if-lez v4, :cond_12

    goto/16 :goto_13

    :cond_12
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v4, v4, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 699
    invoke-static {v4, v5, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v37

    mul-int/lit8 v4, v6, 0x2

    add-int/2addr v4, v3

    int-to-double v3, v4

    div-double v4, v10, v3

    move-wide/from16 v41, v10

    .line 703
    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    move-object v3, v15

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    div-double v14, v1, v14

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v14

    div-double/2addr v10, v14

    .line 704
    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    .line 705
    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    div-double v14, v4, v14

    div-double v4, v41, v4

    invoke-static {v4, v5, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 706
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    mul-double v14, v14, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v14, v15, v12, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aput-wide v4, v10, v6

    .line 707
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v5, v5, v6

    int-to-double v10, v5

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v14, v5, v6

    div-double/2addr v10, v14

    aput-wide v10, v4, v6

    sub-int v14, v6, v40

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1b

    if-eqz v14, :cond_17

    const/4 v10, 0x1

    if-eq v14, v10, :cond_15

    if-nez v31, :cond_13

    .line 780
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v4, :cond_14

    :cond_13
    cmpg-double v4, v1, v41

    if-gtz v4, :cond_14

    move/from16 v14, v40

    goto :goto_f

    :cond_14
    move/from16 v14, v40

    goto/16 :goto_12

    :cond_15
    cmpl-double v10, v1, v41

    move/from16 v14, v40

    if-lez v10, :cond_18

    const/4 v2, 0x1

    if-le v14, v2, :cond_16

    add-int/lit8 v1, v14, -0x1

    .line 769
    aget-wide v1, v4, v1

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v29, v4, v14

    mul-double v10, v10, v29

    cmpg-double v4, v1, v10

    if-gez v4, :cond_16

    add-int/lit8 v1, v14, -0x1

    move v14, v1

    .line 774
    :cond_16
    aget-wide v29, v5, v14

    const/16 v36, 0x1

    goto :goto_f

    :cond_17
    move/from16 v14, v40

    cmpg-double v10, v1, v41

    if-gtz v10, :cond_19

    :cond_18
    :goto_f
    const/16 v35, 0x0

    goto/16 :goto_12

    .line 750
    :cond_19
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v11, v39, 0x2

    aget v11, v10, v11

    move-wide/from16 v43, v1

    int-to-double v1, v11

    const/16 v25, 0x0

    aget v10, v10, v25

    int-to-double v10, v10

    div-double/2addr v1, v10

    mul-double v1, v1, v1

    cmpl-double v10, v43, v1

    if-lez v10, :cond_1e

    const/4 v2, 0x1

    if-le v14, v2, :cond_1a

    add-int/lit8 v1, v14, -0x1

    .line 756
    aget-wide v1, v4, v1

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v29, v4, v14

    mul-double v10, v10, v29

    cmpg-double v4, v1, v10

    if-gez v4, :cond_1a

    add-int/lit8 v1, v14, -0x1

    move v14, v1

    .line 761
    :cond_1a
    aget-wide v29, v5, v14

    :goto_10
    const/16 v35, 0x0

    const/16 v36, 0x1

    goto :goto_12

    :cond_1b
    move-wide/from16 v43, v1

    move/from16 v14, v40

    const/4 v2, 0x1

    if-le v14, v2, :cond_1e

    if-nez v32, :cond_1e

    cmpg-double v1, v43, v41

    if-gtz v1, :cond_1c

    goto :goto_f

    .line 723
    :cond_1c
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v2, v1, v14

    move-object/from16 v40, v1

    int-to-double v1, v2

    add-int/lit8 v41, v14, 0x1

    aget v15, v40, v41

    move-wide/from16 v41, v1

    int-to-double v1, v15

    mul-double v1, v1, v41

    const/16 v25, 0x0

    aget v15, v40, v25

    mul-int v15, v15, v15

    move-wide/from16 v40, v1

    int-to-double v1, v15

    div-double v1, v40, v1

    mul-double v1, v1, v1

    cmpl-double v15, v43, v1

    if-lez v15, :cond_1e

    const/4 v2, 0x1

    if-le v6, v2, :cond_1d

    .line 731
    aget-wide v1, v4, v39

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    mul-double v14, v14, v10

    cmpg-double v4, v1, v14

    if-gez v4, :cond_1d

    move/from16 v2, v39

    goto :goto_11

    :cond_1d
    move v2, v6

    .line 736
    :goto_11
    aget-wide v29, v5, v2

    move v14, v2

    goto :goto_10

    :cond_1e
    :goto_12
    move-object/from16 v1, v19

    move/from16 v19, v14

    move-object v14, v1

    move-object v15, v3

    goto :goto_14

    :cond_1f
    :goto_13
    move-object v3, v15

    move/from16 v14, v40

    .line 694
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v12, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    move-object/from16 v1, v19

    move/from16 v19, v14

    move-object v14, v1

    move-object v15, v3

    move v2, v6

    move-object v6, v7

    move-object v3, v9

    move-object v11, v13

    move-object/from16 v13, v21

    goto/16 :goto_d

    :cond_20
    move/from16 v14, v40

    move-object/from16 v1, v19

    move/from16 v19, v14

    move-object v14, v1

    :goto_14
    move v2, v6

    move-object v6, v7

    move-object v3, v9

    move-object v11, v13

    move-object/from16 v13, v21

    move-object/from16 v7, v46

    move-object/from16 v10, v47

    const/4 v1, -0x1

    :goto_15
    move/from16 v21, v12

    goto/16 :goto_a

    :cond_21
    move/from16 v9, v19

    move-object/from16 v19, v14

    move v14, v9

    move/from16 v39, v2

    move-object v9, v3

    move-wide/from16 v41, v4

    move-object/from16 v46, v7

    move-object/from16 v47, v10

    move-object v3, v15

    move/from16 v12, v21

    move-object v7, v6

    move-object/from16 v21, v13

    move-object v13, v11

    if-nez v36, :cond_22

    .line 794
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v1, v4

    move-object v15, v3

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    goto :goto_16

    :cond_22
    move-object v15, v3

    move-object/from16 v3, v21

    .line 798
    :goto_16
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->getMaxStep()D

    move-result-wide v1

    if-nez v36, :cond_2d

    move/from16 v6, v39

    const/4 v4, 0x1

    :goto_17
    if-gt v4, v6, :cond_23

    const/4 v5, 0x0

    .line 803
    aget-object v10, v20, v5

    move-object/from16 v11, v47

    invoke-direct {v0, v5, v4, v11, v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_23
    move-object/from16 v11, v47

    mul-int/lit8 v4, v6, 0x2

    .line 806
    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x3

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v5, :cond_2b

    move-wide/from16 v39, v1

    .line 811
    div-int/lit8 v1, v10, 0x2

    .line 812
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v2, v2, v1

    move-object/from16 v21, v3

    int-to-double v2, v2

    mul-double v2, v2, v27

    invoke-static {v2, v3, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v2

    move-wide/from16 v43, v2

    .line 813
    aget-object v2, v16, v1

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v3, v19

    move-object/from16 v19, v8

    move-object v8, v3

    move/from16 v31, v2

    const/4 v3, 0x0

    .line 814
    :goto_19
    array-length v2, v8

    if-ge v3, v2, :cond_24

    add-int/lit8 v2, v10, 0x1

    .line 815
    aget-object v2, v20, v2

    aget-object v35, v16, v1

    add-int v45, v31, v10

    aget-object v35, v35, v45

    aget-wide v47, v35, v3

    mul-double v47, v47, v43

    aput-wide v47, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_24
    const/4 v2, 0x1

    :goto_1a
    sub-int v3, v6, v1

    if-gt v2, v3, :cond_26

    .line 818
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int v31, v2, v1

    aget v3, v3, v31

    move/from16 v35, v4

    int-to-double v3, v3

    mul-double v3, v3, v27

    invoke-static {v3, v4, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v3

    move-wide/from16 v43, v3

    .line 819
    aget-object v3, v16, v31

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    move/from16 v45, v3

    const/4 v4, 0x0

    .line 820
    :goto_1b
    array-length v3, v8

    if-ge v4, v3, :cond_25

    add-int/lit8 v3, v2, -0x1

    .line 821
    aget-object v3, v11, v3

    aget-object v47, v16, v31

    add-int v48, v45, v10

    aget-object v47, v47, v48

    aget-wide v48, v47, v4

    mul-double v47, v43, v48

    aput-wide v47, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_25
    add-int/lit8 v3, v10, 0x1

    .line 823
    aget-object v3, v20, v3

    invoke-direct {v0, v1, v2, v11, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v35

    goto :goto_1a

    :cond_26
    move/from16 v35, v4

    const/4 v1, 0x0

    .line 825
    :goto_1c
    array-length v2, v8

    if-ge v1, v2, :cond_27

    add-int/lit8 v2, v10, 0x1

    .line 826
    aget-object v2, v20, v2

    aget-wide v3, v2, v1

    move/from16 v31, v1

    move-object/from16 v43, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    mul-double v3, v3, v1

    aput-wide v3, v43, v31

    add-int/lit8 v1, v31, 0x1

    goto :goto_1c

    :cond_27
    add-int/lit8 v10, v10, 0x1

    .line 830
    div-int/lit8 v1, v10, 0x2

    :goto_1d
    if-gt v1, v6, :cond_2a

    .line 831
    aget-object v2, v16, v1

    array-length v2, v2

    const/16 v24, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    mul-int/lit8 v3, v10, 0x2

    if-lt v2, v3, :cond_29

    const/4 v3, 0x0

    .line 832
    :goto_1f
    array-length v4, v8

    if-ge v3, v4, :cond_28

    .line 833
    aget-object v4, v16, v1

    aget-object v31, v4, v2

    aget-wide v43, v31, v3

    add-int/lit8 v45, v2, -0x2

    aget-object v4, v4, v45

    aget-wide v47, v4, v3

    sub-double v43, v43, v47

    aput-wide v43, v31, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2a
    move-object/from16 v1, v19

    move-object/from16 v19, v8

    move-object v8, v1

    move-object/from16 v3, v21

    move/from16 v4, v35

    move-wide/from16 v1, v39

    goto/16 :goto_18

    :cond_2b
    move-object/from16 v21, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v21

    move-wide/from16 v39, v1

    move-object/from16 v21, v3

    move/from16 v35, v4

    if-ltz v5, :cond_2c

    .line 843
    move-object/from16 v1, v18

    check-cast v1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    .line 845
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-object/from16 v3, v18

    invoke-virtual {v3, v5, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->computeCoefficients(ID)V

    .line 847
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-eqz v1, :cond_2e

    .line 849
    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->estimateError([D)D

    move-result-wide v1

    .line 850
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-int/lit8 v10, v35, 0x7

    move-wide/from16 v39, v4

    int-to-double v4, v10

    div-double v4, v41, v4

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    move-wide/from16 v41, v1

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v4, v5, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    div-double v4, v39, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v10, v41, v4

    if-lez v10, :cond_2f

    move-wide/from16 v29, v1

    const/16 v36, 0x1

    goto :goto_21

    :cond_2c
    move-object/from16 v3, v18

    goto :goto_20

    :cond_2d
    move-object/from16 v6, v19

    move-object/from16 v19, v8

    move-object v8, v6

    move-object/from16 v21, v3

    move-object/from16 v3, v18

    move/from16 v6, v39

    move-object/from16 v11, v47

    move-wide/from16 v39, v1

    :cond_2e
    :goto_20
    move-wide/from16 v1, v39

    :cond_2f
    :goto_21
    if-nez v36, :cond_3c

    .line 865
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v39, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    move-wide/from16 v4, p2

    move-object v1, v3

    move-object/from16 v18, v9

    move-object v2, v15

    move-object/from16 v3, v21

    .line 866
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    .line 869
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 870
    array-length v2, v8

    const/4 v4, 0x0

    invoke-static {v15, v4, v7, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    array-length v2, v8

    move-object/from16 v9, v46

    invoke-static {v3, v4, v9, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    if-ne v6, v2, :cond_31

    move-object v5, v1

    move-object/from16 v21, v3

    if-eqz v32, :cond_30

    goto/16 :goto_24

    :cond_30
    const/4 v2, 0x2

    goto/16 :goto_24

    :cond_31
    if-gt v6, v14, :cond_34

    .line 882
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v5, v6, -0x1

    aget-wide v29, v4, v5

    move-object/from16 v21, v3

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v33, v4, v6

    mul-double v2, v2, v33

    cmpg-double v4, v29, v2

    if-gez v4, :cond_32

    move v2, v5

    :goto_22
    move-object v5, v1

    goto :goto_24

    .line 884
    :cond_32
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    mul-double v2, v2, v29

    cmpg-double v4, v33, v2

    if-gez v4, :cond_33

    add-int/lit8 v2, v6, 0x1

    .line 885
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    goto :goto_22

    :cond_33
    move-object v5, v1

    move v2, v6

    goto :goto_24

    :cond_34
    move-object/from16 v21, v3

    add-int/lit8 v2, v6, -0x1

    const/4 v3, 0x2

    if-le v6, v3, :cond_35

    .line 889
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v4, v6, -0x2

    aget-wide v29, v3, v4

    move-object v5, v1

    move v10, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v33, v3, v10

    mul-double v1, v1, v33

    cmpg-double v3, v29, v1

    if-gez v3, :cond_36

    move v2, v4

    goto :goto_23

    :cond_35
    move-object v5, v1

    move v10, v2

    :cond_36
    move v2, v10

    .line 893
    :goto_23
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v3, v1, v6

    move-object/from16 v29, v1

    move v10, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    aget-wide v30, v29, v10

    mul-double v1, v1, v30

    cmpg-double v29, v3, v1

    if-gez v29, :cond_37

    .line 894
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    const/16 v26, 0x2

    add-int/lit8 v1, v1, -0x2

    invoke-static {v6, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    goto :goto_24

    :cond_37
    const/16 v26, 0x2

    move v2, v10

    :goto_24
    if-eqz v32, :cond_38

    .line 901
    invoke-static {v2, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 902
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    move-object v10, v5

    aget-wide v5, v1, v2

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    move-wide/from16 v29, v3

    const/4 v4, 0x0

    goto :goto_26

    :cond_38
    move-object v10, v5

    if-gt v2, v6, :cond_39

    .line 906
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v3, v1, v2

    move v5, v2

    move-wide v1, v3

    const/4 v4, 0x0

    goto :goto_25

    :cond_39
    if-ge v6, v14, :cond_3a

    .line 908
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v3, v1, v6

    move-object v14, v1

    move v5, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    add-int/lit8 v29, v6, -0x1

    aget-wide v29, v14, v29

    mul-double v1, v1, v29

    cmpg-double v14, v3, v1

    if-gez v14, :cond_3b

    .line 910
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v2, v1, v6

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v4, v5, 0x1

    aget v4, v1, v4

    move-wide/from16 v29, v2

    move-object v3, v1

    int-to-double v1, v4

    mul-double v1, v1, v29

    aget v3, v3, v6

    int-to-double v3, v3

    div-double/2addr v1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v12, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    goto :goto_25

    :cond_3a
    move v5, v2

    .line 913
    :cond_3b
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v2, v1, v6

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v4, v1, v5

    move-wide/from16 v29, v2

    move-object v3, v1

    int-to-double v1, v4

    mul-double v1, v1, v29

    aget v3, v3, v6

    int-to-double v3, v3

    div-double/2addr v1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v12, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    :goto_25
    move-wide/from16 v29, v1

    move v2, v5

    :goto_26
    move/from16 v25, v2

    move-wide/from16 v1, v39

    const/4 v3, 0x1

    const/4 v14, 0x1

    goto :goto_27

    :cond_3c
    move-object v10, v3

    move-object/from16 v18, v9

    move-object/from16 v9, v46

    const/4 v4, 0x0

    move/from16 v25, v14

    move/from16 v14, v33

    move/from16 v3, v34

    :goto_27
    move-wide/from16 v5, v29

    .line 926
    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    if-nez v12, :cond_3d

    neg-double v1, v1

    :cond_3d
    if-eqz v36, :cond_3e

    .line 934
    iput-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    const/16 v32, 0x1

    goto :goto_28

    :cond_3e
    const/16 v32, 0x0

    .line 940
    :goto_28
    iget-boolean v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v5, :cond_3f

    .line 943
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 944
    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 946
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->resetInternalState()V

    return-void

    :cond_3f
    move-object/from16 v5, p1

    move-wide v4, v1

    move v1, v3

    move-object v6, v7

    move-object v3, v8

    move-object v7, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v18

    move-object/from16 v8, v19

    move/from16 v19, v25

    move-wide/from16 v29, v37

    const/16 v31, 0x0

    move-object/from16 v18, v10

    move-object v10, v11

    move-object v11, v13

    move-object/from16 v13, v21

    move/from16 v21, v12

    goto/16 :goto_5
.end method

.method public setControlFactors(DDDD)V
    .locals 5

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_1

    cmpl-double v4, p1, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide p1, 0x3fe4cccccccccccdL    # 0.65

    .line 264
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    :goto_1
    cmpg-double p1, p3, v2

    if-ltz p1, :cond_3

    cmpl-double p1, p3, v0

    if-lez p1, :cond_2

    goto :goto_2

    .line 272
    :cond_2
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    goto :goto_3

    :cond_3
    :goto_2
    const-wide p1, 0x3fee147ae147ae14L    # 0.94

    .line 270
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    :goto_3
    cmpg-double p1, p5, v2

    if-ltz p1, :cond_5

    cmpl-double p1, p5, v0

    if-lez p1, :cond_4

    goto :goto_4

    .line 278
    :cond_4
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    goto :goto_5

    :cond_5
    :goto_4
    const-wide p1, 0x3f947ae147ae147bL    # 0.02

    .line 276
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    :goto_5
    const-wide p1, 0x3ff00068db8bac71L    # 1.0001

    cmpg-double p3, p7, p1

    if-ltz p3, :cond_7

    const-wide p1, 0x408f3f3333333333L    # 999.9

    cmpl-double p3, p7, p1

    if-lez p3, :cond_6

    goto :goto_6

    .line 284
    :cond_6
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    return-void

    :cond_7
    :goto_6
    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    .line 282
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    return-void
.end method

.method public setInterpolationControl(ZI)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-lez p2, :cond_1

    const/4 p1, 0x7

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 415
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    return-void
.end method

.method public setOrderControl(IDD)V
    .locals 4

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    .line 315
    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x12

    .line 316
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    :cond_1
    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p2, v2

    if-ltz p1, :cond_3

    cmpl-double p1, p2, v0

    if-lez p1, :cond_2

    goto :goto_0

    .line 322
    :cond_2
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    goto :goto_1

    :cond_3
    :goto_0
    const-wide p1, 0x3fe999999999999aL    # 0.8

    .line 320
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    :goto_1
    cmpg-double p1, p4, v2

    if-ltz p1, :cond_5

    cmpl-double p1, p4, v0

    if-lez p1, :cond_4

    goto :goto_2

    .line 328
    :cond_4
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    goto :goto_3

    :cond_5
    :goto_2
    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 326
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    .line 332
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public setStabilityCheck(ZIID)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-gtz p2, :cond_0

    const/4 p2, 0x2

    .line 225
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-gtz p3, :cond_1

    const/4 p3, 0x1

    .line 226
    :cond_1
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    const-wide p1, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p3, p4, p1

    if-ltz p3, :cond_3

    const-wide p1, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double p3, p4, p1

    if-lez p3, :cond_2

    goto :goto_0

    .line 231
    :cond_2
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    return-void

    :cond_3
    :goto_0
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    .line 229
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    return-void
.end method
