.class public Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;
.super Ljava/lang/Object;
.source "GradientFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 8

    .line 45
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 46
    :goto_0
    array-length v2, p1

    if-ge v5, v2, :cond_0

    .line 47
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v3, p1

    const/4 v4, 0x1

    aget-wide v6, p1, v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 54
    array-length v2, p1

    new-array v2, v2, [D

    .line 55
    array-length v3, p1

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 56
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    const/4 v5, 0x1

    .line 57
    aput v5, v3, v4

    .line 58
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 59
    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method
