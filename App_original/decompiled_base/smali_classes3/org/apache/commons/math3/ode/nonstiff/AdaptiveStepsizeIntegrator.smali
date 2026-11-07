.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "AdaptiveStepsizeIntegrator.java"


# instance fields
.field private initialStep:D

.field protected mainSetDimension:I

.field private maxStep:D

.field private minStep:D

.field protected scalAbsoluteTolerance:D

.field protected scalRelativeTolerance:D

.field protected vecAbsoluteTolerance:[D

.field protected vecRelativeTolerance:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDD)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    .line 111
    invoke-virtual/range {p1 .. p9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DDDD)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD[D[D)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    .line 134
    invoke-virtual/range {p1 .. p7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DD[D[D)V

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void
.end method


# virtual methods
.method protected filterStep(DZZ)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 325
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    neg-double p1, v2

    goto :goto_0

    .line 329
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p3, p4, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3

    .line 334
    :cond_2
    :goto_0
    iget-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    cmpl-double v0, p1, p3

    if-lez v0, :cond_3

    return-wide p3

    :cond_3
    neg-double v0, p3

    cmpg-double v2, p1, v0

    if-gez v2, :cond_4

    neg-double p1, p3

    :cond_4
    return-wide p1
.end method

.method public getCurrentStepStart()D
    .locals 2

    .line 353
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getMaxStep()D
    .locals 2

    .line 373
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    return-wide v0
.end method

.method public getMinStep()D
    .locals 2

    .line 366
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    return-wide v0
.end method

.method public initializeStep(ZI[DD[D[D[D[D)D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    .line 253
    iget-wide v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    if-eqz p1, :cond_0

    return-wide v5

    :cond_0
    neg-double v1, v5

    return-wide v1

    :cond_1
    move-wide v9, v7

    move-wide v11, v9

    const/4 v6, 0x0

    .line 263
    :goto_0
    array-length v13, v1

    if-ge v6, v13, :cond_2

    .line 264
    aget-wide v13, v2, v6

    aget-wide v15, v1, v6

    div-double/2addr v13, v15

    mul-double v13, v13, v13

    add-double/2addr v9, v13

    .line 266
    aget-wide v13, p7, v6

    div-double/2addr v13, v15

    mul-double v13, v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v16, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v18, v9, v16

    if-ltz v18, :cond_4

    cmpg-double v18, v11, v16

    if-gez v18, :cond_3

    goto :goto_1

    :cond_3
    div-double/2addr v9, v11

    .line 270
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double v9, v9, v13

    goto :goto_2

    :cond_4
    :goto_1
    move-wide v9, v5

    :goto_2
    if-nez p1, :cond_5

    neg-double v9, v9

    :cond_5
    const/4 v7, 0x0

    .line 277
    :goto_3
    array-length v8, v2

    if-ge v7, v8, :cond_6

    .line 278
    aget-wide v18, v2, v7

    aget-wide v20, p7, v7

    mul-double v20, v20, v9

    add-double v18, v18, v20

    aput-wide v18, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    add-double v7, p4, v9

    .line 280
    invoke-virtual {v0, v7, v8, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->computeDerivatives(D[D[D)V

    const-wide/16 v7, 0x0

    const/4 v15, 0x0

    .line 284
    :goto_4
    array-length v2, v1

    if-ge v15, v2, :cond_7

    .line 285
    aget-wide v2, v4, v15

    aget-wide v16, p7, v15

    sub-double v2, v2, v16

    aget-wide v16, v1, v15

    div-double v2, v2, v16

    mul-double v2, v2, v2

    add-double/2addr v7, v2

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 288
    :cond_7
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v1, v9

    .line 292
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v7, v1, v3

    if-gez v7, :cond_8

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    .line 293
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_5

    :cond_8
    div-double/2addr v13, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move/from16 v3, p2

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    :goto_5
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 296
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    .line 297
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 298
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_9

    .line 299
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v1

    .line 301
    :cond_9
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_a

    .line 302
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v1

    :cond_a
    if-nez p1, :cond_b

    neg-double v1, v1

    :cond_b
    return-wide v1
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method protected resetInternalState()V
    .locals 4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 358
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepStart:D

    .line 359
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepSize:D

    return-void
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 221
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 223
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    .line 225
    iget-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-eqz p2, :cond_1

    array-length p2, p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    array-length p3, p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 229
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    if-eqz p2, :cond_3

    array-length p2, p2

    if-ne p2, p1, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    array-length p3, p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public setInitialStepSize(D)V
    .locals 3

    .line 209
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    return-void

    :cond_1
    :goto_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 210
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    return-void
.end method

.method public setStepSizeControl(DDDD)V
    .locals 0

    .line 157
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    .line 158
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 159
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    .line 161
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 162
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 164
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    return-void
.end method

.method public setStepSizeControl(DD[D[D)V
    .locals 0

    .line 186
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    .line 187
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 188
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    const-wide/16 p1, 0x0

    .line 190
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 191
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    .line 192
    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 193
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    return-void
.end method
