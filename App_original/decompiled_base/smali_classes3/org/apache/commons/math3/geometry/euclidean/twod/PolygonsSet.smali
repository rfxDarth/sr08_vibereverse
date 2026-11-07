.class public Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 164
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v9, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 218
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 0

    .line 122
    invoke-static/range {p1 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    invoke-direct {p0, p1, p9, p10}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;D)V

    return-void
.end method

.method public varargs constructor <init>(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 0

    .line 156
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 205
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;D)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 179
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;D)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method private static boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 3

    sub-double v0, p2, p8

    cmpl-double v2, p0, v0

    if-gez v2, :cond_1

    sub-double v0, p6, p8

    cmpl-double v2, p4, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, p0, p1, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 237
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v1, p0, p1, p6, p7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 238
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 239
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {p1, p2, p3, p6, p7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    const/4 p2, 0x4

    .line 240
    new-array p2, p2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p3, v0, p0, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p4, 0x0

    aput-object p3, p2, p4

    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p3, p0, p1, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p0, 0x1

    aput-object p3, p2, p0

    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p0, p1, v1, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p1, 0x2

    aput-object p0, p2, p1

    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p0, v1, v0, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p1, 0x3

    aput-object p0, p2, p1

    return-object p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private followLoop(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;",
            ">.Node;",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;",
            ">;"
        }
    .end annotation

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getElement()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    .line 779
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    .line 781
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    .line 782
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->delete()V

    .line 785
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v3

    :goto_1
    const/4 v3, 0x0

    if-eqz v5, :cond_5

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    if-nez v1, :cond_1

    .line 787
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v6

    cmpl-double v4, v6, v10

    if-lez v4, :cond_5

    .line 793
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    const-wide v6, -0x4224832026284245L    # -1.0E-10

    const-wide v8, -0x4224832026284245L    # -1.0E-10

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    move-object v12, v4

    .line 794
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    move-object v6, v4

    move-object/from16 v4, p2

    .line 795
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->getNotSmaller(Ljava/lang/Comparable;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v7

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v12, v3

    move-object v13, v12

    :goto_2
    if-eqz v7, :cond_3

    .line 796
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getElement()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    invoke-virtual {v14, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->compareTo(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;)I

    move-result v14

    if-gtz v14, :cond_3

    .line 798
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getElement()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    .line 799
    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v15

    cmpg-double v17, v15, v8

    if-gez v17, :cond_2

    move-object v12, v7

    move-object v13, v14

    move-wide v8, v15

    .line 797
    :cond_2
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v7

    goto :goto_2

    :cond_3
    cmpl-double v5, v8, v10

    if-lez v5, :cond_4

    return-object v3

    .line 814
    :cond_4
    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    .line 815
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {v12}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->delete()V

    goto :goto_1

    .line 820
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    if-nez v1, :cond_6

    return-object v3

    :cond_6
    if-nez v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    .line 826
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_8
    :goto_3
    return-object v0
.end method

.method private static insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;",
            ">;)V"
        }
    .end annotation

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_1

    .line 330
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v6, p3

    .line 331
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 332
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-nez v7, :cond_0

    .line 333
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 334
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->setNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    move/from16 v17, v5

    move-object v5, v3

    move/from16 v3, v17

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move-object/from16 v6, p3

    if-nez v5, :cond_4

    .line 346
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-ne v2, v0, :cond_2

    goto :goto_2

    .line 350
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    return-void

    .line 348
    :cond_3
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    return-void

    .line 357
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    if-eq v7, v5, :cond_5

    .line 361
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v8

    .line 362
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v10

    .line 363
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v16, v12, v0

    if-gtz v16, :cond_6

    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_4

    :cond_6
    cmpg-double v12, v8, v14

    if-gez v12, :cond_7

    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_4

    :cond_7
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 365
    :goto_4
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpg-double v9, v12, v0

    if-gtz v9, :cond_8

    sget-object v9, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_5

    :cond_8
    cmpg-double v9, v10, v14

    if-gez v9, :cond_9

    sget-object v9, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_5

    :cond_9
    sget-object v9, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 367
    :goto_5
    sget-object v10, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v8

    aget v8, v10, v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_d

    const/4 v10, 0x2

    if-eq v8, v10, :cond_b

    .line 389
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_a

    .line 390
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 391
    :cond_a
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_5

    .line 392
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 379
    :cond_b
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_c

    .line 381
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v7

    .line 382
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 385
    :cond_c
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 369
    :cond_d
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_e

    .line 371
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v7

    .line 372
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 375
    :cond_e
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 400
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 401
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-static {v0, v1, v5, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_6

    .line 403
    :cond_10
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 405
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 406
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    return-void

    .line 408
    :cond_11
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D[",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 266
    array-length v0, p2

    if-nez v0, :cond_0

    .line 269
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 273
    :cond_0
    new-array v1, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 275
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    aget-object v5, p2, v3

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :cond_2
    if-ge v3, v0, :cond_5

    .line 283
    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 284
    rem-int v5, v3, v0

    aget-object v5, v1, v5

    .line 289
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->sharedLineWith(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v6

    if-nez v6, :cond_3

    .line 291
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    invoke-direct {v6, v7, v8, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 295
    :cond_3
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    invoke-direct {v7, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_2

    .line 298
    aget-object v8, v1, v7

    if-eq v8, v4, :cond_4

    if-eq v8, v5, :cond_4

    .line 299
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpg-double v11, v9, p0

    if-gtz v11, :cond_4

    .line 301
    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 308
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    .line 309
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;"
        }
    .end annotation

    .line 606
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometricalProperties()V
    .locals 30

    move-object/from16 v0, p0

    .line 613
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    .line 615
    array-length v2, v1

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v2, :cond_1

    .line 616
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 620
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void

    .line 622
    :cond_0
    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 623
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v1, v6, v7, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void

    .line 625
    :cond_1
    aget-object v2, v1, v5

    aget-object v2, v2, v5

    if-nez v2, :cond_2

    .line 627
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 628
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void

    .line 636
    :cond_2
    array-length v2, v1

    move-wide v9, v6

    move-wide v11, v9

    move-wide v13, v11

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_4

    aget-object v15, v1, v8

    .line 637
    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v16

    .line 638
    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v18

    .line 639
    array-length v5, v15

    move-wide/from16 v20, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v15, v6

    .line 642
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v22

    .line 643
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v24

    mul-double v26, v16, v24

    mul-double v28, v18, v22

    sub-double v26, v26, v28

    add-double v9, v9, v26

    add-double v16, v16, v22

    mul-double v16, v16, v26

    add-double v11, v11, v16

    add-double v18, v18, v24

    mul-double v26, v26, v18

    add-double v13, v13, v26

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v16, v22

    move-wide/from16 v18, v24

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v6, v20

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    move-wide/from16 v20, v6

    cmpg-double v1, v9, v20

    if-gez v1, :cond_5

    .line 653
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 654
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void

    :cond_5
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v1, v9, v1

    .line 656
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 657
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v9, v9, v2

    div-double/2addr v11, v9

    div-double/2addr v13, v9

    invoke-direct {v1, v11, v12, v13, v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method public getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 20

    move-object/from16 v0, p0

    .line 688
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    .line 689
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    .line 690
    new-array v1, v1, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    goto/16 :goto_6

    .line 694
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;-><init>()V

    const/4 v3, 0x1

    .line 695
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 696
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->getSorted()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    move-result-object v2

    .line 700
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 701
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 702
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v5

    .line 703
    invoke-direct {v0, v5, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->followLoop(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 705
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 713
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 714
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ge v6, v8, :cond_3

    .line 716
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v5

    .line 717
    iget-object v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v7, v10, v1

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v11, -0x3810000020000000L    # -3.4028234663852886E38

    invoke-direct {v7, v11, v12}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    aput-object v7, v10, v3

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v11, 0x47efffffe0000000L    # 3.4028234663852886E38

    invoke-direct {v7, v11, v12}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    aput-object v5, v10, v8

    aput-object v10, v6, v4

    move v4, v9

    goto/16 :goto_5

    .line 722
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ComparableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    if-nez v6, :cond_8

    .line 724
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v8, v6, 0x2

    new-array v8, v8, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 726
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-nez v9, :cond_4

    .line 730
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v15

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v16

    div-double v18, v16, v11

    move v15, v4

    .line 731
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    sub-double v3, v16, v3

    add-int/lit8 v16, v9, 0x1

    .line 732
    aput-object v7, v8, v9

    add-int/lit8 v9, v9, 0x2

    .line 733
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v7, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    aput-object v1, v8, v16

    goto :goto_3

    :cond_4
    move v15, v4

    :goto_3
    add-int/lit8 v1, v6, 0x1

    if-ge v9, v1, :cond_5

    add-int/lit8 v3, v9, 0x1

    .line 738
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    aput-object v4, v8, v9

    move v9, v3

    :cond_5
    if-ne v9, v1, :cond_6

    .line 743
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v3

    div-double v11, v3, v11

    .line 744
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    add-double/2addr v3, v11

    add-int/lit8 v1, v9, 0x1

    .line 745
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v7

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v10, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    aput-object v3, v8, v9

    move v9, v1

    :cond_6
    move v4, v15

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_7
    move v15, v4

    .line 749
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v4, v15, 0x1

    aput-object v8, v1, v15

    goto :goto_5

    :cond_8
    move v15, v4

    .line 751
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 753
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    add-int/lit8 v6, v4, 0x1

    .line 754
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v6

    goto :goto_4

    .line 756
    :cond_9
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v4, v15, 0x1

    aput-object v1, v3, v15

    :goto_5
    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 763
    :cond_a
    :goto_6
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v1}, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v1
.end method
