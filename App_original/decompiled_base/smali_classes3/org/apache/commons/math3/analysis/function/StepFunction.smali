.class public Lorg/apache/commons/math3/analysis/function/StepFunction;
.super Ljava/lang/Object;
.source "StepFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# instance fields
.field private final abscissa:[D

.field private final ordinate:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 69
    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    .line 73
    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 78
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->abscissa:[D

    .line 79
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    return-void

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 71
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 67
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public value(D)D
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->abscissa:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result p1

    const/4 p2, -0x1

    if-ge p1, p2, :cond_0

    .line 89
    iget-object p2, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    aget-wide p1, p2, p1

    return-wide p1

    :cond_0
    if-ltz p1, :cond_1

    .line 92
    iget-object p2, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    aget-wide p1, p2, p1

    return-wide p1

    .line 96
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->ordinate:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    return-wide v0
.end method
