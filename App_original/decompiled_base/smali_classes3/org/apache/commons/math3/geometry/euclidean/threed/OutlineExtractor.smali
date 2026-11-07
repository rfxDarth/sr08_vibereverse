.class public Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;
.super Ljava/lang/Object;
.source "OutlineExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;
    }
.end annotation


# instance fields
.field private u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 56
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 57
    invoke-static {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method private pointIsBetween([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z
    .locals 16

    add-int v0, p3, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 109
    rem-int v0, v0, p2

    aget-object v0, p1, v0

    .line 110
    aget-object v2, p1, p3

    add-int/lit8 v3, p3, 0x1

    .line 111
    rem-int v3, v3, p2

    aget-object v3, p1, v3

    .line 112
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 113
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 114
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 115
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    sub-double/2addr v10, v2

    mul-double v2, v4, v10

    mul-double v12, v8, v6

    sub-double/2addr v2, v12

    mul-double v12, v4, v8

    mul-double v14, v6, v10

    add-double/2addr v12, v14

    mul-double v4, v4, v4

    mul-double v6, v6, v6

    add-double/2addr v4, v6

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    mul-double v4, v4, v8

    .line 118
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 119
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v4, v4, v6

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v0, v12, v2

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getOutline(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8

    .line 67
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;D)V

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 69
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor$BoundaryProjector;->getProjected()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 74
    aget-object v2, p1, v1

    .line 75
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 78
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/OutlineExtractor;->pointIsBetween([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;II)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    :goto_2
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 81
    aget-object v7, v2, v6

    aput-object v7, v2, v5

    move v5, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    :cond_2
    array-length v4, v2

    if-eq v3, v4, :cond_3

    .line 91
    new-array v4, v3, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v4, p1, v1

    .line 92
    invoke-static {v2, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method
