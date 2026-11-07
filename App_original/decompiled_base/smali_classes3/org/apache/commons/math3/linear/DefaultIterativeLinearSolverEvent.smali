.class public Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;
.super Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
.source "DefaultIterativeLinearSolverEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1330241L


# instance fields
.field private final b:Lorg/apache/commons/math3/linear/RealVector;

.field private final r:Lorg/apache/commons/math3/linear/RealVector;

.field private final rnorm:D

.field private final x:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;-><init>(Ljava/lang/Object;I)V

    .line 94
    iput-object p3, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    .line 95
    iput-object p4, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    .line 97
    iput-wide p5, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;-><init>(Ljava/lang/Object;I)V

    .line 67
    iput-object p3, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    .line 68
    iput-object p4, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 69
    iput-object p5, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    .line 70
    iput-wide p6, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    return-void
.end method


# virtual methods
.method public getNormOfResidual()D
    .locals 2

    .line 103
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    return-wide v0
.end method

.method public getResidual()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz v0, :cond_0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRightHandSideVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getSolution()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public providesResidual()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
