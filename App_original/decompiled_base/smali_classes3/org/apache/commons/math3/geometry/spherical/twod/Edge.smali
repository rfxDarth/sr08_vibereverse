.class public Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# instance fields
.field private final circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

.field private end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

.field private final length:D

.field private final start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 55
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 56
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    .line 57
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 60
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setOutgoing(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 61
    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    return-void
.end method

.method private addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "D",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ")",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    return-object p1

    .line 216
    :cond_0
    invoke-virtual {p2, p6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 217
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    iget-object v8, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 218
    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5
.end method


# virtual methods
.method public getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    return-object v0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    return-wide v0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v1

    add-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method setNextEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 1

    .line 111
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 112
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 113
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-void
.end method

.method split(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 130
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v7

    .line 131
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v4, v7

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v2

    sub-double v9, v2, v7

    .line 133
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v1

    add-double v11, v9, v1

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v3, v11, v1

    .line 137
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v13

    .line 138
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-object v5, v1

    .line 139
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double/2addr v1, v13

    cmpl-double v15, v3, v1

    if-ltz v15, :cond_0

    move-object/from16 v1, p3

    .line 143
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-object/from16 v1, p3

    const-wide/16 v15, 0x0

    cmpl-double v17, v3, v15

    if-ltz v17, :cond_1

    .line 152
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v15, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-wide/from16 v18, v3

    add-double v3, v7, v18

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v15}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    move-object v1, v5

    move-wide/from16 v3, v18

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v5

    move-wide v3, v15

    .line 158
    :goto_0
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v15, v5, v13

    cmpl-double v2, v9, v15

    if-ltz v2, :cond_3

    if-ltz v17, :cond_2

    .line 161
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    sub-double v3, v5, v3

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-void

    :cond_2
    move-object/from16 v5, p2

    .line 166
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    move-object/from16 v5, p2

    .line 170
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double/2addr v7, v9

    invoke-virtual {v15, v7, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v9, v3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 175
    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v4, v2, v13

    cmpl-double v6, v11, v4

    if-ltz v6, :cond_4

    move-wide v3, v2

    .line 177
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    sub-double/2addr v3, v9

    move-object/from16 v6, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-void

    .line 181
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v4, v7, v8}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v9, v9

    move-object/from16 v6, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 185
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double/2addr v3, v9

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-void
.end method
