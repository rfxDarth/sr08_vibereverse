.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;
.super Ljava/lang/Object;
.source "PolynomialFunctionNewtonForm.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# instance fields
.field private final a:[D

.field private final c:[D

.field private coefficients:[D

.field private coefficientsComputed:Z


# direct methods
.method public constructor <init>([D[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 83
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    .line 84
    array-length v1, p2

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    .line 85
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    array-length p1, p2

    invoke-static {p2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-boolean v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    return-void
.end method

.method public static evaluate([D[DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 184
    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 186
    array-length v0, p1

    .line 187
    aget-wide v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 189
    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    sub-double v5, p2, v5

    mul-double v5, v5, v1

    add-double v1, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method protected static verifyInputArray([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 235
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 236
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 237
    array-length v0, p0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 240
    array-length v0, p0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v0

    .line 238
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method


# virtual methods
.method protected computeCoefficients()V
    .locals 12

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->degree()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 202
    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_0

    .line 204
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v4, v3, v0

    aput-wide v4, v2, v1

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_2

    sub-int v3, v0, v2

    :goto_2
    if-lez v3, :cond_1

    .line 210
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    add-int/lit8 v5, v3, -0x1

    aget-wide v5, v4, v5

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v8, v7, v2

    aget-wide v10, v4, v3

    mul-double v8, v8, v10

    sub-double/2addr v5, v8

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 212
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v5, v4, v2

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v7, v4, v2

    aget-wide v9, v3, v1

    mul-double v7, v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    return-void
.end method

.method public degree()I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v0, v0

    return v0
.end method

.method public getCenters()[D
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v1, v0

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 148
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getCoefficients()[D
    .locals 4

    .line 160
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->computeCoefficients()V

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    array-length v1, v0

    new-array v1, v1, [D

    .line 164
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getNewtonCoefficients()[D
    .locals 4

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    array-length v1, v0

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 135
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public value(D)D
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->evaluate([D[DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7

    .line 105
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 107
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v0, v0

    .line 108
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v5, v4, v0

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 110
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v3, v2, v0

    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
