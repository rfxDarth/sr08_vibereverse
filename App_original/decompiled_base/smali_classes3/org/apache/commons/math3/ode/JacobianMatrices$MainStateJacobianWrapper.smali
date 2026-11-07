.class Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/MainStateJacobianProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainStateJacobianWrapper"
.end annotation


# instance fields
.field private final hY:[D

.field private final ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 439
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    .line 440
    array-length v0, p2

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 441
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;)Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .locals 0

    .line 421
    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-object p0
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    return-void
.end method

.method public computeMainStateJacobian(D[D[D[[D)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 460
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    .line 461
    new-array v3, v2, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 464
    aget-wide v6, v1, v5

    .line 465
    iget-object v8, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    aget-wide v9, v8, v5

    add-double/2addr v9, v6

    aput-wide v9, v1, v5

    .line 466
    iget-object v8, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-wide/from16 v9, p1

    invoke-interface {v8, v9, v10, v1, v3}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_0

    .line 468
    aget-object v11, p5, v8

    aget-wide v12, v3, v8

    aget-wide v14, p4, v8

    sub-double/2addr v12, v14

    iget-object v14, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    aget-wide v15, v14, v5

    div-double/2addr v12, v15

    aput-wide v12, v11, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 470
    :cond_0
    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDimension()I
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    return v0
.end method
