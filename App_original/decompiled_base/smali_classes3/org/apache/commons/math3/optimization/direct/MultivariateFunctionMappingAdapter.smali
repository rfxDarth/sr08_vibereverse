.class public Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;
.super Ljava/lang/Object;
.source "MultivariateFunctionMappingAdapter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$UpperBoundMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$NoBoundsMapper;,
        Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field private final mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[D)V
    .locals 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 110
    aget-wide v2, p3, v1

    aget-wide v4, p2, v1

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    aget-wide v2, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aget-wide v0, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 115
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 116
    array-length p1, p2

    new-array p1, p1, [Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    .line 117
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length p1, p1

    if-ge v0, p1, :cond_5

    .line 118
    aget-wide v1, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 119
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v1, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$NoBoundsMapper;

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$NoBoundsMapper;-><init>()V

    aput-object v1, p1, v0

    goto :goto_2

    .line 124
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v1, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$UpperBoundMapper;

    aget-wide v2, p3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$UpperBoundMapper;-><init>(D)V

    aput-object v1, p1, v0

    goto :goto_2

    .line 127
    :cond_3
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 129
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v1, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;

    aget-wide v2, p2, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerBoundMapper;-><init>(D)V

    aput-object v1, p1, v0

    goto :goto_2

    .line 132
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    new-instance v1, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;

    aget-wide v2, p2, v0

    aget-wide v4, p3, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$LowerUpperBoundMapper;-><init>(DD)V

    aput-object v1, p1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void

    .line 106
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p3, p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method


# virtual methods
.method public boundedToUnbounded([D)[D
    .locals 5

    .line 162
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 163
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 164
    aget-object v2, v2, v1

    aget-wide v3, p1, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;->boundedToUnbounded(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public unboundedToBounded([D)[D
    .locals 5

    .line 146
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 147
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->mappers:[Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 148
    aget-object v2, v2, v1

    aget-wide v3, p1, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$Mapper;->unboundedToBounded(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public value([D)D
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->bounded:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;->unboundedToBounded([D)[D

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method
