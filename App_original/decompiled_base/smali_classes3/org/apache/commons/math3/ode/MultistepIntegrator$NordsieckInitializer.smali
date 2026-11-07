.class Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;
.super Ljava/lang/Object;
.source "MultistepIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NordsieckInitializer"
.end annotation


# instance fields
.field private count:I

.field private final t:[D

.field final synthetic this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

.field private final y:[[D

.field private final yDot:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;II)V
    .locals 4

    .line 359
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 360
    iput p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    .line 361
    new-array v0, p2, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    const/4 v0, 0x2

    .line 362
    new-array v1, v0, [I

    const/4 v2, 0x1

    aput p3, v1, v2

    aput p2, v1, p1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    .line 363
    new-array v0, v0, [I

    aput p3, v0, v2

    aput p2, v0, p1

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 370
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    .line 371
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    .line 373
    iget p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    const/4 v4, 0x0

    if-nez p2, :cond_0

    .line 375
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 376
    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    aput-wide v0, p2, v4

    .line 377
    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object p2

    .line 378
    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    .line 379
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v1, v5}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 380
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v1, v5}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 382
    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v6, p2, v1

    .line 383
    invoke-interface {p1, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget v9, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 384
    invoke-interface {p1, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v9, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    iget p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    .line 391
    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 392
    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    iget v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aput-wide v2, p2, v0

    .line 394
    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object p2

    .line 395
    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    .line 396
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 397
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 399
    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    .line 400
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget v7, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 401
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    iget v7, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    aget-object v6, v6, v7

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 405
    :cond_1
    iget p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->count:I

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 408
    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    aget-wide v0, p2, v4

    iput-wide v0, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepStart:D

    .line 409
    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p2, v0

    aget-wide v2, p2, v4

    sub-double/2addr v0, v2

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    int-to-double v2, p2

    div-double/2addr v0, v2

    iput-wide v0, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    .line 412
    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    aget-object p2, p2, v4

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    iput-object p2, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    .line 413
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object p1, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    array-length p1, p1

    if-ge v4, p1, :cond_2

    .line 414
    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object p1, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    aget-wide v0, p1, v4

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-wide v2, p2, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    mul-double v0, v0, v2

    aput-wide v0, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 418
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->this$0:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-wide v6, v5, Lorg/apache/commons/math3/ode/MultistepIntegrator;->stepSize:D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->t:[D

    iget-object v9, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->y:[[D

    iget-object v10, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;->yDot:[[D

    invoke-virtual/range {v5 .. v10}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p1

    iput-object p1, v5, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 421
    new-instance p1, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;

    invoke-direct {p1}, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public init(D[DD)V
    .locals 0

    return-void
.end method
