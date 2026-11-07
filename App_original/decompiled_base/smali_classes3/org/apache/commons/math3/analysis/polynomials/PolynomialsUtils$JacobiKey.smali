.class Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;
.super Ljava/lang/Object;
.source "PolynomialsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JacobiKey"
.end annotation


# instance fields
.field private final v:I

.field private final w:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    .line 270
    iput p2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 288
    instance-of v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    if-nez v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    check-cast p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;

    .line 293
    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    iget v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    iget p1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 278
    iget v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->v:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialsUtils$JacobiKey;->w:I

    xor-int/2addr v0, v1

    return v0
.end method
