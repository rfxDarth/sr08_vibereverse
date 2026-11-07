.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;
.super Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
.source "PolygonsSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparableSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;",
        ">;"
    }
.end annotation


# instance fields
.field private sortingKey:Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V
    .locals 3

    const/4 v0, 0x0

    .line 861
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 862
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    add-double/2addr v1, p2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide p1

    add-double/2addr p1, p4

    const/4 p3, 0x2

    new-array p3, p3, [D

    const/4 p4, 0x0

    aput-wide v1, p3, p4

    const/4 p4, 0x1

    aput-wide p1, p3, p4

    invoke-direct {v0, p3}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->sortingKey:Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 4

    .line 845
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 846
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    new-array p2, p2, [D

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;-><init>([D)V

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    new-array p1, p2, [D

    const/4 p2, 0x0

    aput-wide v0, p1, p2

    const/4 p2, 0x1

    aput-wide v2, p1, p2

    invoke-direct {p3, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;-><init>([D)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->sortingKey:Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    return-void

    :array_0
    .array-data 8
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
    .end array-data
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 834
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->compareTo(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;)I
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->sortingKey:Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->sortingKey:Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 875
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 876
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->compareTo(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 885
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->sortingKey:Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
