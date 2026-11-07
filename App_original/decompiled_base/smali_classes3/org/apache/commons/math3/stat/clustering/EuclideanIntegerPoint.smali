.class public Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
.super Ljava/lang/Object;
.source "EuclideanIntegerPoint.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/clustering/Clusterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
        "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36c318a06b8caaf9L


# instance fields
.field private final point:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic centroidOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    move-result-object p1

    return-object p1
.end method

.method public centroidOf(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;",
            ">;)",
            "Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    :goto_0
    if-ge v4, v0, :cond_0

    .line 69
    aget v5, v1, v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object v6

    aget v6, v6, v4

    add-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v4, v0, :cond_2

    .line 73
    aget v2, v1, v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 75
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;-><init>([I)V

    return-object p1
.end method

.method public bridge synthetic distanceFrom(Ljava/lang/Object;)D
    .locals 2

    .line 33
    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceFrom(Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;)D
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->getPoint()[I

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/math3/util/MathArrays;->distance([I[I)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    instance-of v0, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;

    iget-object p1, p1, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1
.end method

.method public getPoint()[I
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/EuclideanIntegerPoint;->point:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
