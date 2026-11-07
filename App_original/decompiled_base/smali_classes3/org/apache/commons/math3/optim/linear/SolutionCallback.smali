.class public Lorg/apache/commons/math3/optim/linear/SolutionCallback;
.super Ljava/lang/Object;
.source "SolutionCallback.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private tableau:Lorg/apache/commons/math3/optim/linear/SimplexTableau;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSolution()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->tableau:Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSolutionOptimal()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->tableau:Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setTableau(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->tableau:Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    return-void
.end method
