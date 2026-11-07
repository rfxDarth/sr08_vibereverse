.class public Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;
.super Lorg/apache/commons/math3/optimization/fitting/CurveFitter;
.source "PolynomialFitter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/fitting/CurveFitter<",
        "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final degree:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V

    .line 53
    iput p1, p0, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->degree:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/CurveFitter;-><init>(Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->degree:I

    return-void
.end method


# virtual methods
.method public fit()[D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    iget v1, p0, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->degree:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object v0

    return-object v0
.end method

.method public fit(I[D)[D
    .locals 1

    .line 95
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->fit(ILorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p1

    return-object p1
.end method

.method public fit([D)[D
    .locals 1

    .line 110
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/optimization/fitting/PolynomialFitter;->fit(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)[D

    move-result-object p1

    return-object p1
.end method
