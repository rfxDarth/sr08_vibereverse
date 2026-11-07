.class public Lorg/apache/commons/math3/ode/FirstOrderConverter;
.super Ljava/lang/Object;
.source "FirstOrderConverter.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# instance fields
.field private final dimension:I

.field private final equations:Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;

.field private final z:[D

.field private final zDDot:[D

.field private final zDot:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->equations:Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;

    .line 80
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;->getDimension()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    .line 81
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->z:[D

    .line 82
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    .line 83
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDDot:[D

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 9

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->z:[D

    iget v1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    invoke-static {p3, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v3, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->equations:Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;

    iget-object v6, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->z:[D

    iget-object v7, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDDot:[D

    move-wide v4, p1

    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/math3/ode/SecondOrderDifferentialEquations;->computeSecondDerivatives(D[D[D[D)V

    .line 110
    iget-object p1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDot:[D

    iget p2, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    invoke-static {p1, v2, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-object p1, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->zDDot:[D

    iget p2, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    invoke-static {p1, v2, p4, p2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getDimension()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/commons/math3/ode/FirstOrderConverter;->dimension:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
