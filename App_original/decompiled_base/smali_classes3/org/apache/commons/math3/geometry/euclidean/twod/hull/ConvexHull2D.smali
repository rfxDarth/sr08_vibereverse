.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
.super Ljava/lang/Object;
.source "ConvexHull2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/hull/ConvexHull;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/hull/ConvexHull<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1335061L


# instance fields
.field private transient lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

.field private final tolerance:D

.field private final vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 71
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    return-void

    .line 67
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_CONVEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private isConvex([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 18

    move-object/from16 v0, p1

    .line 80
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    const/4 v2, 0x0

    .line 85
    :goto_0
    array-length v8, v0

    if-ge v2, v8, :cond_5

    if-nez v2, :cond_1

    .line 86
    array-length v8, v0

    sub-int/2addr v8, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v2, -0x1

    :goto_1
    aget-object v8, v0, v8

    .line 87
    aget-object v9, v0, v2

    .line 88
    array-length v10, v0

    sub-int/2addr v10, v3

    if-ne v2, v10, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v2, 0x1

    :goto_2
    aget-object v10, v0, v10

    .line 90
    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    .line 91
    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    .line 93
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v14

    neg-double v14, v14

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v8

    cmpl-double v10, v8, v4

    if-eqz v10, :cond_4

    cmpl-double v10, v6, v4

    if-eqz v10, :cond_3

    cmpl-double v10, v8, v6

    if-eqz v10, :cond_3

    return v1

    :cond_3
    move-wide v6, v8

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method private retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 13

    .line 126
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    if-nez v0, :cond_4

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 130
    new-array v0, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 132
    new-array v1, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 133
    aget-object v4, v0, v2

    .line 134
    aget-object v0, v0, v3

    .line 135
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v5, v4, v0, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v3, v1, v2

    goto :goto_2

    .line 137
    :cond_1
    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    .line 141
    array-length v1, v0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v6, v0, v2

    if-nez v4, :cond_2

    move-object v5, v6

    goto :goto_1

    .line 146
    :cond_2
    iget-object v7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    add-int/lit8 v8, v3, 0x1

    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v10, v4, v6, v11, v12}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v9, v4, v6, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v9, v7, v3

    move v3, v8

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->tolerance:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    aput-object v1, v0, v3

    .line 155
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->lineSegments:[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object v0
.end method


# virtual methods
.method public createRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 163
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    .line 164
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object v1

    .line 165
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 v3, 0x0

    .line 166
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 167
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw v0
.end method

.method public getLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;
    .locals 1

    .line 117
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->retrieveLineSegments()[Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    move-result-object v0

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    return-object v0
.end method

.method public bridge synthetic getVertices()[Lorg/apache/commons/math3/geometry/Point;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public getVertices()[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;->vertices:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method
