.class public Lorg/apache/commons/math3/ode/sampling/StepNormalizer;
.super Ljava/lang/Object;
.source "StepNormalizer.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# instance fields
.field private final bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field private firstTime:D

.field private forward:Z

.field private h:D

.field private final handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

.field private lastDerivatives:[D

.field private lastState:[D

.field private lastTime:D

.field private final mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;)V
    .locals 6

    .line 127
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 6

    .line 152
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;)V
    .locals 6

    .line 140
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    .line 166
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    .line 167
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 168
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 169
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 170
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 172
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    return-void
.end method

.method private doNormalizedStep(Z)V
    .locals 11

    .line 278
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->firstIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    iget-object v9, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    move v10, p1

    invoke-interface/range {v5 .. v10}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->handleStep(D[D[DZ)V

    return-void
.end method

.method private isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 5

    .line 268
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    if-eqz v0, :cond_1

    cmpg-double p3, p1, v3

    if-gtz p3, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    cmpl-double p3, p1, v3

    if-ltz p3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 294
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 295
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 296
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object p2

    iget-object p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    array-length p3, p2

    invoke-static {p1, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 207
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 208
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 209
    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 210
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 211
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    .line 214
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    if-nez v0, :cond_1

    .line 216
    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    neg-double v3, v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v3, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v3, v5

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    mul-double v3, v3, v5

    .line 224
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v5, :cond_3

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-static {v3, v4, v5, v6, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v3, v5

    .line 230
    :cond_3
    invoke-direct {p0, v3, v4, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    .line 233
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    .line 236
    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    .line 239
    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v3, v5

    .line 240
    invoke-direct {p0, v3, v4, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v0

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    .line 247
    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->lastIncluded()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v5

    cmpl-double p2, v3, v5

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    xor-int/lit8 p2, v1, 0x1

    .line 249
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    if-eqz v1, :cond_6

    .line 251
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    .line 252
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    :cond_6
    return-void
.end method

.method public init(D[DD)V
    .locals 7

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 179
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 180
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 182
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    .line 186
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->init(D[DD)V

    return-void
.end method
