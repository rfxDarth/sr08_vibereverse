.class public Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;
.super Ljava/lang/Object;
.source "JacobianFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 10

    .line 47
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 48
    :goto_0
    array-length v2, p1

    if-ge v5, v2, :cond_0

    .line 49
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v3, p1

    const/4 v4, 0x1

    aget-wide v6, p1, v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    .line 56
    array-length v2, v0

    array-length v3, p1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 57
    array-length v3, p1

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 58
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    .line 59
    :goto_2
    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 60
    aput v5, v3, v6

    .line 61
    aget-object v7, v2, v4

    aget-object v8, v0, v4

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 62
    aput v1, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method
