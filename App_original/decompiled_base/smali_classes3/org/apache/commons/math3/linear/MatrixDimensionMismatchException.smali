.class public Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;
.source "MatrixDimensionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# direct methods
.method public constructor <init>(IIII)V
    .locals 4

    .line 45
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_2x2:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Integer;

    aput-object p2, p4, v3

    aput-object p3, p4, p1

    invoke-direct {p0, v0, v2, p4}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getExpectedColumnDimension()I
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getExpectedDimension(I)I

    move-result v0

    return v0
.end method

.method public getExpectedRowDimension()I
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getExpectedDimension(I)I

    move-result v0

    return v0
.end method

.method public getWrongColumnDimension()I
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getWrongDimension(I)I

    move-result v0

    return v0
.end method

.method public getWrongRowDimension()I
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;->getWrongDimension(I)I

    move-result v0

    return v0
.end method
