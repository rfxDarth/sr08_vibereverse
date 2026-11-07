.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;
.super Ljava/lang/Object;
.source "MicrosphereInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    }
.end annotation


# instance fields
.field private final brightnessExponent:D

.field private final dimension:I

.field private final microsphere:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final samples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([[D[DIILorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 158
    array-length v0, p1

    if-eqz v0, :cond_6

    .line 161
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 164
    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    .line 168
    array-length v1, v1

    iput v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    int-to-double v1, p3

    .line 169
    iput-wide v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->brightnessExponent:D

    .line 172
    new-instance p3, Ljava/util/HashMap;

    array-length v1, p2

    invoke-direct {p3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    const/4 p3, 0x0

    .line 173
    :goto_0
    array-length v1, p1

    if-ge p3, v1, :cond_2

    .line 174
    aget-object v1, p1, p3

    if-eqz v1, :cond_1

    .line 178
    array-length v2, v1

    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    if-ne v2, v3, :cond_0

    .line 182
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aget-wide v4, p2, p3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, v1

    iget p3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 176
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 185
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    :goto_1
    if-ge v0, p4, :cond_3

    .line 189
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    new-instance p2, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    invoke-virtual {p5}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->nextVector()[D

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;-><init>([D)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 165
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1

    .line 162
    :cond_5
    new-instance p3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p3

    .line 159
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 156
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private cosAngle(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 4

    .line 249
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide p1

    mul-double v2, v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public value([D)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 199
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 202
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 203
    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->reset()V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v3

    .line 213
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_2

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 219
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 220
    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->brightnessExponent:D

    neg-double v7, v7

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    .line 221
    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->normal()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v9

    invoke-direct {p0, v2, v9}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->cosAngle(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v9

    mul-double v9, v9, v7

    invoke-virtual {v6, v9, v10, v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->store(DLjava/util/Map$Entry;)V

    goto :goto_1

    .line 229
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 230
    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->illumination()D

    move-result-wide v5

    .line 231
    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->sample()Ljava/util/Map$Entry;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 233
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double v7, v7, v5

    add-double/2addr v0, v7

    add-double/2addr v2, v5

    goto :goto_2

    :cond_5
    div-double/2addr v0, v2

    return-wide v0
.end method
