.class public Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "MultiDimensionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# instance fields
.field private final expected:[Ljava/lang/Integer;

.field private final wrong:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p2}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    .line 61
    invoke-virtual {p3}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;[Ljava/lang/Integer;)V
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getExpectedDimension(I)I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getExpectedDimensions()[Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    invoke-virtual {v0}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public getWrongDimension(I)I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getWrongDimensions()[Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    invoke-virtual {v0}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method
