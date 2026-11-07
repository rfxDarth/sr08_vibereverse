.class final Lorg/apache/commons/math3/analysis/FunctionUtils$14;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$14;->val$f:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 463
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$14$1;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$14;)V

    return-object v0
.end method

.method public value(D)D
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$14;->val$f:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(D)D

    move-result-wide p1

    return-wide p1
.end method
