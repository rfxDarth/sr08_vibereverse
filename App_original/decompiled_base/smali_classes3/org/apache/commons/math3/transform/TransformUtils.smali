.class public Lorg/apache/commons/math3/transform/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# static fields
.field private static final POWERS_OF_TWO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    .line 38
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/transform/TransformUtils;->POWERS_OF_TWO:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComplexArray([[D)[Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 127
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 130
    aget-object v1, p0, v0

    const/4 v2, 0x1

    .line 131
    aget-object p0, p0, v2

    .line 132
    array-length v2, v1

    array-length v3, p0

    if-ne v2, v3, :cond_1

    .line 136
    array-length v2, v1

    .line 137
    new-array v3, v2, [Lorg/apache/commons/math3/complex/Complex;

    :goto_0
    if-ge v0, v2, :cond_0

    .line 139
    new-instance v4, Lorg/apache/commons/math3/complex/Complex;

    aget-wide v5, v1, v0

    aget-wide v7, p0, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    .line 133
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 128
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static createRealImaginaryArray([Lorg/apache/commons/math3/complex/Complex;)[[D
    .locals 7

    .line 99
    array-length v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 100
    aget-object v2, v1, v0

    .line 101
    aget-object v3, v1, v3

    .line 102
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 103
    aget-object v4, p0, v0

    .line 104
    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v5

    aput-wide v5, v2, v0

    .line 105
    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static exactLog2(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 156
    sget-object v0, Lorg/apache/commons/math3/transform/TransformUtils;->POWERS_OF_TWO:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 158
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static scaleArray([DD)[D
    .locals 3

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 63
    aget-wide v1, p0, v0

    mul-double v1, v1, p1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static scaleArray([Lorg/apache/commons/math3/complex/Complex;D)[Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    const/4 v0, 0x0

    .line 78
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 79
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    mul-double v2, v2, p1

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    mul-double v4, v4, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
