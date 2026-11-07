.class public Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
.super Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
.source "NonPositiveDefiniteMatrixException.java"


# static fields
.field private static final serialVersionUID:J = 0x16c82f168f228d4dL


# instance fields
.field private final index:I

.field private final threshold:D


# direct methods
.method public constructor <init>(DID)V
    .locals 3

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 48
    iput p3, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    .line 49
    iput-wide p4, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->threshold:D

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p4

    .line 52
    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_DEFINITE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p4, p5, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 53
    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const/4 p1, 0x1

    aput-object p2, p3, p1

    invoke-virtual {p4, p5, p3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    return v0
.end method

.method public getThreshold()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->threshold:D

    return-wide v0
.end method
