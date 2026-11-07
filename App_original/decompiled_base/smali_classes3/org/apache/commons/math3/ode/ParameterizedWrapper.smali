.class Lorg/apache/commons/math3/ode/ParameterizedWrapper;
.super Ljava/lang/Object;
.source "ParameterizedWrapper.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/ParameterizedODE;


# instance fields
.field private final fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-void
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

    .line 59
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    return-void
.end method

.method public getDimension()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->fode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/ParameterizedWrapper;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 76
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setParameter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method
