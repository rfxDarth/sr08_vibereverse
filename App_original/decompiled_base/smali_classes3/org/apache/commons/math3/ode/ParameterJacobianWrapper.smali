.class Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;
.super Ljava/lang/Object;
.source "ParameterJacobianWrapper.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/ParameterJacobianProvider;


# instance fields
.field private final fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

.field private final hParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final pode:Lorg/apache/commons/math3/ode/ParameterizedODE;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V
    .locals 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    .line 58
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p3, v0

    .line 59
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-interface {p2, v2}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getHP()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public computeParameterJacobian(D[D[DLjava/lang/String;[D)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 81
    iget-object v2, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v2

    .line 82
    iget-object v3, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 83
    new-array v3, v2, [D

    .line 86
    iget-object v5, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/ode/ParameterizedODE;->getParameter(Ljava/lang/String;)D

    move-result-wide v5

    .line 87
    iget-object v7, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->hParam:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 88
    iget-object v9, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    add-double v10, v5, v7

    invoke-interface {v9, v0, v10, v11}, Lorg/apache/commons/math3/ode/ParameterizedODE;->setParameter(Ljava/lang/String;D)V

    .line 89
    iget-object v9, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v9, p1, p2, p3, v3}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    :goto_0
    if-ge v4, v2, :cond_0

    .line 91
    aget-wide p1, v3, v4

    aget-wide v9, p4, v4

    sub-double/2addr p1, v9

    div-double/2addr p1, v7

    aput-wide p1, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {p1, v0, v5, v6}, Lorg/apache/commons/math3/ode/ParameterizedODE;->setParameter(Ljava/lang/String;D)V

    return-void

    :cond_1
    const-wide/16 p1, 0x0

    .line 95
    invoke-static {v1, v4, v2, p1, p2}, Ljava/util/Arrays;->fill([DIID)V

    return-void
.end method

.method public getParametersNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/ParameterizedODE;->getParametersNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/ParameterizedODE;->isSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
