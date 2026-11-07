.class public Lorg/apache/commons/math3/analysis/function/Logistic;
.super Ljava/lang/Object;
.source "Logistic.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
    }
.end annotation


# instance fields
.field private final a:D

.field private final b:D

.field private final k:D

.field private final m:D

.field private final oneOverN:D

.field private final q:D


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p11, v0

    if-lez v2, :cond_0

    .line 76
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->k:D

    .line 77
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->m:D

    .line 78
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->b:D

    .line 79
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->q:D

    .line 80
    iput-wide p9, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, p11

    .line 81
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->oneOverN:D

    return-void

    .line 73
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p11, p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method static synthetic access$000(DDDDDD)D
    .locals 0

    .line 38
    invoke-static/range {p0 .. p11}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static value(DDDDDD)D
    .locals 0

    sub-double/2addr p2, p8

    mul-double p4, p4, p0

    .line 219
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    mul-double p6, p6, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p6, p0

    invoke-static {p6, p7, p10, p11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p0

    div-double/2addr p2, p0

    add-double/2addr p8, p2

    return-wide p8
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 14

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->m:D

    sub-double v2, v0, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->k:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->b:D

    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->q:D

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    iget-wide v12, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->oneOverN:D

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/analysis/function/Logistic;->value(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 226
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->m:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->b:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->exp()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->q:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->oneOverN:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->reciprocal()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->k:D

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    sub-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->a:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method
