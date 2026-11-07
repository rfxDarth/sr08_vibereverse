.class public Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
.super Ljava/lang/Object;
.source "EuclideanDoublePoint.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/clustering/Clusterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
        "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f63c2790e4eb9f0L


# instance fields
.field private final point:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    return-void
.end method


# virtual methods
.method public bridge synthetic centroidOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    move-result-object p1

    return-object p1
.end method

.method public centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;",
            ">;)",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [D

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    :goto_0
    if-ge v4, v0, :cond_0

    .line 57
    aget-wide v5, v1, v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object v7

    aget-wide v8, v7, v4

    add-double/2addr v5, v8

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v4, v0, :cond_2

    .line 61
    aget-wide v2, v1, v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v2, v5

    aput-wide v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;-><init>([D)V

    return-object p1
.end method

.method public bridge synthetic distanceFrom(Ljava/lang/Object;)D
    .locals 2

    .line 32
    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;)D
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->getPoint()[D

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->distance([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 74
    instance-of v0, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;

    iget-object p1, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1
.end method

.method public getPoint()[D
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanDoublePoint;->point:[D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
