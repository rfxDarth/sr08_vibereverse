.class public Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;
.super Ljava/lang/Object;
.source "UnivariatePeriodicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field public static final DEFAULT_EXTEND:I = 0x5


# instance fields
.field private final extend:I

.field private final interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private final period:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;D)V
    .locals 1

    const/4 v0, 0x5

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;DI)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 62
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    .line 63
    iput p4, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;)D
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    return-wide v0
.end method


# virtual methods
.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 88
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 92
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    const/4 v0, 0x0

    .line 93
    aget-wide v7, p1, v0

    .line 95
    array-length v1, p1

    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 96
    new-array v9, v1, [D

    .line 97
    new-array v10, v1, [D

    const/4 v11, 0x0

    .line 98
    :goto_0
    array-length v3, p1

    if-ge v11, v3, :cond_0

    .line 99
    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    add-int v12, v11, v3

    .line 100
    aget-wide v3, p1, v11

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v3

    aput-wide v3, v9, v12

    .line 101
    aget-wide v3, p2, v11

    aput-wide v3, v10, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 105
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    if-ge v11, v3, :cond_1

    .line 106
    array-length v4, p1

    sub-int/2addr v4, v3

    add-int v12, v4, v11

    .line 107
    aget-wide v3, p1, v12

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    sub-double/2addr v3, v5

    aput-wide v3, v9, v11

    .line 108
    aget-wide v3, p2, v12

    aput-wide v3, v10, v11

    .line 110
    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    sub-int v3, v1, v3

    add-int v12, v3, v11

    .line 111
    aget-wide v3, p1, v11

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->period:D

    add-double/2addr v3, v5

    aput-wide v3, v9, v12

    .line 112
    aget-wide v3, p2, v11

    aput-wide v3, v10, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 115
    :cond_1
    new-array p1, v2, [[D

    aput-object v10, p1, v0

    invoke-static {v9, p1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 117
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolator:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {p1, v9, v10}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p1

    .line 118
    new-instance p2, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;

    invoke-direct {p2, p0, p1, v7, v8}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)V

    return-object p2

    .line 89
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->extend:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, v0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method
