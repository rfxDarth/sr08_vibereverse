.class final Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$RecurrenceCoefficientsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;->createJacobiPolynomial(III)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$v:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 235
    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(I)[Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 9

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 239
    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int/2addr v1, v2

    add-int v2, v1, p1

    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v4, v2, -0x2

    mul-int/lit8 v5, p1, 0x2

    mul-int v5, v5, v1

    mul-int v5, v5, v4

    const/4 v1, 0x3

    .line 245
    new-array v1, v1, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v7, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    mul-int v7, v7, v7

    iget v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    mul-int v8, v8, v8

    sub-int/2addr v7, v8

    mul-int v7, v7, v3

    invoke-direct {v6, v7, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    const/4 v7, 0x0

    aput-object v6, v1, v7

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    mul-int v3, v3, v2

    mul-int v3, v3, v4

    invoke-direct {v6, v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v6, v1, v0

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    iget v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$v:I

    add-int/2addr v4, p1

    sub-int/2addr v4, v0

    const/4 v6, 0x2

    mul-int/lit8 v4, v4, 0x2

    iget v7, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$5;->val$w:I

    add-int/2addr p1, v7

    sub-int/2addr p1, v0

    mul-int v4, v4, p1

    mul-int v4, v4, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    aput-object v3, v1, v6

    return-object v1
.end method
