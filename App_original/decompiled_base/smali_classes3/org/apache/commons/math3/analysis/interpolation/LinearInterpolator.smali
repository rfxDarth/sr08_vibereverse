.class public Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;
.super Ljava/lang/Object;
.source "LinearInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 50
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    .line 54
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 60
    array-length v0, p1

    sub-int/2addr v0, v2

    .line 62
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 65
    new-array v3, v0, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 67
    aget-wide v7, p2, v6

    aget-wide v9, p2, v5

    sub-double/2addr v7, v9

    aget-wide v9, p1, v6

    aget-wide v11, p1, v5

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    aput-wide v7, v3, v5

    move v5, v6

    goto :goto_0

    .line 70
    :cond_0
    new-array v5, v0, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_1

    .line 73
    aget-wide v7, p2, v6

    .line 74
    aget-wide v9, v3, v6

    new-array v11, v1, [D

    aput-wide v7, v11, v4

    aput-wide v9, v11, v2

    .line 75
    new-instance v7, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v7, v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 78
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {p2, p1, v5}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object p2

    .line 55
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 51
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method
